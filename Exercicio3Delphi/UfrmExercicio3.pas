unit UfrmExercicio3;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.Grids, Vcl.Outline, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    mmRegistro: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNota4: TEdit;
    Label7: TLabel;
    pnlRegistrar: TPanel;
    olSeparador: TOutline;
    Label8: TLabel;
    procedure pnlRegistrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AdicionarAluno;
    function  CalcularMedia: double;
    function  ChecarAprovacao(pMedia: double): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Vcl.Dialogs, Winapi.Windows, System.UITypes;

{$R *.dfm}

//Fun��o que adiciona o Aluno e registra sua media
procedure TForm1.AdicionarAluno;
var
  xNome,xResultado: string;
  xMedia: double;
begin
  xNome := edtNome.text;
  xMedia := CalcularMedia;
  xResultado := ChecarAprovacao(xMedia);

  mmRegistro.Lines.Add('Aluno: ' + xNome + '; M�dia: ' + formatFloat('0.00',xMedia) +
  '; Situa��o: ' + xResultado);

  //Limpando os campos Inseridos
    edtNota1.Clear;
    edtNota2.Clear;
    edtNota3.Clear;
    edtNota4.Clear;
    edtNome.Clear;
end;

//Funcao que calcula a media
function TForm1.CalcularMedia: double;
var
  xNota1, xNota2, xNota3, xNota4: double;
begin
  xNota1 := strToFloat(edtNota1.text);
  xNota2 := strToFloat(edtNota2.text);
  xNota3 := strToFloat(edtNota3.text);
  xNota4 := strToFloat(edtNota4.text);

  result := (xNota1 + xNota2 + xNota3 + xNota4) / 4;
end;

//Funcao que checa a aprovacao
function TForm1.ChecarAprovacao(pMedia: double): string;

begin
  if pMedia >= 6 then
    result:= 'Aprovado'
  else if pMedia < 6 then
    result:= 'Reprovado'
end;

//Evento do botao
procedure TForm1.pnlRegistrarClick(Sender: TObject);
begin
  Self.AdicionarAluno;

  if MessageDlg('O aluno foi registrado.  Deseja continuar utilizando a aplica��o?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then

  else
  begin
    MessageDlg('Saindo da aplica��o.', mtInformation,
      [mbOk], 0, mbOk);
      form1.Close;
  end;

end;

end.
