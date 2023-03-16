program ProjectExercicio2;

uses
  Vcl.Forms,
  UfrmExercicio2 in 'UfrmExercicio2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
