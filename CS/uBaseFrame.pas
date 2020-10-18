unit uBaseFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.ExtCtrls;

type
  TBaseFrame = class(TFrame)
    pnl1: TPanel;
    pnl2: TPanel;
    procedure RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;
var
  BaseFrame :TBaseFrame;


implementation

{$R *.dfm}
constructor TBaseFrame.Create(AOwner: TComponent);
begin
  inherited;
end;
procedure TBaseFrame.RzPageControl1Close(Sender: TObject; var AllowClose: Boolean);
begin
  AllowClose :=True;
end;

end.
