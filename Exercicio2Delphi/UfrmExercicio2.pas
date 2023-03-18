unit UfrmExercicio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblRegistro: TLabel;
    Label7: TLabel;
    lblMedia: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    pnVerificar: TPanel;
    edtMaior: TEdit;
    edtMenor: TEdit;
    Label8: TLabel;
    procedure pnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure DefinirNumeros;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//Funcao que define os numeros maiores e menores
Procedure TForm1.DefinirNumeros;
var
  I            : Integer;
  xNumeroMaior : Double;
  xNumeroMenor : Double;
  xArrayNumeros: Array[1..5] of Double;
begin

  //Adicionando numeros ao array
  xArrayNumeros[1] := StrToFloat(Edit1.Text);
  xArrayNumeros[2] := StrToFloat(Edit2.Text);
  xArrayNumeros[3] := StrToFloat(Edit3.Text);
  xArrayNumeros[4] := StrToFloat(Edit4.Text);
  xArrayNumeros[5] := StrToFloat(Edit5.Text);

  //Percorrendo array e comparando menor e maior numero
  for I := 1 to Length(xArrayNumeros) do
  begin
    if I = 1 then
    begin
      xNumeroMaior := xArrayNumeros[I];
      xNumeroMenor := xArrayNumeros[I];
    end

    else
      if xArrayNumeros[I] > xNumeroMaior then
      xNumeroMaior := xArrayNumeros[I]


      else if xArrayNumeros[I] < xNumeroMenor then
      xNumeroMenor := xArrayNumeros[I];
  end;

  edtMaior.Text := xNumeroMaior.ToString;
  edtMenor.Text := xNumeroMenor.ToString;

  //Limpando campos
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;

end;

{Funcao do click do panel}
procedure TForm1.pnVerificarClick(Sender: TObject);
begin
  Self.DefinirNumeros;
end;


end.
