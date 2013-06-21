unit MS3Tools_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 13.1.2012 22:02:06 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\CIGLER SOFTWARE\Common Files\MS3Tools.dll (1)
// LIBID: {A6BE31AC-1C7D-48D5-85DB-EE8F4C9AE4BD}
// LCID: 0
// Helpfile: 
// HelpString: MS3Tools Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MS3ToolsMajorVersion = 1;
  MS3ToolsMinorVersion = 0;

  LIBID_MS3Tools: TGUID = '{A6BE31AC-1C7D-48D5-85DB-EE8F4C9AE4BD}';

  IID_IclsMnAcs: TGUID = '{844A7A8B-F6D9-4CCA-8CAD-EAE63EFD34D6}';
  CLASS_clsMnAcs: TGUID = '{20F07A35-FC3E-4B59-84F0-9B81E4575C71}';
  IID_IclsMnTools: TGUID = '{22D6F0E1-A074-4872-BF45-CF1620BDC989}';
  CLASS_clsMnTools: TGUID = '{26900106-59A5-4139-A703-308298F66838}';
  IID_IRegistr: TGUID = '{2280C60E-BF4B-4E0E-9F6F-BAA697D745E0}';
  CLASS_Registr: TGUID = '{ABBE3D7F-06EE-417C-B71C-7BC0162AC7B5}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IclsMnAcs = interface;
  IclsMnAcsDisp = dispinterface;
  IclsMnTools = interface;
  IclsMnToolsDisp = dispinterface;
  IRegistr = interface;
  IRegistrDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  clsMnAcs = IclsMnAcs;
  clsMnTools = IclsMnTools;
  Registr = IRegistr;


// *********************************************************************//
// Interface: IclsMnAcs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {844A7A8B-F6D9-4CCA-8CAD-EAE63EFD34D6}
// *********************************************************************//
  IclsMnAcs = interface(IDispatch)
    ['{844A7A8B-F6D9-4CCA-8CAD-EAE63EFD34D6}']
    function IsItAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                        const strVal: WideString; const strType: WideString): OleVariant; safecall;
    function TypeAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                        const strVal: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IclsMnAcsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {844A7A8B-F6D9-4CCA-8CAD-EAE63EFD34D6}
// *********************************************************************//
  IclsMnAcsDisp = dispinterface
    ['{844A7A8B-F6D9-4CCA-8CAD-EAE63EFD34D6}']
    function IsItAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                        const strVal: WideString; const strType: WideString): OleVariant; dispid 1;
    function TypeAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                        const strVal: WideString): WideString; dispid 2;
  end;

// *********************************************************************//
// Interface: IclsMnTools
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22D6F0E1-A074-4872-BF45-CF1620BDC989}
// *********************************************************************//
  IclsMnTools = interface(IDispatch)
    ['{22D6F0E1-A074-4872-BF45-CF1620BDC989}']
    function Get_AgndResult: WordBool; safecall;
    function Get_isMoneyDetectOK: WordBool; safecall;
    function Get_LastAgend: WideString; safecall;
    function Get_LastYear: WideString; safecall;
    function Get_LastPath: WideString; safecall;
    function Get_LoginPwd: WideString; safecall;
    function Get_LoginUser: WideString; safecall;
    function Get_isLogged: WideString; safecall;
    function Get_bolLocalInst: WordBool; safecall;
    function Get_strMONDATADIR: WideString; safecall;
    procedure Set_strMONDATADIR(const Value: WideString); safecall;
    function Get_strMONDIR: WideString; safecall;
    procedure Set_strMONDIR(const Value: WideString); safecall;
    function Get_strComFilesDIR: WideString; safecall;
    function getINIKEY(const strSECTION: WideString; const strKEY: WideString; 
                       const strFile: WideString): OleVariant; safecall;
    procedure showLogin; safecall;
    procedure showAgends; safecall;
    function isMONS3INI: WordBool; safecall;
    function NeedLogin: WordBool; safecall;
    property AgndResult: WordBool read Get_AgndResult;
    property isMoneyDetectOK: WordBool read Get_isMoneyDetectOK;
    property LastAgend: WideString read Get_LastAgend;
    property LastYear: WideString read Get_LastYear;
    property LastPath: WideString read Get_LastPath;
    property LoginPwd: WideString read Get_LoginPwd;
    property LoginUser: WideString read Get_LoginUser;
    property isLogged: WideString read Get_isLogged;
    property bolLocalInst: WordBool read Get_bolLocalInst;
    property strMONDATADIR: WideString read Get_strMONDATADIR write Set_strMONDATADIR;
    property strMONDIR: WideString read Get_strMONDIR write Set_strMONDIR;
    property strComFilesDIR: WideString read Get_strComFilesDIR;
  end;

// *********************************************************************//
// DispIntf:  IclsMnToolsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {22D6F0E1-A074-4872-BF45-CF1620BDC989}
// *********************************************************************//
  IclsMnToolsDisp = dispinterface
    ['{22D6F0E1-A074-4872-BF45-CF1620BDC989}']
    property AgndResult: WordBool readonly dispid 1;
    property isMoneyDetectOK: WordBool readonly dispid 2;
    property LastAgend: WideString readonly dispid 3;
    property LastYear: WideString readonly dispid 4;
    property LastPath: WideString readonly dispid 6;
    property LoginPwd: WideString readonly dispid 7;
    property LoginUser: WideString readonly dispid 8;
    property isLogged: WideString readonly dispid 9;
    property bolLocalInst: WordBool readonly dispid 10;
    property strMONDATADIR: WideString dispid 12;
    property strMONDIR: WideString dispid 13;
    property strComFilesDIR: WideString readonly dispid 14;
    function getINIKEY(const strSECTION: WideString; const strKEY: WideString; 
                       const strFile: WideString): OleVariant; dispid 16;
    procedure showLogin; dispid 17;
    procedure showAgends; dispid 18;
    function isMONS3INI: WordBool; dispid 19;
    function NeedLogin: WordBool; dispid 20;
  end;

// *********************************************************************//
// Interface: IRegistr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2280C60E-BF4B-4E0E-9F6F-BAA697D745E0}
// *********************************************************************//
  IRegistr = interface(IDispatch)
    ['{2280C60E-BF4B-4E0E-9F6F-BAA697D745E0}']
    function GetKeyVal(const KeyName: WideString; const KeyValue: WideString): WideString; safecall;
    procedure SetKeyVal(const KeyName: WideString; const KeyValue: WideString; 
                        const Value: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRegistrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2280C60E-BF4B-4E0E-9F6F-BAA697D745E0}
// *********************************************************************//
  IRegistrDisp = dispinterface
    ['{2280C60E-BF4B-4E0E-9F6F-BAA697D745E0}']
    function GetKeyVal(const KeyName: WideString; const KeyValue: WideString): WideString; dispid 1;
    procedure SetKeyVal(const KeyName: WideString; const KeyValue: WideString; 
                        const Value: WideString); dispid 2;
  end;

// *********************************************************************//
// The Class CoclsMnAcs provides a Create and CreateRemote method to          
// create instances of the default interface IclsMnAcs exposed by              
// the CoClass clsMnAcs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoclsMnAcs = class
    class function Create: IclsMnAcs;
    class function CreateRemote(const MachineName: string): IclsMnAcs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TclsMnAcs
// Help String      : clsMnAcs Object
// Default Interface: IclsMnAcs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TclsMnAcsProperties= class;
{$ENDIF}
  TclsMnAcs = class(TOleServer)
  private
    FIntf:        IclsMnAcs;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TclsMnAcsProperties;
    function      GetServerProperties: TclsMnAcsProperties;
{$ENDIF}
    function      GetDefaultInterface: IclsMnAcs;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IclsMnAcs);
    procedure Disconnect; override;
    function IsItAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                        const strVal: WideString; const strType: WideString): OleVariant;
    function TypeAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                        const strVal: WideString): WideString;
    property DefaultInterface: IclsMnAcs read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TclsMnAcsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TclsMnAcs
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TclsMnAcsProperties = class(TPersistent)
  private
    FServer:    TclsMnAcs;
    function    GetDefaultInterface: IclsMnAcs;
    constructor Create(AServer: TclsMnAcs);
  protected
  public
    property DefaultInterface: IclsMnAcs read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoclsMnTools provides a Create and CreateRemote method to          
// create instances of the default interface IclsMnTools exposed by              
// the CoClass clsMnTools. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoclsMnTools = class
    class function Create: IclsMnTools;
    class function CreateRemote(const MachineName: string): IclsMnTools;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TclsMnTools
// Help String      : clsMnTools Object
// Default Interface: IclsMnTools
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TclsMnToolsProperties= class;
{$ENDIF}
  TclsMnTools = class(TOleServer)
  private
    FIntf:        IclsMnTools;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TclsMnToolsProperties;
    function      GetServerProperties: TclsMnToolsProperties;
{$ENDIF}
    function      GetDefaultInterface: IclsMnTools;
  protected
    procedure InitServerData; override;
    function Get_AgndResult: WordBool;
    function Get_isMoneyDetectOK: WordBool;
    function Get_LastAgend: WideString;
    function Get_LastYear: WideString;
    function Get_LastPath: WideString;
    function Get_LoginPwd: WideString;
    function Get_LoginUser: WideString;
    function Get_isLogged: WideString;
    function Get_bolLocalInst: WordBool;
    function Get_strMONDATADIR: WideString;
    procedure Set_strMONDATADIR(const Value: WideString);
    function Get_strMONDIR: WideString;
    procedure Set_strMONDIR(const Value: WideString);
    function Get_strComFilesDIR: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IclsMnTools);
    procedure Disconnect; override;
    function getINIKEY(const strSECTION: WideString; const strKEY: WideString; 
                       const strFile: WideString): OleVariant;
    procedure showLogin;
    procedure showAgends;
    function isMONS3INI: WordBool;
    function NeedLogin: WordBool;
    property DefaultInterface: IclsMnTools read GetDefaultInterface;
    property AgndResult: WordBool read Get_AgndResult;
    property isMoneyDetectOK: WordBool read Get_isMoneyDetectOK;
    property LastAgend: WideString read Get_LastAgend;
    property LastYear: WideString read Get_LastYear;
    property LastPath: WideString read Get_LastPath;
    property LoginPwd: WideString read Get_LoginPwd;
    property LoginUser: WideString read Get_LoginUser;
    property isLogged: WideString read Get_isLogged;
    property bolLocalInst: WordBool read Get_bolLocalInst;
    property strComFilesDIR: WideString read Get_strComFilesDIR;
    property strMONDATADIR: WideString read Get_strMONDATADIR write Set_strMONDATADIR;
    property strMONDIR: WideString read Get_strMONDIR write Set_strMONDIR;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TclsMnToolsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TclsMnTools
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TclsMnToolsProperties = class(TPersistent)
  private
    FServer:    TclsMnTools;
    function    GetDefaultInterface: IclsMnTools;
    constructor Create(AServer: TclsMnTools);
  protected
    function Get_AgndResult: WordBool;
    function Get_isMoneyDetectOK: WordBool;
    function Get_LastAgend: WideString;
    function Get_LastYear: WideString;
    function Get_LastPath: WideString;
    function Get_LoginPwd: WideString;
    function Get_LoginUser: WideString;
    function Get_isLogged: WideString;
    function Get_bolLocalInst: WordBool;
    function Get_strMONDATADIR: WideString;
    procedure Set_strMONDATADIR(const Value: WideString);
    function Get_strMONDIR: WideString;
    procedure Set_strMONDIR(const Value: WideString);
    function Get_strComFilesDIR: WideString;
  public
    property DefaultInterface: IclsMnTools read GetDefaultInterface;
  published
    property strMONDATADIR: WideString read Get_strMONDATADIR write Set_strMONDATADIR;
    property strMONDIR: WideString read Get_strMONDIR write Set_strMONDIR;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRegistr provides a Create and CreateRemote method to          
// create instances of the default interface IRegistr exposed by              
// the CoClass Registr. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistr = class
    class function Create: IRegistr;
    class function CreateRemote(const MachineName: string): IRegistr;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRegistr
// Help String      : Registr Object
// Default Interface: IRegistr
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRegistrProperties= class;
{$ENDIF}
  TRegistr = class(TOleServer)
  private
    FIntf:        IRegistr;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRegistrProperties;
    function      GetServerProperties: TRegistrProperties;
{$ENDIF}
    function      GetDefaultInterface: IRegistr;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRegistr);
    procedure Disconnect; override;
    function GetKeyVal(const KeyName: WideString; const KeyValue: WideString): WideString;
    procedure SetKeyVal(const KeyName: WideString; const KeyValue: WideString; 
                        const Value: WideString);
    property DefaultInterface: IRegistr read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRegistrProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRegistr
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRegistrProperties = class(TPersistent)
  private
    FServer:    TRegistr;
    function    GetDefaultInterface: IRegistr;
    constructor Create(AServer: TRegistr);
  protected
  public
    property DefaultInterface: IRegistr read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoclsMnAcs.Create: IclsMnAcs;
begin
  Result := CreateComObject(CLASS_clsMnAcs) as IclsMnAcs;
end;

class function CoclsMnAcs.CreateRemote(const MachineName: string): IclsMnAcs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_clsMnAcs) as IclsMnAcs;
end;

procedure TclsMnAcs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{20F07A35-FC3E-4B59-84F0-9B81E4575C71}';
    IntfIID:   '{844A7A8B-F6D9-4CCA-8CAD-EAE63EFD34D6}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TclsMnAcs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IclsMnAcs;
  end;
end;

procedure TclsMnAcs.ConnectTo(svrIntf: IclsMnAcs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TclsMnAcs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TclsMnAcs.GetDefaultInterface: IclsMnAcs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TclsMnAcs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TclsMnAcsProperties.Create(Self);
{$ENDIF}
end;

destructor TclsMnAcs.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TclsMnAcs.GetServerProperties: TclsMnAcsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TclsMnAcs.IsItAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                              const strVal: WideString; const strType: WideString): OleVariant;
begin
  Result := DefaultInterface.IsItAccess(LoginUser, LoginPwd, strVal, strType);
end;

function TclsMnAcs.TypeAccess(const LoginUser: WideString; const LoginPwd: WideString; 
                              const strVal: WideString): WideString;
begin
  Result := DefaultInterface.TypeAccess(LoginUser, LoginPwd, strVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TclsMnAcsProperties.Create(AServer: TclsMnAcs);
begin
  inherited Create;
  FServer := AServer;
end;

function TclsMnAcsProperties.GetDefaultInterface: IclsMnAcs;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoclsMnTools.Create: IclsMnTools;
begin
  Result := CreateComObject(CLASS_clsMnTools) as IclsMnTools;
end;

class function CoclsMnTools.CreateRemote(const MachineName: string): IclsMnTools;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_clsMnTools) as IclsMnTools;
end;

procedure TclsMnTools.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{26900106-59A5-4139-A703-308298F66838}';
    IntfIID:   '{22D6F0E1-A074-4872-BF45-CF1620BDC989}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TclsMnTools.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IclsMnTools;
  end;
end;

procedure TclsMnTools.ConnectTo(svrIntf: IclsMnTools);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TclsMnTools.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TclsMnTools.GetDefaultInterface: IclsMnTools;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TclsMnTools.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TclsMnToolsProperties.Create(Self);
{$ENDIF}
end;

destructor TclsMnTools.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TclsMnTools.GetServerProperties: TclsMnToolsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TclsMnTools.Get_AgndResult: WordBool;
begin
    Result := DefaultInterface.AgndResult;
end;

function TclsMnTools.Get_isMoneyDetectOK: WordBool;
begin
    Result := DefaultInterface.isMoneyDetectOK;
end;

function TclsMnTools.Get_LastAgend: WideString;
begin
    Result := DefaultInterface.LastAgend;
end;

function TclsMnTools.Get_LastYear: WideString;
begin
    Result := DefaultInterface.LastYear;
end;

function TclsMnTools.Get_LastPath: WideString;
begin
    Result := DefaultInterface.LastPath;
end;

function TclsMnTools.Get_LoginPwd: WideString;
begin
    Result := DefaultInterface.LoginPwd;
end;

function TclsMnTools.Get_LoginUser: WideString;
begin
    Result := DefaultInterface.LoginUser;
end;

function TclsMnTools.Get_isLogged: WideString;
begin
    Result := DefaultInterface.isLogged;
end;

function TclsMnTools.Get_bolLocalInst: WordBool;
begin
    Result := DefaultInterface.bolLocalInst;
end;

function TclsMnTools.Get_strMONDATADIR: WideString;
begin
    Result := DefaultInterface.strMONDATADIR;
end;

procedure TclsMnTools.Set_strMONDATADIR(const Value: WideString);
  { Warning: The property strMONDATADIR has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.strMONDATADIR := Value;
end;

function TclsMnTools.Get_strMONDIR: WideString;
begin
    Result := DefaultInterface.strMONDIR;
end;

procedure TclsMnTools.Set_strMONDIR(const Value: WideString);
  { Warning: The property strMONDIR has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.strMONDIR := Value;
end;

function TclsMnTools.Get_strComFilesDIR: WideString;
begin
    Result := DefaultInterface.strComFilesDIR;
end;

function TclsMnTools.getINIKEY(const strSECTION: WideString; const strKEY: WideString; 
                               const strFile: WideString): OleVariant;
begin
  Result := DefaultInterface.getINIKEY(strSECTION, strKEY, strFile);
end;

procedure TclsMnTools.showLogin;
begin
  DefaultInterface.showLogin;
end;

procedure TclsMnTools.showAgends;
begin
  DefaultInterface.showAgends;
end;

function TclsMnTools.isMONS3INI: WordBool;
begin
  Result := DefaultInterface.isMONS3INI;
end;

function TclsMnTools.NeedLogin: WordBool;
begin
  Result := DefaultInterface.NeedLogin;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TclsMnToolsProperties.Create(AServer: TclsMnTools);
begin
  inherited Create;
  FServer := AServer;
end;

function TclsMnToolsProperties.GetDefaultInterface: IclsMnTools;
begin
  Result := FServer.DefaultInterface;
end;

function TclsMnToolsProperties.Get_AgndResult: WordBool;
begin
    Result := DefaultInterface.AgndResult;
end;

function TclsMnToolsProperties.Get_isMoneyDetectOK: WordBool;
begin
    Result := DefaultInterface.isMoneyDetectOK;
end;

function TclsMnToolsProperties.Get_LastAgend: WideString;
begin
    Result := DefaultInterface.LastAgend;
end;

function TclsMnToolsProperties.Get_LastYear: WideString;
begin
    Result := DefaultInterface.LastYear;
end;

function TclsMnToolsProperties.Get_LastPath: WideString;
begin
    Result := DefaultInterface.LastPath;
end;

function TclsMnToolsProperties.Get_LoginPwd: WideString;
begin
    Result := DefaultInterface.LoginPwd;
end;

function TclsMnToolsProperties.Get_LoginUser: WideString;
begin
    Result := DefaultInterface.LoginUser;
end;

function TclsMnToolsProperties.Get_isLogged: WideString;
begin
    Result := DefaultInterface.isLogged;
end;

function TclsMnToolsProperties.Get_bolLocalInst: WordBool;
begin
    Result := DefaultInterface.bolLocalInst;
end;

function TclsMnToolsProperties.Get_strMONDATADIR: WideString;
begin
    Result := DefaultInterface.strMONDATADIR;
end;

procedure TclsMnToolsProperties.Set_strMONDATADIR(const Value: WideString);
  { Warning: The property strMONDATADIR has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.strMONDATADIR := Value;
end;

function TclsMnToolsProperties.Get_strMONDIR: WideString;
begin
    Result := DefaultInterface.strMONDIR;
end;

procedure TclsMnToolsProperties.Set_strMONDIR(const Value: WideString);
  { Warning: The property strMONDIR has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.strMONDIR := Value;
end;

function TclsMnToolsProperties.Get_strComFilesDIR: WideString;
begin
    Result := DefaultInterface.strComFilesDIR;
end;

{$ENDIF}

class function CoRegistr.Create: IRegistr;
begin
  Result := CreateComObject(CLASS_Registr) as IRegistr;
end;

class function CoRegistr.CreateRemote(const MachineName: string): IRegistr;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Registr) as IRegistr;
end;

procedure TRegistr.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{ABBE3D7F-06EE-417C-B71C-7BC0162AC7B5}';
    IntfIID:   '{2280C60E-BF4B-4E0E-9F6F-BAA697D745E0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRegistr.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRegistr;
  end;
end;

procedure TRegistr.ConnectTo(svrIntf: IRegistr);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRegistr.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRegistr.GetDefaultInterface: IRegistr;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRegistr.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRegistrProperties.Create(Self);
{$ENDIF}
end;

destructor TRegistr.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRegistr.GetServerProperties: TRegistrProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRegistr.GetKeyVal(const KeyName: WideString; const KeyValue: WideString): WideString;
begin
  Result := DefaultInterface.GetKeyVal(KeyName, KeyValue);
end;

procedure TRegistr.SetKeyVal(const KeyName: WideString; const KeyValue: WideString; 
                             const Value: WideString);
begin
  DefaultInterface.SetKeyVal(KeyName, KeyValue, Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRegistrProperties.Create(AServer: TRegistr);
begin
  inherited Create;
  FServer := AServer;
end;

function TRegistrProperties.GetDefaultInterface: IRegistr;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TclsMnAcs, TclsMnTools, TRegistr]);
end;

end.
