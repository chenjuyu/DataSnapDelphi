unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Datasnap.DBClient, Datasnap.DSConnect,ClientModuleUnit1,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh,MidasLib, Vcl.Buttons, Vcl.Menus;

type
  TForm2 = class(TForm)
    ds1: TClientDataSet;
    dbgrdh1: TDBGridEh;
    ds2: TDataSource;
    btn1: TSpeedButton;
    pm1: TPopupMenu;
    N1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ds1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
  try
    if ds1.RecordCount =0 then Exit;
    ds1.Edit;
    ds1.Post;
    ds1.ApplyUpdates(-1);
   // ds1.Locate('UserID',,[])
    //ds1.Refresh;
   // ds1.RefreshRecord;
  except
   on E:Exception do
   begin
     ShowMessage('错误信息:'+E.Message);
   end;
  end;

end;

procedure TForm2.ds1NewRecord(DataSet: TDataSet);
var
   TableID:string;
begin
  TableID :=ClientModule1.ServerMethods2Client.GetID(50);
  DataSet.FieldByName('UserID').AsString := TableID;
  //DataSet.FieldByName('No').AsString := '2020';
 // DataSet.FieldByName('UserName').AsString := '测试';
  DataSet.FieldByName('DepartmentID').AsString :='007';
end;

procedure TForm2.FormShow(Sender: TObject);
var
  i:Integer;
begin
 // ds1.CommandText  :='';
 if not ClientModule1.SQLConnection1.Connected then
       ClientModule1.SQLConnection1.Connected :=True;
  ds1.Open;
 // ds1.IndexName :='UserID';
  with dbgrdh1.Columns.Add  do
  begin
    FieldName :='Department';
    Title.Caption :='部门';
  end;
  with dbgrdh1.Columns.Add  do
  begin
    FieldName :='No';
    Title.Caption :='编码';
  end;
  with dbgrdh1.Columns.Add  do
  begin
    FieldName :='UserName';
    Title.Caption :='用户名';
  end;
   dbgrdh1.AutoFitColWidths :=False;

    for i:=0 to dbgrdh1.Columns.Count-1  do
       with dbgrdh1.Columns[i] do
        OptimizeWidth;
      //dbgrdh1.columns[i].OptimizeWidth;

end;

procedure TForm2.N1Click(Sender: TObject);
begin
  ds1.Delete;
end;

end.
