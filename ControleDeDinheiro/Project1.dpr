program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Login in 'Login.pas' {LoginForm},
  Modulo in 'Modulo.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
