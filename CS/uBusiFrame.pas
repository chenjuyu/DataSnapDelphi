unit uBusiFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls;

type
  TBusiFrame = class(TFrame)
    pnl1: TPanel;
    pnl2: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
 BusiFrame:TBusiFrame;
implementation

{$R *.dfm}

procedure TBusiFrame.RzPageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  AllowClose  :=True;
end;

end.
