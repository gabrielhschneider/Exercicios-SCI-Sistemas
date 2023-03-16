program ProjectExercicio4;

uses
  Vcl.Forms,
  UfrmExercicio4 in 'UfrmExercicio4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
