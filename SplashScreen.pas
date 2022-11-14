unit SplashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TSplashScreenForm = class(TForm)
    Timer1: TTimer;
    Shape1: TShape;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashScreenForm: TSplashScreenForm;

implementation

{$R *.dfm}

procedure TSplashScreenForm.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled:=false;
end;

end.
