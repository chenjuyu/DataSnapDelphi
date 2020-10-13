program DServer;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  Unit2 in 'Unit2.pas' {Form2},
  ServerMethodsUnit2 in 'ServerMethodsUnit2.pas' {ServerMethods2: TDSServerModule},
  ServerContainerUnit2 in 'ServerContainerUnit2.pas' {ServerContainer2: TDataModule},
  SQLADOPoolUnit in 'SQLADOPoolUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TServerContainer2, ServerContainer2);
  Application.Run;
end.

