program ProjectExercicio3;

uses
  Vcl.Forms,
  UfrmExercicio3 in 'UfrmExercicio3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
