program FLM;

uses
  Vcl.Forms,
  main in 'main.pas' {MainForm},
  fl in 'fl.pas' {FL_Studio},
  history in 'history.pas' {Form6},
  Test in 'Test.pas' {Form8},
  Vcl.Themes,
  Vcl.Styles,
  SplashScreen in 'SplashScreen.pas' {SplashScreenForm},
  Music in 'Music.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Auric');
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFL_Studio, FL_Studio);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TSplashScreenForm, SplashScreenForm);
  Application.CreateForm(TForm2, Form2);
  SplashScreenForm := TSplashScreenForm.Create(Application);
  SplashScreenForm.Show;
  SplashScreenForm.Update;
  while SplashScreenForm.Timer1.Enabled do
  Application.ProcessMessages;
  SplashScreenForm.Hide;
  SplashScreenForm.Free;
  Application.Run;
end.
