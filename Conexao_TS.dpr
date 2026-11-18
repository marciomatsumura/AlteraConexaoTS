program Conexao_TS;

uses
  Vcl.Forms,
  ConexaoTS in 'ConexaoTS.pas' {FormConexaoTS},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TFormConexaoTS, FormConexaoTS);
  Application.Run;
end.
