unit UfrmExercicio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
    btnEncerrar: TButton;
    Label8: TLabel;
    procedure btnEncerrarClick(Sender: TObject);
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
  Vcl.Dialogs;

{$R *.dfm}

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

  {Limpando os campos Inseridos}
    edtNota1.Clear;
    edtNota2.Clear;
    edtNota3.Clear;
    edtNota4.Clear;
    edtNome.Clear;
end;


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

function TForm1.ChecarAprovacao(pMedia: double): string;

begin
  if pMedia >= 6 then
    result:= 'Aprovado'
  else if pMedia < 6 then
    result:= 'Reprovado'
end;

procedure TForm1.pnlRegistrarClick(Sender: TObject);
begin
{ if Dialogs .MessageDlg('Welcome to my Delphi application.  Exit now?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    Dialogs.MessageDlg('Exiting the Delphi application.', mtInformation,
      [mbOk], 0, mbOk);}
    Self.AdicionarAluno;
end;

//Encerrar Aplicacao
procedure TForm1.btnEncerrarClick(Sender: TObject);
begin
  mmRegistro.Clear;
  ShowMessage('Encerrada');
end;


end.
