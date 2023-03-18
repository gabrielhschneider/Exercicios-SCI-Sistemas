program ProgramExercicio5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  //matriz para armazenar nome e notas
  TAlunosNotas = array [1..3, 1..5] of string;

var
  xMatriz: TAlunosNotas;
  xMediaGeral: array [1..3] of real;
  i, j: integer;
  xMaiorMedia, xMenorMedia: real;
  xNomeMaiorMedia, xNomeMenorMedia: string;

begin
  //solicita os nomes e notas
  for i := 1 to 3 do
  begin
    writeln('Entre com o nome do aluno ', i, ':');
    readln(xMatriz[i, 1]);

    for j := 2 to 5 do
    begin
      writeln('Entre com a nota ', j-1, ' do aluno ', i, ':');
      readln(xMatriz[i, j]);
      //calcula a soma das notas
      xMediaGeral[i] := xMediaGeral[i] + StrToFloat(xMatriz[i, j]);
    end;
    // calcula a média geral do aluno
    xMediaGeral[i] := xMediaGeral[i] / 4;
  end;

  // imprime os nomes e médias gerais de cada aluno
  writeln('Nomes e médias gerais:');
  for i := 1 to 3 do
  begin
    writeln(xMatriz[i, 1], ' - Média Geral: ', FormatFloat('0.00', xMediaGeral[i]));
  end;

  // encontra o aluno com a maior e menor média
  xMaiorMedia     := xMediaGeral[1];
  xMenorMedia     := xMediaGeral[1];
  xNomeMaiorMedia := xMatriz[1, 1];
  xNomeMenorMedia := xMatriz[1, 1];

  for i := 2 to 3 do
  begin
    if xMediaGeral[i] > xMaiorMedia then
    begin
      xMaiorMedia     := xMediaGeral[i];
      xNomeMaiorMedia := xMatriz[i, 1];
    end;
    if xMediaGeral[i] < xMenorMedia then
    begin
      xMenorMedia     := xMediaGeral[i];
      xNomeMenorMedia := xMatriz[i, 1];
    end;
  end;

  // imprime o aluno com a maior e menor média
  writeln('Aluno com maior média: ', xNomeMaiorMedia, ' - Média Geral: ', FormatFloat('0.00', xMaiorMedia));
  writeln('Aluno com menor média: ', xNomeMenorMedia, ' - Média Geral: ', FormatFloat('0.00', xMenorMedia));

  readln;
end.

end.
