unit ConexaoTS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.IOUtils;

type
  TFormConexaoTS = class(TForm)
    EditConexaoTS: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    Memo2: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
  private
    procedure AlterarValorRPD;
    procedure AlterarClienteTodosRPD(const APasta: String; Aposicao: integer; Avalor: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConexaoTS: TFormConexaoTS;

implementation

{$R *.dfm}

procedure TFormConexaoTS.AlterarValorRPD;
var
  SL: TStringList;
begin
  SL := TStringList.Create;
  try
    SL.LoadFromFile('EditConexaoTS');

    SL.Text := StringReplace(
      SL.Text,
      'VALOR_ANTIGO',
      'VALOR_NOVO',
      [rfReplaceAll]
    );

    SL.SaveToFile('C:\Arquivos\relatorio.rdp');
  finally
    SL.Free;
  end;
end;

procedure TFormConexaoTS.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  var Arquivo: string;
    for Arquivo in TDirectory.GetFiles(EditConexaoTS.Text, '*.rdp') do
      Memo1.Lines.Add(ExtractFileName(Arquivo));
  end;

procedure TFormConexaoTS.Button2Click(Sender: TObject);
begin
  Label3.Caption := EditConexaoTs.Text +  Memo1.Lines[Memo1.Perform(EM_LINEFROMCHAR, Memo1.SelStart, 0)];
  Memo2.Lines.LoadFromFile(EditConexaoTs.Text + Memo1.Lines[Memo1.Perform(EM_LINEFROMCHAR, Memo1.SelStart, 0)]);
end;

procedure TFormConexaoTS.Button3Click(Sender: TObject);
begin
  Memo2.Lines.SaveToFile(EditConexaoTs.Text + Memo1.Lines[Memo1.Perform(EM_LINEFROMCHAR, Memo1.SelStart, 0)]);
end;

procedure TFormConexaoTS.Button4Click(Sender: TObject);
begin
  var LLargura := inputBox('Valor a alterar para a largura(width)','Largura em pixel','');
  AlterarClienteTodosRPD(EditConexaoTs.Text, 2, 'desktopwidth:i:'+LLargura);

  var LAltura := inputBox('Valor a alterar a altura (Height)','Altura em pixel','');
  AlterarClienteTodosRPD(EditConexaoTs.Text, 3, 'desktopheight:i:'+LAltura);
end;


procedure TFormConexaoTS.Memo1Click(Sender: TObject);
begin
  Button2Click(nil);
end;

procedure TFormConexaoTS.AlterarClienteTodosRPD(const APasta: String; Aposicao: integer; Avalor: String);
var
  Arq: string;
  SL: TStringList;
begin
  for Arq in TDirectory.GetFiles(APasta, '*.rdp') do
  begin
    SL := TStringList.Create;
    try
      SL.LoadFromFile(Arq);
      if SL.Count > 10 then
      begin
        SL[Aposicao] := Avalor;
        SL.SaveToFile(Arq);
      end;
    finally
      SL.Free;
    end;
  end;
end;

end.


