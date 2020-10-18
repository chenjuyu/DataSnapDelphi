program DClient;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  Unit1 in 'Unit1.pas',
  uMain in 'uMain.pas' {MainFrm},
  uBaseFrame in 'uBaseFrame.pas' {BaseFrame: TFrame},
  uBusiFrame in 'uBusiFrame.pas' {BusiFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
