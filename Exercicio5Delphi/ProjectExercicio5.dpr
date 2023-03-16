program ProjectExercicio5;

uses
  Vcl.Forms,
  UfrmExercicio5 in 'UfrmExercicio5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
