unit Music;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.MPlayer,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
      var
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses main;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.mediaplayer1.FileName:=(ExtractFilePath(paramStr(0))+'full.wav');
Form1.mediaplayer1.Open;
Form1.mediaplayer1.Play;
end;

end.
