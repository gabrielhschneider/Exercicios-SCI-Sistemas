unit UfrmExercicio4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    pnVerificar: TPanel;
    GroupBox1: TGroupBox;
    lblPosicao3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    procedure pnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    procedure DefinirNumero;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//Funcao que define numero na posicao 3 do array
procedure TForm1.DefinirNumero;
var
  I      : Integer;
  xNumero: Integer;
  xArrayNumeros: Array[1..5] of Double;
begin

  xNumero:= 0;

  //Adiciona numeros ao array
  xArrayNumeros[1] := StrToFloat(Edit1.Text);
  xArrayNumeros[2] := StrToFloat(Edit2.Text);
  xArrayNumeros[3] := StrToFloat(Edit3.Text);
  xArrayNumeros[4] := StrToFloat(Edit4.Text);
  xArrayNumeros[5] := StrToFloat(Edit5.Text);

  lblPosicao3.Caption := 'Posicao [3] = ' +  xArrayNumeros[3].ToString;

  //Limpa os campos
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  edit5.Clear;
end;
procedure TForm1.pnVerificarClick(Sender: TObject);
begin
  Self.DefinirNumero;
end;

end.
