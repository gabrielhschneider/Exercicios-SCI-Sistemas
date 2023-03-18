unit UfrmExercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    mmPar: TMemo;
    pnVerificar: TPanel;
    lblRegistro: TLabel;
    mmImpar: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    lblMedia: TLabel;
    Label9: TLabel;
    procedure pnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure DefinirNumeros;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{Funcao que Define os numeros Impares e Pares e joga na tela}
Procedure TForm1.DefinirNumeros;
var
  I, xNumero : Integer;
  xMedia     : Double;
  xArrayNumeros: Array[1..5] of Integer;
begin

  xMedia := 0;
  xNumero:= 0;

  //Adicionando numero ao array
  xArrayNumeros[1] := StrToInt(Edit1.Text);
  xArrayNumeros[2] := StrToInt(Edit2.Text);
  xArrayNumeros[3] := StrToInt(Edit3.Text);
  xArrayNumeros[4] := StrToInt(Edit4.Text);
  xArrayNumeros[5] := StrToInt(Edit5.Text);

  //Perconrrendo o array e separando numeros pares e impares
  for I := 1 to Length(xArrayNumeros) do
  begin

    if ((xArrayNumeros[I] mod 2) = 0) then
    begin
      mmPar.Lines.Add(xArrayNumeros[I].ToString);
      xNumero := xNumero + xArrayNumeros[I];
    end

    else
    begin
       mmImpar.Lines.Add(xArrayNumeros[I].ToString);
       xNumero := xNumero + xArrayNumeros[I];
    end
  end;

  //Limpando os campos inseridos
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;

  xMedia := xNumero / Length(xArrayNumeros);
  lblMedia.Caption := xMedia.ToString;

end;

{Funcao do click do panel}
procedure TForm1.pnVerificarClick(Sender: TObject);
begin
  mmPar.Clear;
  mmImpar.Clear;
  Self.DefinirNumeros;
end;

end.

