unit fl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.MPlayer;

type
  TFL_Studio = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DAW1: TMenuItem;
    N7: TMenuItem;
    Image1: TImage;
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    MediaPlayer1: TMediaPlayer;
    procedure N2Click(Sender: TObject);
    procedure DAW1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FL_Studio: TFL_Studio;

  Nvern, ball: integer;

implementation

{$R *.dfm}

uses history, main, Test, Music;

procedure TFL_Studio.Button1Click(Sender: TObject);
begin
FL_Studio.mediaplayer1.FileName:=(ExtractFilePath(paramStr(0))+'drum.wav');
FL_Studio.mediaplayer1.Open;
FL_Studio.mediaplayer1.Play;

end;

procedure TFL_Studio.Button2Click(Sender: TObject);
begin
FL_Studio.mediaplayer1.FileName:=(ExtractFilePath(paramStr(0))+'bass.wav');
FL_Studio.mediaplayer1.Open;
FL_Studio.mediaplayer1.Play;
end;

procedure TFL_Studio.Button3Click(Sender: TObject);
begin
FL_Studio.mediaplayer1.FileName:=(ExtractFilePath(paramStr(0))+'melody.wav');
FL_Studio.mediaplayer1.Open;
FL_Studio.mediaplayer1.Play;
end;

procedure TFL_Studio.Button4Click(Sender: TObject);
begin
FL_Studio.mediaplayer1.FileName:=(ExtractFilePath(paramStr(0))+'eff.wav');
FL_Studio.mediaplayer1.Open;
FL_Studio.mediaplayer1.Play;
end;

procedure TFL_Studio.Button5Click(Sender: TObject);
begin
FL_Studio.mediaplayer1.FileName:=(ExtractFilePath(paramStr(0))+'noeff.wav');
FL_Studio.mediaplayer1.Open;
FL_Studio.mediaplayer1.Play;
end;

procedure TFL_Studio.Button6Click(Sender: TObject);
begin
Application.CreateForm(TForm1, Form1);
FL_Studio.hide;
Form1.show;
FL_Studio.mediaplayer1.stop;
end;

procedure TFL_Studio.DAW1Click(Sender: TObject);
begin
FL_Studio.hide;
Form6.show;
end;

procedure TFL_Studio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.close;
end;

procedure TFL_Studio.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(paramStr(0))+'ќЅучение.htm');
end;

procedure TFL_Studio.Image2Click(Sender: TObject);
begin
FL_Studio.hide;

end;

procedure TFL_Studio.Image8Click(Sender: TObject);
begin
FL_Studio.hide;
MainForm.show;
end;

procedure TFL_Studio.N2Click(Sender: TObject);
begin
FL_Studio.hide;
MainForm.show;
end;

procedure TFL_Studio.N6Click(Sender: TObject);
begin
Color := RGB(Random(256), Random(256), Random(256));
end;

procedure TFL_Studio.N7Click(Sender: TObject);
begin
FL_Studio.Hide;
Form8.free;
Application.CreateForm(TForm8, Form8);
Form8.Show;
    Form8.Caption := '“ест по истории Fl Studio 20';
    Form8.button1.Enabled:=True;
    AssignFile(f , ExtractFilePath(paramStr(0))+'тест.txt');
    reset(f); //ќткрываем файл дл€ чтени€
    readln(f,s); //—читываем первую строку из файла
    ball:=0;
    repeat
      if (s[1]='-') then
        begin //≈сли первый символ строки С-С значит это вопрос
        delete(s,1,1);
        Form8.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin //≈сли перв символ С*Т значит это номер верного ответа
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      Form8.RadioGroup1.Items.Add(s); //»наче это вариант ответа
      readln(f,s); //—читываем следующую строку из файла
      until (s[1]='-') or (Eof(f));
  end;
end.
