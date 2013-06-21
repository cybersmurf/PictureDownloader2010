unit fMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, INIFiles, mon2kdbe_TLB, MS3Tools_TLB,FileCtrl,
  httpsend, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MoneyPath: TLabeledEdit;
    ePicturePath: TLabeledEdit;
    StatusBar1: TStatusBar;
    Button3: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CfgFile : TINIFile;
  AppDir, URLCHANGEPREFIX : String;
  LogDebug : Integer;
  LogFile : TextFile;
  NAMETYPE, URLCHANGE : Integer;


implementation

{$R *.dfm}

procedure WriteLog(typ: integer; text: string);
begin
  //Z�pis LOGu 1: z�pis pouze do MEMO ; 2: z�pis do MEMO i LOGu ; 3: z�pis MEMO i LOG Debug zpr�v
  if typ=1 then Form1.Memo1.Lines.Add(datetimetostr(now)+' - '+text);
  if typ=2 then
  begin
    Form1.Memo1.Lines.Add(datetimetostr(now)+' - '+text);
    WriteLn(LogFile,(datetimetostr(now)+' - '+text));
  end;
  if (typ=3) AND (LogDebug=1) then
  begin
    Form1.Memo1.Lines.Add('[DEBUG] '+datetimetostr(now)+' - '+text);
    WriteLn(LogFile,('[DEBUG] '+datetimetostr(now)+' - '+text));
  end;

end;

function ExtractUrlFileName(const AUrl: string): string;
var
  i: Integer;
begin
  i := LastDelimiter('/', AUrl);
  Result := Copy(AUrl, i + 1, Length(AUrl) - (i));
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  tSkSezZas : TBFTable;
  pictname, mpictname : string;
  mpictnamefs : TFileStream;


begin
  WriteLog(2,'Spu�t�na kontrola ob�zk�');
  WriteLog(3,'Otv�r�me tabulku kmenov�ch karet');
  tSkSezZas := TBFTable.Create(Form1);

  if tSkSezZas.Open(MoneyPath.Text+'\SkKmKart.dat') = 0 then
   begin
    WriteLog(2,'Otev�ena tabulka kmenov�ch karet');
   end
  else   WriteLog(2,'Nepoda�ilo se otev��t tabulku kmenov�ch karet');


  tSkSezZas.Top;

  while not tSkSezZas.EOF do
  begin
    pictname := string(tSkSezZas.Value['Obrazek']);
    if NAMETYPE=2 then mpictname := ePicturePath.Text+'P_'+string(tSkSezZas.Value['Cislo'])+'.jpg'
    else
     mpictname := ePicturePath.Text + ExtractUrlFileName(pictname);

   if string(tSkSezZas.Value['Obrazek'])<>'' then
   begin
    if copy(UpperCase(pictname),1,4)='HTTP' then
     begin
      if URLCHANGE=1 then pictname := URLCHANGEPREFIX + ExtractUrlFileName(pictname);

      WriteLog(2,'Stahuji obr�zek z '+pictname+ ' a ukl�d�m do '+ mpictname);
       WriteLog(3,'Tvo��m TFileStream' + mpictname);
       mpictnamefs := TFileStream.Create(mpictname, fmCreate or fmOpenWrite);
       WriteLog(3,'Pokou��m se st�hnout ' + mpictname);
       if HttpGetBinary(pictname,mpictnamefs) then
        begin
          mpictnamefs.free;
          WriteLog(2,'M�n�m �daje na kart� ' + mpictname);
          tSkSezZas.Value['Obrazek'] := mpictname;
          tSkSezZas.Update;

        end
        else
        WriteLog(2,'Nepovedlo se st�hnout obr�zek '+pictname);

     end
     else
      if Copy(pictname,1,13)='<CestaAgenda>' then
      begin
        pictname := MoneyPath.Text+'\'+copy(pictname,14,(Length(pictname)-13));
        if FileExists(pictname) then
        begin
          WriteLog(2,'M�n�m �daje na kart� �.'+inttostr(tSkSezZas.Value['Cislo']) + ' na '+pictname);
          tSkSezZas.Value['Obrazek'] := pictname;
          tSkSezZas.Update;
        end
        else
         WriteLog(2,'Neexistuje obr�zek - '+ pictname);
      end;
   end;
    tSkSezZas.Next;

  end;

  tSkSezZas.Top;
  WriteLog(1,'Stahuji obr�zky z �daje obr�zek2');

  while not tSkSezZas.EOF do
  begin
    pictname := string(tSkSezZas.Value['Obrazek2']);
    if NAMETYPE=2 then mpictname := ePicturePath.Text+'P_'+string(tSkSezZas.Value['Cislo'])+'_01.jpg'
    else
     mpictname := ePicturePath.Text + ExtractUrlFileName(pictname);

   if string(tSkSezZas.Value['Obrazek2'])<>'' then
   begin
    if copy(UpperCase(pictname),1,4)='HTTP' then
     begin
      if URLCHANGE=1 then pictname := URLCHANGEPREFIX + ExtractUrlFileName(pictname);

       WriteLog(2,'Stahuji obr�zek z '+pictname+ ' a ukl�d�m do '+ mpictname);
       WriteLog(3,'Tvo��m TFileStream' + mpictname);
       mpictnamefs := TFileStream.Create(mpictname, fmCreate or fmOpenWrite);
       WriteLog(3,'Pokou��m se st�hnout ' + mpictname);
       if HttpGetBinary(pictname,mpictnamefs) then
        begin
          mpictnamefs.free;
          WriteLog(2,'M�n�m �daje na kart� �.'+ IntToStr(tSkSezZas.Value['Cislo']) +'na '+ mpictname);
          tSkSezZas.Value['Obrazek2'] := mpictname;
          tSkSezZas.Update;
        end
        else
        WriteLog(2,'Nepovedlo se st�hnout obr�zek '+pictname);
     end
     else
      if Copy(pictname,1,13)='<CestaAgenda>' then
      begin
        pictname := MoneyPath.Text+'\'+copy(pictname,14,(Length(pictname)-13));
        if FileExists(pictname) then
        begin
          WriteLog(2,'M�n�m �daje na kart� �.'+inttostr(tSkSezZas.Value['Cislo'])+ ' na '+pictname);
          tSkSezZas.Value['Obrazek2'] := pictname;
          tSkSezZas.Update;
        end
        else
         WriteLog(2,'Neexistuje obr�zek - '+ pictname);
      end;
   end;
    tSkSezZas.Next;
  end;

  WriteLog(2,'Zav�r�m tabulku SkKmKart');
  tSkSezZas.Close;

end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  WriteLog(2,'Ukon�eno');
  CloseFile(LogFile);
  CfgFile.Free;
  Close;
end;

procedure TForm1.FormShow(Sender: TObject);

begin
  AppDir := GetCurrentDir;
  if not SysUtils.DirectoryExists(AppDir+'\\expimp')  then CreateDir(AppDir+'\expimp');
  if not SysUtils.DirectoryExists(AppDir+'\\tmp')  then CreateDir(AppDir+'\tmp');
  if not SysUtils.DirectoryExists(AppDir+'\\log')  then CreateDir(AppDir+'\log');

  CfgFile := TINIFile.Create('.\config.ini');
  if not FileExists(AppDir+'\\log.txt') then WriteLog(2,'Neexistuje soubor konfigurace config.ini');

  if not CfgFile.SectionExists('Global') then CfgFile.WriteInteger('Global','Debug',0);
  LogDebug := CfgFile.ReadInteger('Global','Debug',0);

  AssignFile(LogFile, '.\log.txt');
  if not FileExists(AppDir+'\\log.txt') then Rewrite(Logfile)
   else
    Append(LogFile);

  WriteLog(2,'Spu�t�no');

  MoneyPath.Text := CfgFile.ReadString('Money','DataPath','nenastaveno')+CfgFile.ReadString('Money','AgendaPath','');
  ePicturePath.Text := CfgFile.ReadString('Money','PicturePath','nenastaveno');

  NAMETYPE := CfgFile.ReadInteger('Global','NameType',1);
  URLCHANGE := CfgFile.ReadInteger('Private','URLchange',0);
  if CfgFile.ReadInteger('Private','URLchange',0)=1 then
    URLCHANGEPREFIX := CfgFile.ReadString('Private','URLchangePrefix','');


end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  MSTools : TclsMnTools;
begin
  MSTools := TclsMnTools.Create(Form1);
  MSTools.showAgends;
  if MSTools.AgndResult then
  begin
   MoneyPath.Text := (MSTools.strMONDATADIR+MSTools.LastAgend+'\');
   CfgFile.WriteString('Money','DataPath',MSTools.strMONDATADIR);
   CfgFile.WriteString('Money','AgendaPath',MSTools.LastAgend);
   CfgFile.WriteString('Money','YearPath',MSTools.LastYear);
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  Dir : string;
begin
    if SelectDirectory('Vyber adres�� pro obr�zky', '', Dir) then ePicturePath.Text := Dir+'\';
    CfgFile.WriteString('Money','PicturePath',ePicturePath.Text);
end;

end.
