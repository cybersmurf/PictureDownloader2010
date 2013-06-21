unit mon2kdbe_TLB;

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
// File generated on 7.2.2009 18:56:52 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Program Files\CIGLER SOFTWARE\Common Files\mon2kdbe.dll (1)
// LIBID: {60C60D17-0E25-4B79-8803-8945634FD3DC}
// LCID: 0
// Helpfile: 
// HelpString: CIGLER SOFTWARE Money S3 DBE Library
// DepndLst: 
//   (1) v2.0 stdole, (D:\WINDOWS\system32\stdole2.tlb)
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
  mon2kdbeMajorVersion = 1;
  mon2kdbeMinorVersion = 0;

  LIBID_mon2kdbe: TGUID = '{60C60D17-0E25-4B79-8803-8945634FD3DC}';

  IID_IBFTable: TGUID = '{7E84DC18-FC16-4C15-A0B0-E5A1B4DC4BA4}';
  IID_IBFTable2: TGUID = '{B890CD6C-F839-4100-A707-EDB040D17728}';
  IID_IBFFilter: TGUID = '{D299679B-2FC7-483A-8D16-51135F3B3301}';
  IID_IBFRelation: TGUID = '{C9E70B29-1AC3-46CC-A241-F6F80DB4A38D}';
  IID_IBFTable3: TGUID = '{C4E64682-A3E4-4705-AA87-5F54306ECB2A}';
  IID_IBFTable4: TGUID = '{127D69EE-6DA1-4E67-B51B-4E1FFEE27A31}';
  IID_IBFString: TGUID = '{CB8A22E0-6EC5-47D9-8190-F868E41F10CF}';
  CLASS_BFString: TGUID = '{AB673EC9-FC83-4BCF-BF66-795763B6A093}';
  IID_IBFTable5: TGUID = '{17A0E451-DDE4-11D7-A56A-005004EB2630}';
  IID_IBFTable6: TGUID = '{CAC577B8-756A-4576-840B-AE6BAE6742F6}';
  IID_IBFTable7: TGUID = '{ADD13E7A-036E-4EE9-AC70-0BBE8F8AB04D}';
  CLASS_BFTable: TGUID = '{86BCE057-6381-4224-A0BD-25E115FBAD94}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum BFFilterResultEnum
type
  BFFilterResultEnum = TOleEnum;
const
  bfFilterOK = $00000000;
  bfFilterNoNext = $0000000A;
  bfFilterNoPrev = $00000014;
  bfFilterNotOK = $0000001E;

// Constants for enum BFRelationEnum
type
  BFRelationEnum = TOleEnum;
const
  bfRelationNotFound = $FFFFFFFF;
  bfRelationOK = $00000000;

// Constants for enum BFErrorEnum
type
  BFErrorEnum = TOleEnum;
const
  bfOK = $00000000;
  bfErrorWhileExecuting = $FFFFFFFF;
  bfUserError = $FFFFFFF6;
  bfAlreadyOpened = $FFFFFFF5;
  bfUnsupportedType = $FFFFFFF4;
  bfInvalidIndex = $FFFFFFF3;

// Constants for enum BFSeekEnum
type
  BFSeekEnum = TOleEnum;
const
  bfSeekNone = $00000000;
  bfSeekAny = $00000001;
  bfSeekDef = $00000003;
  bfSeekFull = $00000007;

// Constants for enum BFMoveEnum
type
  BFMoveEnum = TOleEnum;
const
  bfMarginReached = $00000001;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IBFTable = interface;
  IBFTableDisp = dispinterface;
  IBFTable2 = interface;
  IBFTable2Disp = dispinterface;
  IBFFilter = interface;
  IBFFilterDisp = dispinterface;
  IBFRelation = interface;
  IBFRelationDisp = dispinterface;
  IBFTable3 = interface;
  IBFTable3Disp = dispinterface;
  IBFTable4 = interface;
  IBFTable4Disp = dispinterface;
  IBFString = interface;
  IBFStringDisp = dispinterface;
  IBFTable5 = interface;
  IBFTable5Disp = dispinterface;
  IBFTable6 = interface;
  IBFTable6Disp = dispinterface;
  IBFTable7 = interface;
  IBFTable7Disp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BFString = IBFString;
  BFTable = IBFTable7;


// *********************************************************************//
// Interface: IBFTable
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7E84DC18-FC16-4C15-A0B0-E5A1B4DC4BA4}
// *********************************************************************//
  IBFTable = interface(IDispatch)
    ['{7E84DC18-FC16-4C15-A0B0-E5A1B4DC4BA4}']
    function Get_Source: WideString; safecall;
    procedure Set_Source(const Value: WideString); safecall;
    function Open(Source: OleVariant): Integer; safecall;
    procedure Close; safecall;
    function Get_RecCount: Integer; safecall;
    function Get_EOF: WordBool; safecall;
    function Get_BOF: WordBool; safecall;
    function Top: Integer; safecall;
    function Bottom: Integer; safecall;
    function Prev: Integer; safecall;
    function PrevDiff: Integer; safecall;
    function Next: Integer; safecall;
    function NextDiff: Integer; safecall;
    function Go(RecNo: Integer): Integer; safecall;
    function Get_RecNo: Integer; safecall;
    function Update: Integer; safecall;
    function Cancel: Integer; safecall;
    function Get_Value(const Index: WideString): OleVariant; safecall;
    procedure Set_Value(const Index: WideString; Value: OleVariant); safecall;
    function Get_Index: WideString; safecall;
    function Seek(Value: OleVariant): Integer; safecall;
    function MultiSeek(var Values: PSafeArray): Integer; safecall;
    function Get_Relation: IBFRelation; safecall;
    procedure Set_Relation(const Value: IBFRelation); safecall;
    procedure Append; safecall;
    function Get_IsamError: Integer; safecall;
    function Lock: Integer; safecall;
    function Unlock: Integer; safecall;
    function LockRec: Integer; safecall;
    function UnlockRec: Integer; safecall;
    function Get_Filter: IDispatch; safecall;
    procedure _Set_Filter(const Value: IDispatch); safecall;
    function Delete: Integer; safecall;
    function SetIndex(const Value: WideString): Integer; safecall;
    function AutoInc(const Field: WideString): Integer; safecall;
    property Source: WideString read Get_Source write Set_Source;
    property RecCount: Integer read Get_RecCount;
    property EOF: WordBool read Get_EOF;
    property BOF: WordBool read Get_BOF;
    property RecNo: Integer read Get_RecNo;
    property Value[const Index: WideString]: OleVariant read Get_Value write Set_Value;
    property Index: WideString read Get_Index;
    property Relation: IBFRelation read Get_Relation write Set_Relation;
    property IsamError: Integer read Get_IsamError;
    property Filter: IDispatch read Get_Filter write _Set_Filter;
  end;

// *********************************************************************//
// DispIntf:  IBFTableDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7E84DC18-FC16-4C15-A0B0-E5A1B4DC4BA4}
// *********************************************************************//
  IBFTableDisp = dispinterface
    ['{7E84DC18-FC16-4C15-A0B0-E5A1B4DC4BA4}']
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// Interface: IBFTable2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B890CD6C-F839-4100-A707-EDB040D17728}
// *********************************************************************//
  IBFTable2 = interface(IBFTable)
    ['{B890CD6C-F839-4100-A707-EDB040D17728}']
    function Get_DataSource: Integer; safecall;
    procedure Set_DataSource(Value: Integer); safecall;
    function Get_ServerName: WideString; safecall;
    procedure Set_ServerName(const Value: WideString); safecall;
    function Get_UserID: WideString; safecall;
    procedure Set_UserID(const Value: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const Value: WideString); safecall;
    function Get_SecurityMode: Integer; safecall;
    procedure Set_SecurityMode(Value: Integer); safecall;
    function Get_Catalog: WideString; safecall;
    procedure Set_Catalog(const Value: WideString); safecall;
    property DataSource: Integer read Get_DataSource write Set_DataSource;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property UserID: WideString read Get_UserID write Set_UserID;
    property Password: WideString read Get_Password write Set_Password;
    property SecurityMode: Integer read Get_SecurityMode write Set_SecurityMode;
    property Catalog: WideString read Get_Catalog write Set_Catalog;
  end;

// *********************************************************************//
// DispIntf:  IBFTable2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B890CD6C-F839-4100-A707-EDB040D17728}
// *********************************************************************//
  IBFTable2Disp = dispinterface
    ['{B890CD6C-F839-4100-A707-EDB040D17728}']
    property DataSource: Integer dispid 32;
    property ServerName: WideString dispid 33;
    property UserID: WideString dispid 34;
    property Password: WideString dispid 35;
    property SecurityMode: Integer dispid 36;
    property Catalog: WideString dispid 37;
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// Interface: IBFFilter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D299679B-2FC7-483A-8D16-51135F3B3301}
// *********************************************************************//
  IBFFilter = interface(IDispatch)
    ['{D299679B-2FC7-483A-8D16-51135F3B3301}']
    function Top(const Source: IBFTable): Integer; safecall;
    function Accept(const Source: IBFTable): Integer; safecall;
    function UseTop: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IBFFilterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D299679B-2FC7-483A-8D16-51135F3B3301}
// *********************************************************************//
  IBFFilterDisp = dispinterface
    ['{D299679B-2FC7-483A-8D16-51135F3B3301}']
    function Top(const Source: IBFTable): Integer; dispid 1;
    function Accept(const Source: IBFTable): Integer; dispid 2;
    function UseTop: WordBool; dispid 3;
  end;

// *********************************************************************//
// Interface: IBFRelation
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9E70B29-1AC3-46CC-A241-F6F80DB4A38D}
// *********************************************************************//
  IBFRelation = interface(IDispatch)
    ['{C9E70B29-1AC3-46CC-A241-F6F80DB4A38D}']
    function RelationEvent(const Source: IBFTable): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IBFRelationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9E70B29-1AC3-46CC-A241-F6F80DB4A38D}
// *********************************************************************//
  IBFRelationDisp = dispinterface
    ['{C9E70B29-1AC3-46CC-A241-F6F80DB4A38D}']
    function RelationEvent(const Source: IBFTable): Integer; dispid 1;
  end;

// *********************************************************************//
// Interface: IBFTable3
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C4E64682-A3E4-4705-AA87-5F54306ECB2A}
// *********************************************************************//
  IBFTable3 = interface(IBFTable2)
    ['{C4E64682-A3E4-4705-AA87-5F54306ECB2A}']
    function Get_ColCount: Integer; safecall;
    function Get_ColName(Index: Integer): WideString; safecall;
    function Get_ColType(Index: Integer): WideString; safecall;
    function Get_ColLength(Index: Integer): Integer; safecall;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer; safecall;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer; safecall;
    property ColCount: Integer read Get_ColCount;
    property ColName[Index: Integer]: WideString read Get_ColName;
    property ColType[Index: Integer]: WideString read Get_ColType;
    property ColLength[Index: Integer]: Integer read Get_ColLength;
  end;

// *********************************************************************//
// DispIntf:  IBFTable3Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C4E64682-A3E4-4705-AA87-5F54306ECB2A}
// *********************************************************************//
  IBFTable3Disp = dispinterface
    ['{C4E64682-A3E4-4705-AA87-5F54306ECB2A}']
    property ColCount: Integer readonly dispid 48;
    property ColName[Index: Integer]: WideString readonly dispid 49;
    property ColType[Index: Integer]: WideString readonly dispid 50;
    property ColLength[Index: Integer]: Integer readonly dispid 51;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer; dispid 52;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer; dispid 53;
    property DataSource: Integer dispid 32;
    property ServerName: WideString dispid 33;
    property UserID: WideString dispid 34;
    property Password: WideString dispid 35;
    property SecurityMode: Integer dispid 36;
    property Catalog: WideString dispid 37;
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// Interface: IBFTable4
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {127D69EE-6DA1-4E67-B51B-4E1FFEE27A31}
// *********************************************************************//
  IBFTable4 = interface(IBFTable3)
    ['{127D69EE-6DA1-4E67-B51B-4E1FFEE27A31}']
    function Get_IndexCount: Integer; safecall;
    function Get_IndexFields(Index: Integer): WideString; safecall;
    function Get_IndexLength(Index: Integer): Integer; safecall;
    property IndexCount: Integer read Get_IndexCount;
    property IndexFields[Index: Integer]: WideString read Get_IndexFields;
    property IndexLength[Index: Integer]: Integer read Get_IndexLength;
  end;

// *********************************************************************//
// DispIntf:  IBFTable4Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {127D69EE-6DA1-4E67-B51B-4E1FFEE27A31}
// *********************************************************************//
  IBFTable4Disp = dispinterface
    ['{127D69EE-6DA1-4E67-B51B-4E1FFEE27A31}']
    property IndexCount: Integer readonly dispid 60;
    property IndexFields[Index: Integer]: WideString readonly dispid 61;
    property IndexLength[Index: Integer]: Integer readonly dispid 62;
    property ColCount: Integer readonly dispid 48;
    property ColName[Index: Integer]: WideString readonly dispid 49;
    property ColType[Index: Integer]: WideString readonly dispid 50;
    property ColLength[Index: Integer]: Integer readonly dispid 51;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer; dispid 52;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer; dispid 53;
    property DataSource: Integer dispid 32;
    property ServerName: WideString dispid 33;
    property UserID: WideString dispid 34;
    property Password: WideString dispid 35;
    property SecurityMode: Integer dispid 36;
    property Catalog: WideString dispid 37;
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// Interface: IBFString
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB8A22E0-6EC5-47D9-8190-F868E41F10CF}
// *********************************************************************//
  IBFString = interface(IDispatch)
    ['{CB8A22E0-6EC5-47D9-8190-F868E41F10CF}']
    function StrToKey(const S: WideString; Len: SYSINT): WideString; safecall;
    function UpperStr(const S: WideString): WideString; safecall;
    function LowerStr(const S: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IBFStringDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CB8A22E0-6EC5-47D9-8190-F868E41F10CF}
// *********************************************************************//
  IBFStringDisp = dispinterface
    ['{CB8A22E0-6EC5-47D9-8190-F868E41F10CF}']
    function StrToKey(const S: WideString; Len: SYSINT): WideString; dispid 1;
    function UpperStr(const S: WideString): WideString; dispid 2;
    function LowerStr(const S: WideString): WideString; dispid 3;
  end;

// *********************************************************************//
// Interface: IBFTable5
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17A0E451-DDE4-11D7-A56A-005004EB2630}
// *********************************************************************//
  IBFTable5 = interface(IBFTable4)
    ['{17A0E451-DDE4-11D7-A56A-005004EB2630}']
    function MultiSeek5(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant; 
                        Value4: OleVariant; Value5: OleVariant): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IBFTable5Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17A0E451-DDE4-11D7-A56A-005004EB2630}
// *********************************************************************//
  IBFTable5Disp = dispinterface
    ['{17A0E451-DDE4-11D7-A56A-005004EB2630}']
    function MultiSeek5(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant; 
                        Value4: OleVariant; Value5: OleVariant): Integer; dispid 38;
    property IndexCount: Integer readonly dispid 60;
    property IndexFields[Index: Integer]: WideString readonly dispid 61;
    property IndexLength[Index: Integer]: Integer readonly dispid 62;
    property ColCount: Integer readonly dispid 48;
    property ColName[Index: Integer]: WideString readonly dispid 49;
    property ColType[Index: Integer]: WideString readonly dispid 50;
    property ColLength[Index: Integer]: Integer readonly dispid 51;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer; dispid 52;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer; dispid 53;
    property DataSource: Integer dispid 32;
    property ServerName: WideString dispid 33;
    property UserID: WideString dispid 34;
    property Password: WideString dispid 35;
    property SecurityMode: Integer dispid 36;
    property Catalog: WideString dispid 37;
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// Interface: IBFTable6
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CAC577B8-756A-4576-840B-AE6BAE6742F6}
// *********************************************************************//
  IBFTable6 = interface(IBFTable5)
    ['{CAC577B8-756A-4576-840B-AE6BAE6742F6}']
    function Get_ValueAsGUID(const Index: WideString): TGUID; safecall;
    procedure Set_ValueAsGUID(const Index: WideString; Value: TGUID); safecall;
    function Get_ValueAsGUIDStr(const Index: WideString): WideString; safecall;
    procedure Set_ValueAsGUIDStr(const Index: WideString; const Value: WideString); safecall;
    function GetSeekStrFromGUID(GUID: TGUID): WideString; safecall;
    function GetSeekStrFromGUIDStr(const GUIDStr: WideString): WideString; safecall;
    property ValueAsGUID[const Index: WideString]: TGUID read Get_ValueAsGUID write Set_ValueAsGUID;
    property ValueAsGUIDStr[const Index: WideString]: WideString read Get_ValueAsGUIDStr write Set_ValueAsGUIDStr;
  end;

// *********************************************************************//
// DispIntf:  IBFTable6Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CAC577B8-756A-4576-840B-AE6BAE6742F6}
// *********************************************************************//
  IBFTable6Disp = dispinterface
    ['{CAC577B8-756A-4576-840B-AE6BAE6742F6}']
    property ValueAsGUID[const Index: WideString]: {??TGUID}OleVariant dispid 39;
    property ValueAsGUIDStr[const Index: WideString]: WideString dispid 40;
    function GetSeekStrFromGUID(GUID: {??TGUID}OleVariant): WideString; dispid 41;
    function GetSeekStrFromGUIDStr(const GUIDStr: WideString): WideString; dispid 42;
    function MultiSeek5(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant; 
                        Value4: OleVariant; Value5: OleVariant): Integer; dispid 38;
    property IndexCount: Integer readonly dispid 60;
    property IndexFields[Index: Integer]: WideString readonly dispid 61;
    property IndexLength[Index: Integer]: Integer readonly dispid 62;
    property ColCount: Integer readonly dispid 48;
    property ColName[Index: Integer]: WideString readonly dispid 49;
    property ColType[Index: Integer]: WideString readonly dispid 50;
    property ColLength[Index: Integer]: Integer readonly dispid 51;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer; dispid 52;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer; dispid 53;
    property DataSource: Integer dispid 32;
    property ServerName: WideString dispid 33;
    property UserID: WideString dispid 34;
    property Password: WideString dispid 35;
    property SecurityMode: Integer dispid 36;
    property Catalog: WideString dispid 37;
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// Interface: IBFTable7
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADD13E7A-036E-4EE9-AC70-0BBE8F8AB04D}
// *********************************************************************//
  IBFTable7 = interface(IBFTable6)
    ['{ADD13E7A-036E-4EE9-AC70-0BBE8F8AB04D}']
    function Get_LinksValue(const Index: WideString): WideString; safecall;
    procedure Set_LinksValue(const Index: WideString; const Value: WideString); safecall;
    procedure AppendLink(const Index: WideString; const Link: WideString); safecall;
    property LinksValue[const Index: WideString]: WideString read Get_LinksValue write Set_LinksValue;
  end;

// *********************************************************************//
// DispIntf:  IBFTable7Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADD13E7A-036E-4EE9-AC70-0BBE8F8AB04D}
// *********************************************************************//
  IBFTable7Disp = dispinterface
    ['{ADD13E7A-036E-4EE9-AC70-0BBE8F8AB04D}']
    property LinksValue[const Index: WideString]: WideString dispid 43;
    procedure AppendLink(const Index: WideString; const Link: WideString); dispid 44;
    property ValueAsGUID[const Index: WideString]: {??TGUID}OleVariant dispid 39;
    property ValueAsGUIDStr[const Index: WideString]: WideString dispid 40;
    function GetSeekStrFromGUID(GUID: {??TGUID}OleVariant): WideString; dispid 41;
    function GetSeekStrFromGUIDStr(const GUIDStr: WideString): WideString; dispid 42;
    function MultiSeek5(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant; 
                        Value4: OleVariant; Value5: OleVariant): Integer; dispid 38;
    property IndexCount: Integer readonly dispid 60;
    property IndexFields[Index: Integer]: WideString readonly dispid 61;
    property IndexLength[Index: Integer]: Integer readonly dispid 62;
    property ColCount: Integer readonly dispid 48;
    property ColName[Index: Integer]: WideString readonly dispid 49;
    property ColType[Index: Integer]: WideString readonly dispid 50;
    property ColLength[Index: Integer]: Integer readonly dispid 51;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer; dispid 52;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer; dispid 53;
    property DataSource: Integer dispid 32;
    property ServerName: WideString dispid 33;
    property UserID: WideString dispid 34;
    property Password: WideString dispid 35;
    property SecurityMode: Integer dispid 36;
    property Catalog: WideString dispid 37;
    property Source: WideString dispid 1;
    function Open(Source: OleVariant): Integer; dispid 2;
    procedure Close; dispid 3;
    property RecCount: Integer readonly dispid 4;
    property EOF: WordBool readonly dispid 5;
    property BOF: WordBool readonly dispid 6;
    function Top: Integer; dispid 7;
    function Bottom: Integer; dispid 8;
    function Prev: Integer; dispid 9;
    function PrevDiff: Integer; dispid 10;
    function Next: Integer; dispid 11;
    function NextDiff: Integer; dispid 12;
    function Go(RecNo: Integer): Integer; dispid 13;
    property RecNo: Integer readonly dispid 14;
    function Update: Integer; dispid 15;
    function Cancel: Integer; dispid 16;
    property Value[const Index: WideString]: OleVariant dispid 17;
    property Index: WideString readonly dispid 18;
    function Seek(Value: OleVariant): Integer; dispid 20;
    function MultiSeek(var Values: {??PSafeArray}OleVariant): Integer; dispid 21;
    property Relation: IBFRelation dispid 23;
    procedure Append; dispid 24;
    property IsamError: Integer readonly dispid 25;
    function Lock: Integer; dispid 26;
    function Unlock: Integer; dispid 27;
    function LockRec: Integer; dispid 28;
    function UnlockRec: Integer; dispid 29;
    property Filter: IDispatch dispid 19;
    function Delete: Integer; dispid 22;
    function SetIndex(const Value: WideString): Integer; dispid 30;
    function AutoInc(const Field: WideString): Integer; dispid 31;
  end;

// *********************************************************************//
// The Class CoBFString provides a Create and CreateRemote method to          
// create instances of the default interface IBFString exposed by              
// the CoClass BFString. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBFString = class
    class function Create: IBFString;
    class function CreateRemote(const MachineName: string): IBFString;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBFString
// Help String      : BFString Object
// Default Interface: IBFString
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBFStringProperties= class;
{$ENDIF}
  TBFString = class(TOleServer)
  private
    FIntf:        IBFString;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TBFStringProperties;
    function      GetServerProperties: TBFStringProperties;
{$ENDIF}
    function      GetDefaultInterface: IBFString;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBFString);
    procedure Disconnect; override;
    function StrToKey(const S: WideString; Len: SYSINT): WideString;
    function UpperStr(const S: WideString): WideString;
    function LowerStr(const S: WideString): WideString;
    property DefaultInterface: IBFString read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBFStringProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBFString
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBFStringProperties = class(TPersistent)
  private
    FServer:    TBFString;
    function    GetDefaultInterface: IBFString;
    constructor Create(AServer: TBFString);
  protected
  public
    property DefaultInterface: IBFString read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBFTable provides a Create and CreateRemote method to          
// create instances of the default interface IBFTable7 exposed by              
// the CoClass BFTable. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBFTable = class
    class function Create: IBFTable7;
    class function CreateRemote(const MachineName: string): IBFTable7;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBFTable
// Help String      : BFTable Object
// Default Interface: IBFTable7
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBFTableProperties= class;
{$ENDIF}
  TBFTable = class(TOleServer)
  private
    FIntf:        IBFTable7;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TBFTableProperties;
    function      GetServerProperties: TBFTableProperties;
{$ENDIF}
    function      GetDefaultInterface: IBFTable7;
  protected
    procedure InitServerData; override;
    function Get_Source: WideString;
    procedure Set_Source(const Value: WideString);
    function Get_RecCount: Integer;
    function Get_EOF: WordBool;
    function Get_BOF: WordBool;
    function Get_RecNo: Integer;
    function Get_Value(const Index: WideString): OleVariant;
    procedure Set_Value(const Index: WideString; Value: OleVariant);
    function Get_Index: WideString;
    function Get_Relation: IBFRelation;
    procedure Set_Relation(const Value: IBFRelation);
    function Get_IsamError: Integer;
    function Get_Filter: IDispatch;
    procedure _Set_Filter(const Value: IDispatch);
    function Get_DataSource: Integer;
    procedure Set_DataSource(Value: Integer);
    function Get_ServerName: WideString;
    procedure Set_ServerName(const Value: WideString);
    function Get_UserID: WideString;
    procedure Set_UserID(const Value: WideString);
    function Get_Password: WideString;
    procedure Set_Password(const Value: WideString);
    function Get_SecurityMode: Integer;
    procedure Set_SecurityMode(Value: Integer);
    function Get_Catalog: WideString;
    procedure Set_Catalog(const Value: WideString);
    function Get_ColCount: Integer;
    function Get_ColName(Index: Integer): WideString;
    function Get_ColType(Index: Integer): WideString;
    function Get_ColLength(Index: Integer): Integer;
    function Get_IndexCount: Integer;
    function Get_IndexFields(Index: Integer): WideString;
    function Get_IndexLength(Index: Integer): Integer;
    function Get_ValueAsGUID(const Index: WideString): TGUID;
    procedure Set_ValueAsGUID(const Index: WideString; Value: TGUID);
    function Get_ValueAsGUIDStr(const Index: WideString): WideString;
    procedure Set_ValueAsGUIDStr(const Index: WideString; const Value: WideString);
    function Get_LinksValue(const Index: WideString): WideString;
    procedure Set_LinksValue(const Index: WideString; const Value: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBFTable7);
    procedure Disconnect; override;
    function Open: Integer; overload;
    function Open(Source: OleVariant): Integer; overload;
    procedure Close;
    function Top: Integer;
    function Bottom: Integer;
    function Prev: Integer;
    function PrevDiff: Integer;
    function Next: Integer;
    function NextDiff: Integer;
    function Go(RecNo: Integer): Integer;
    function Update: Integer;
    function Cancel: Integer;
    function Seek(Value: OleVariant): Integer;
    function MultiSeek(var Values: PSafeArray): Integer;
    procedure Append;
    function Lock: Integer;
    function Unlock: Integer;
    function LockRec: Integer;
    function UnlockRec: Integer;
    function Delete: Integer;
    function SetIndex(const Value: WideString): Integer;
    function AutoInc(const Field: WideString): Integer;
    function MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer;
    function MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer;
    function MultiSeek5(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant; 
                        Value4: OleVariant; Value5: OleVariant): Integer;
    function GetSeekStrFromGUID(GUID: TGUID): WideString;
    function GetSeekStrFromGUIDStr(const GUIDStr: WideString): WideString;
    procedure AppendLink(const Index: WideString; const Link: WideString);
    property DefaultInterface: IBFTable7 read GetDefaultInterface;
    property RecCount: Integer read Get_RecCount;
    property EOF: WordBool read Get_EOF;
    property BOF: WordBool read Get_BOF;
    property RecNo: Integer read Get_RecNo;
    property Value[const Index: WideString]: OleVariant read Get_Value write Set_Value;
    property Index: WideString read Get_Index;
    property IsamError: Integer read Get_IsamError;
    property Filter: IDispatch read Get_Filter write _Set_Filter;
    property ColCount: Integer read Get_ColCount;
    property ColName[Index: Integer]: WideString read Get_ColName;
    property ColType[Index: Integer]: WideString read Get_ColType;
    property ColLength[Index: Integer]: Integer read Get_ColLength;
    property IndexCount: Integer read Get_IndexCount;
    property IndexFields[Index: Integer]: WideString read Get_IndexFields;
    property IndexLength[Index: Integer]: Integer read Get_IndexLength;
    property ValueAsGUID[const Index: WideString]: TGUID read Get_ValueAsGUID write Set_ValueAsGUID;
    property ValueAsGUIDStr[const Index: WideString]: WideString read Get_ValueAsGUIDStr write Set_ValueAsGUIDStr;
    property LinksValue[const Index: WideString]: WideString read Get_LinksValue write Set_LinksValue;
    property Source: WideString read Get_Source write Set_Source;
    property Relation: IBFRelation read Get_Relation write Set_Relation;
    property DataSource: Integer read Get_DataSource write Set_DataSource;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property UserID: WideString read Get_UserID write Set_UserID;
    property Password: WideString read Get_Password write Set_Password;
    property SecurityMode: Integer read Get_SecurityMode write Set_SecurityMode;
    property Catalog: WideString read Get_Catalog write Set_Catalog;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBFTableProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBFTable
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBFTableProperties = class(TPersistent)
  private
    FServer:    TBFTable;
    function    GetDefaultInterface: IBFTable7;
    constructor Create(AServer: TBFTable);
  protected
    function Get_Source: WideString;
    procedure Set_Source(const Value: WideString);
    function Get_RecCount: Integer;
    function Get_EOF: WordBool;
    function Get_BOF: WordBool;
    function Get_RecNo: Integer;
    function Get_Value(const Index: WideString): OleVariant;
    procedure Set_Value(const Index: WideString; Value: OleVariant);
    function Get_Index: WideString;
    function Get_Relation: IBFRelation;
    procedure Set_Relation(const Value: IBFRelation);
    function Get_IsamError: Integer;
    function Get_Filter: IDispatch;
    procedure _Set_Filter(const Value: IDispatch);
    function Get_DataSource: Integer;
    procedure Set_DataSource(Value: Integer);
    function Get_ServerName: WideString;
    procedure Set_ServerName(const Value: WideString);
    function Get_UserID: WideString;
    procedure Set_UserID(const Value: WideString);
    function Get_Password: WideString;
    procedure Set_Password(const Value: WideString);
    function Get_SecurityMode: Integer;
    procedure Set_SecurityMode(Value: Integer);
    function Get_Catalog: WideString;
    procedure Set_Catalog(const Value: WideString);
    function Get_ColCount: Integer;
    function Get_ColName(Index: Integer): WideString;
    function Get_ColType(Index: Integer): WideString;
    function Get_ColLength(Index: Integer): Integer;
    function Get_IndexCount: Integer;
    function Get_IndexFields(Index: Integer): WideString;
    function Get_IndexLength(Index: Integer): Integer;
    function Get_ValueAsGUID(const Index: WideString): TGUID;
    procedure Set_ValueAsGUID(const Index: WideString; Value: TGUID);
    function Get_ValueAsGUIDStr(const Index: WideString): WideString;
    procedure Set_ValueAsGUIDStr(const Index: WideString; const Value: WideString);
    function Get_LinksValue(const Index: WideString): WideString;
    procedure Set_LinksValue(const Index: WideString; const Value: WideString);
  public
    property DefaultInterface: IBFTable7 read GetDefaultInterface;
  published
    property Source: WideString read Get_Source write Set_Source;
    property Relation: IBFRelation read Get_Relation write Set_Relation;
    property DataSource: Integer read Get_DataSource write Set_DataSource;
    property ServerName: WideString read Get_ServerName write Set_ServerName;
    property UserID: WideString read Get_UserID write Set_UserID;
    property Password: WideString read Get_Password write Set_Password;
    property SecurityMode: Integer read Get_SecurityMode write Set_SecurityMode;
    property Catalog: WideString read Get_Catalog write Set_Catalog;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoBFString.Create: IBFString;
begin
  Result := CreateComObject(CLASS_BFString) as IBFString;
end;

class function CoBFString.CreateRemote(const MachineName: string): IBFString;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BFString) as IBFString;
end;

procedure TBFString.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{AB673EC9-FC83-4BCF-BF66-795763B6A093}';
    IntfIID:   '{CB8A22E0-6EC5-47D9-8190-F868E41F10CF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBFString.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBFString;
  end;
end;

procedure TBFString.ConnectTo(svrIntf: IBFString);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBFString.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBFString.GetDefaultInterface: IBFString;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TBFString.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBFStringProperties.Create(Self);
{$ENDIF}
end;

destructor TBFString.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBFString.GetServerProperties: TBFStringProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBFString.StrToKey(const S: WideString; Len: SYSINT): WideString;
begin
  Result := DefaultInterface.StrToKey(S, Len);
end;

function TBFString.UpperStr(const S: WideString): WideString;
begin
  Result := DefaultInterface.UpperStr(S);
end;

function TBFString.LowerStr(const S: WideString): WideString;
begin
  Result := DefaultInterface.LowerStr(S);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBFStringProperties.Create(AServer: TBFString);
begin
  inherited Create;
  FServer := AServer;
end;

function TBFStringProperties.GetDefaultInterface: IBFString;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoBFTable.Create: IBFTable7;
begin
  Result := CreateComObject(CLASS_BFTable) as IBFTable7;
end;

class function CoBFTable.CreateRemote(const MachineName: string): IBFTable7;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BFTable) as IBFTable7;
end;

procedure TBFTable.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{86BCE057-6381-4224-A0BD-25E115FBAD94}';
    IntfIID:   '{ADD13E7A-036E-4EE9-AC70-0BBE8F8AB04D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBFTable.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBFTable7;
  end;
end;

procedure TBFTable.ConnectTo(svrIntf: IBFTable7);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBFTable.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBFTable.GetDefaultInterface: IBFTable7;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TBFTable.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBFTableProperties.Create(Self);
{$ENDIF}
end;

destructor TBFTable.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBFTable.GetServerProperties: TBFTableProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBFTable.Get_Source: WideString;
begin
    Result := DefaultInterface.Source;
end;

procedure TBFTable.Set_Source(const Value: WideString);
  { Warning: The property Source has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Source := Value;
end;

function TBFTable.Get_RecCount: Integer;
begin
    Result := DefaultInterface.RecCount;
end;

function TBFTable.Get_EOF: WordBool;
begin
    Result := DefaultInterface.EOF;
end;

function TBFTable.Get_BOF: WordBool;
begin
    Result := DefaultInterface.BOF;
end;

function TBFTable.Get_RecNo: Integer;
begin
    Result := DefaultInterface.RecNo;
end;

function TBFTable.Get_Value(const Index: WideString): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value[Index];
end;

procedure TBFTable.Set_Value(const Index: WideString; Value: OleVariant);
begin
  DefaultInterface.Value[Index] := Value;
end;

function TBFTable.Get_Index: WideString;
begin
    Result := DefaultInterface.Index;
end;

function TBFTable.Get_Relation: IBFRelation;
begin
    Result := DefaultInterface.Relation;
end;

procedure TBFTable.Set_Relation(const Value: IBFRelation);
begin
  DefaultInterface.Set_Relation(Value);
end;

function TBFTable.Get_IsamError: Integer;
begin
    Result := DefaultInterface.IsamError;
end;

function TBFTable.Get_Filter: IDispatch;
begin
    Result := DefaultInterface.Filter;
end;

procedure TBFTable._Set_Filter(const Value: IDispatch);
  { Warning: The property Filter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Filter := Value;
end;

function TBFTable.Get_DataSource: Integer;
begin
    Result := DefaultInterface.DataSource;
end;

procedure TBFTable.Set_DataSource(Value: Integer);
begin
  DefaultInterface.Set_DataSource(Value);
end;

function TBFTable.Get_ServerName: WideString;
begin
    Result := DefaultInterface.ServerName;
end;

procedure TBFTable.Set_ServerName(const Value: WideString);
  { Warning: The property ServerName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ServerName := Value;
end;

function TBFTable.Get_UserID: WideString;
begin
    Result := DefaultInterface.UserID;
end;

procedure TBFTable.Set_UserID(const Value: WideString);
  { Warning: The property UserID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserID := Value;
end;

function TBFTable.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TBFTable.Set_Password(const Value: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := Value;
end;

function TBFTable.Get_SecurityMode: Integer;
begin
    Result := DefaultInterface.SecurityMode;
end;

procedure TBFTable.Set_SecurityMode(Value: Integer);
begin
  DefaultInterface.Set_SecurityMode(Value);
end;

function TBFTable.Get_Catalog: WideString;
begin
    Result := DefaultInterface.Catalog;
end;

procedure TBFTable.Set_Catalog(const Value: WideString);
  { Warning: The property Catalog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Catalog := Value;
end;

function TBFTable.Get_ColCount: Integer;
begin
    Result := DefaultInterface.ColCount;
end;

function TBFTable.Get_ColName(Index: Integer): WideString;
begin
    Result := DefaultInterface.ColName[Index];
end;

function TBFTable.Get_ColType(Index: Integer): WideString;
begin
    Result := DefaultInterface.ColType[Index];
end;

function TBFTable.Get_ColLength(Index: Integer): Integer;
begin
    Result := DefaultInterface.ColLength[Index];
end;

function TBFTable.Get_IndexCount: Integer;
begin
    Result := DefaultInterface.IndexCount;
end;

function TBFTable.Get_IndexFields(Index: Integer): WideString;
begin
    Result := DefaultInterface.IndexFields[Index];
end;

function TBFTable.Get_IndexLength(Index: Integer): Integer;
begin
    Result := DefaultInterface.IndexLength[Index];
end;

function TBFTable.Get_ValueAsGUID(const Index: WideString): TGUID;
begin
    Result := DefaultInterface.ValueAsGUID[Index];
end;

procedure TBFTable.Set_ValueAsGUID(const Index: WideString; Value: TGUID);
begin
  DefaultInterface.ValueAsGUID[Index] := Value;
end;

function TBFTable.Get_ValueAsGUIDStr(const Index: WideString): WideString;
begin
    Result := DefaultInterface.ValueAsGUIDStr[Index];
end;

procedure TBFTable.Set_ValueAsGUIDStr(const Index: WideString; const Value: WideString);
  { Warning: The property ValueAsGUIDStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ValueAsGUIDStr := Value;
end;

function TBFTable.Get_LinksValue(const Index: WideString): WideString;
begin
    Result := DefaultInterface.LinksValue[Index];
end;

procedure TBFTable.Set_LinksValue(const Index: WideString; const Value: WideString);
  { Warning: The property LinksValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LinksValue := Value;
end;

function TBFTable.Open: Integer;
begin
  Result := DefaultInterface.Open(EmptyParam);
end;

function TBFTable.Open(Source: OleVariant): Integer;
begin
  Result := DefaultInterface.Open(Source);
end;

procedure TBFTable.Close;
begin
  DefaultInterface.Close;
end;

function TBFTable.Top: Integer;
begin
  Result := DefaultInterface.Top;
end;

function TBFTable.Bottom: Integer;
begin
  Result := DefaultInterface.Bottom;
end;

function TBFTable.Prev: Integer;
begin
  Result := DefaultInterface.Prev;
end;

function TBFTable.PrevDiff: Integer;
begin
  Result := DefaultInterface.PrevDiff;
end;

function TBFTable.Next: Integer;
begin
  Result := DefaultInterface.Next;
end;

function TBFTable.NextDiff: Integer;
begin
  Result := DefaultInterface.NextDiff;
end;

function TBFTable.Go(RecNo: Integer): Integer;
begin
  Result := DefaultInterface.Go(RecNo);
end;

function TBFTable.Update: Integer;
begin
  Result := DefaultInterface.Update;
end;

function TBFTable.Cancel: Integer;
begin
  Result := DefaultInterface.Cancel;
end;

function TBFTable.Seek(Value: OleVariant): Integer;
begin
  Result := DefaultInterface.Seek(Value);
end;

function TBFTable.MultiSeek(var Values: PSafeArray): Integer;
begin
  Result := DefaultInterface.MultiSeek(Values);
end;

procedure TBFTable.Append;
begin
  DefaultInterface.Append;
end;

function TBFTable.Lock: Integer;
begin
  Result := DefaultInterface.Lock;
end;

function TBFTable.Unlock: Integer;
begin
  Result := DefaultInterface.Unlock;
end;

function TBFTable.LockRec: Integer;
begin
  Result := DefaultInterface.LockRec;
end;

function TBFTable.UnlockRec: Integer;
begin
  Result := DefaultInterface.UnlockRec;
end;

function TBFTable.Delete: Integer;
begin
  Result := DefaultInterface.Delete;
end;

function TBFTable.SetIndex(const Value: WideString): Integer;
begin
  Result := DefaultInterface.SetIndex(Value);
end;

function TBFTable.AutoInc(const Field: WideString): Integer;
begin
  Result := DefaultInterface.AutoInc(Field);
end;

function TBFTable.MultiSeek2(Value1: OleVariant; Value2: OleVariant): Integer;
begin
  Result := DefaultInterface.MultiSeek2(Value1, Value2);
end;

function TBFTable.MultiSeek3(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant): Integer;
begin
  Result := DefaultInterface.MultiSeek3(Value1, Value2, Value3);
end;

function TBFTable.MultiSeek5(Value1: OleVariant; Value2: OleVariant; Value3: OleVariant; 
                             Value4: OleVariant; Value5: OleVariant): Integer;
begin
  Result := DefaultInterface.MultiSeek5(Value1, Value2, Value3, Value4, Value5);
end;

function TBFTable.GetSeekStrFromGUID(GUID: TGUID): WideString;
begin
  Result := DefaultInterface.GetSeekStrFromGUID(GUID);
end;

function TBFTable.GetSeekStrFromGUIDStr(const GUIDStr: WideString): WideString;
begin
  Result := DefaultInterface.GetSeekStrFromGUIDStr(GUIDStr);
end;

procedure TBFTable.AppendLink(const Index: WideString; const Link: WideString);
begin
  DefaultInterface.AppendLink(Index, Link);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBFTableProperties.Create(AServer: TBFTable);
begin
  inherited Create;
  FServer := AServer;
end;

function TBFTableProperties.GetDefaultInterface: IBFTable7;
begin
  Result := FServer.DefaultInterface;
end;

function TBFTableProperties.Get_Source: WideString;
begin
    Result := DefaultInterface.Source;
end;

procedure TBFTableProperties.Set_Source(const Value: WideString);
  { Warning: The property Source has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Source := Value;
end;

function TBFTableProperties.Get_RecCount: Integer;
begin
    Result := DefaultInterface.RecCount;
end;

function TBFTableProperties.Get_EOF: WordBool;
begin
    Result := DefaultInterface.EOF;
end;

function TBFTableProperties.Get_BOF: WordBool;
begin
    Result := DefaultInterface.BOF;
end;

function TBFTableProperties.Get_RecNo: Integer;
begin
    Result := DefaultInterface.RecNo;
end;

function TBFTableProperties.Get_Value(const Index: WideString): OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Value[Index];
end;

procedure TBFTableProperties.Set_Value(const Index: WideString; Value: OleVariant);
begin
  DefaultInterface.Value[Index] := Value;
end;

function TBFTableProperties.Get_Index: WideString;
begin
    Result := DefaultInterface.Index;
end;

function TBFTableProperties.Get_Relation: IBFRelation;
begin
    Result := DefaultInterface.Relation;
end;

procedure TBFTableProperties.Set_Relation(const Value: IBFRelation);
begin
  DefaultInterface.Set_Relation(Value);
end;

function TBFTableProperties.Get_IsamError: Integer;
begin
    Result := DefaultInterface.IsamError;
end;

function TBFTableProperties.Get_Filter: IDispatch;
begin
    Result := DefaultInterface.Filter;
end;

procedure TBFTableProperties._Set_Filter(const Value: IDispatch);
  { Warning: The property Filter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Filter := Value;
end;

function TBFTableProperties.Get_DataSource: Integer;
begin
    Result := DefaultInterface.DataSource;
end;

procedure TBFTableProperties.Set_DataSource(Value: Integer);
begin
  DefaultInterface.Set_DataSource(Value);
end;

function TBFTableProperties.Get_ServerName: WideString;
begin
    Result := DefaultInterface.ServerName;
end;

procedure TBFTableProperties.Set_ServerName(const Value: WideString);
  { Warning: The property ServerName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ServerName := Value;
end;

function TBFTableProperties.Get_UserID: WideString;
begin
    Result := DefaultInterface.UserID;
end;

procedure TBFTableProperties.Set_UserID(const Value: WideString);
  { Warning: The property UserID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserID := Value;
end;

function TBFTableProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TBFTableProperties.Set_Password(const Value: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := Value;
end;

function TBFTableProperties.Get_SecurityMode: Integer;
begin
    Result := DefaultInterface.SecurityMode;
end;

procedure TBFTableProperties.Set_SecurityMode(Value: Integer);
begin
  DefaultInterface.Set_SecurityMode(Value);
end;

function TBFTableProperties.Get_Catalog: WideString;
begin
    Result := DefaultInterface.Catalog;
end;

procedure TBFTableProperties.Set_Catalog(const Value: WideString);
  { Warning: The property Catalog has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Catalog := Value;
end;

function TBFTableProperties.Get_ColCount: Integer;
begin
    Result := DefaultInterface.ColCount;
end;

function TBFTableProperties.Get_ColName(Index: Integer): WideString;
begin
    Result := DefaultInterface.ColName[Index];
end;

function TBFTableProperties.Get_ColType(Index: Integer): WideString;
begin
    Result := DefaultInterface.ColType[Index];
end;

function TBFTableProperties.Get_ColLength(Index: Integer): Integer;
begin
    Result := DefaultInterface.ColLength[Index];
end;

function TBFTableProperties.Get_IndexCount: Integer;
begin
    Result := DefaultInterface.IndexCount;
end;

function TBFTableProperties.Get_IndexFields(Index: Integer): WideString;
begin
    Result := DefaultInterface.IndexFields[Index];
end;

function TBFTableProperties.Get_IndexLength(Index: Integer): Integer;
begin
    Result := DefaultInterface.IndexLength[Index];
end;

function TBFTableProperties.Get_ValueAsGUID(const Index: WideString): TGUID;
begin
    Result := DefaultInterface.ValueAsGUID[Index];
end;

procedure TBFTableProperties.Set_ValueAsGUID(const Index: WideString; Value: TGUID);
begin
  DefaultInterface.ValueAsGUID[Index] := Value;
end;

function TBFTableProperties.Get_ValueAsGUIDStr(const Index: WideString): WideString;
begin
    Result := DefaultInterface.ValueAsGUIDStr[Index];
end;

procedure TBFTableProperties.Set_ValueAsGUIDStr(const Index: WideString; const Value: WideString);
  { Warning: The property ValueAsGUIDStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ValueAsGUIDStr := Value;
end;

function TBFTableProperties.Get_LinksValue(const Index: WideString): WideString;
begin
    Result := DefaultInterface.LinksValue[Index];
end;

procedure TBFTableProperties.Set_LinksValue(const Index: WideString; const Value: WideString);
  { Warning: The property LinksValue has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.LinksValue := Value;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TBFString, TBFTable]);
end;

end.
