unit UfrmExercicio5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type
  // matriz para armazenar nome e notas de cada aluno
  TAlunosNotas = array [1..3, 1..5] of string;

var
  matriz: TAlunosNotas;
  mediaGeral: array [1..3] of real;
  i, j: integer;
  maiorMedia, menorMedia: real;
  nomeMaiorMedia, nomeMenorMedia: string;

begin
  // solicita os nomes e notas de cada aluno
  for i := 1 to 3 do
  begin
    writeln('Entre com o nome do aluno ', i, ':');
    readln(matriz[i, 1]);

    for j := 2 to 5 do
    begin
      writeln('Entre com a nota ', j-1, ' do aluno ', i, ':');
      readln(matriz[i, j]);
      // calcula a soma das notas para cada aluno
      mediaGeral[i] := mediaGeral[i] + StrToFloat(matriz[i, j]);
    end;
    // calcula a média geral do aluno
    mediaGeral[i] := mediaGeral[i] / 4;
  end;

  // imprime os nomes e médias gerais de cada aluno
  writeln('Nomes e médias gerais:');
  for i := 1 to 3 do
  begin
    writeln(matriz[i, 1], ' - Média Geral: ', FormatFloat('0.00', mediaGeral[i]));
  end;

  // encontra o aluno com a maior e menor média geral
  maiorMedia := mediaGeral[1];
  menorMedia := mediaGeral[1];
  nomeMaiorMedia := matriz[1, 1];
  nomeMenorMedia := matriz[1, 1];
  for i := 2 to 3 do
  begin
    if mediaGeral[i] > maiorMedia then
    begin
      maiorMedia := mediaGeral[i];
      nomeMaiorMedia := matriz[i, 1];
    end;
    if mediaGeral[i] < menorMedia then
    begin
      menorMedia := mediaGeral[i];
      nomeMenorMedia := matriz[i, 1];
    end;
  end;

  // imprime o aluno com a maior e menor média geral
  writeln('Aluno com maior média geral: ', nomeMaiorMedia, ' - Média Geral: ', FormatFloat('0.00', maiorMedia));
  writeln('Aluno com menor média geral: ', nomeMenorMedia, ' - Média Geral: ', FormatFloat('0.00', menorMedia));

  readln;
end.

end.
