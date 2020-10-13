unit ServerMethodsUnit2;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, Data.DB, Data.Win.ADODB,
  Datasnap.Provider,MidasLib,Datasnap.DBClient, UniProvider,
  SQLServerUniProvider, DBAccess, Uni, MemDS;

type
  TServerMethods2 = class(TDSServerModule)
    dsp: TDataSetProvider;
    UniConnection1: TUniConnection;
    UniQuery1: TUniQuery;
    SQLServerUniProvider1: TSQLServerUniProvider;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
      E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetID(tableTag:Integer):string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils,SQLADOPoolUnit;

procedure TServerMethods2.dspUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  raise E;  // 就是这一行代码
end;

procedure TServerMethods2.DSServerModuleCreate(Sender: TObject);
begin
  { ADOConnection1.ConnectionString :='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=A006;PassWord=123456;Data Source=LAPTOP-47BTMKR7';
   ADOConnection1.Connected :=true;    }
  //qry1.Connection :=  ADOPool.GetCon(ADOConfig);
 // qry1.Open;
end;

function TServerMethods2.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods2.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;
function TServerMethods2.GetID(tableTag:Integer): string;
var
   Query:TUniQuery;
begin
  Query := TUniQuery.Create(nil);
  Query.Connection :=UniConnection1;            //ADOPool.GetCon(ADOConfig);//
  Query.Close;
  Query.SQL.Text := 'declare @id varchar(30) exec getnewidValue 50,@id output select @id IDValue';
  Query.Open;
  Result := Query.FieldByName('IDValue').AsString;
  Query.Free;
end;

end.

