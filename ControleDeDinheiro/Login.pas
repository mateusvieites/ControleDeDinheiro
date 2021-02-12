unit Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TLoginForm = class(TForm)
    Layout1: TLayout;
    LyBotaoLogin: TLayout;
    BTEntrar: TButton;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    TELogin: TEdit;
    LBLogin: TLabel;
    LBSenha: TLabel;
    TESenha: TEdit;
    procedure BTEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.fmx}
uses modulo;

procedure TLoginForm.BTEntrarClick(Sender: TObject);
var s:string;
begin
  s:= 'SELECT * FROM USUARIOS WHERE LOGIN = ' +QuotedStr(TELogin.Text)
  + ' AND SENHA = ' +QuotedStr(TESenha.Text);
  DM.LoginQuery.Close;
  DM.LoginQuery.SQL.Clear;
  DM.LoginQuery.SQL.Add(s);
  DM.LoginQuery.Open();

  if DM.LoginQueryIDUSUARIO.Text <> '' then
    ShowMessage('FUNCIONOU')
  ELSE
    SHOWMESSAGE('Login ou senha informados inválidos');




end;

end.
