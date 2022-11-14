unit history;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.OleCtrls, SHDocVw;

type
  TForm6 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    FLStudio201: TMenuItem;
    Image1: TImage;
    WebBrowser1: TWebBrowser;
    procedure N2Click(Sender: TObject);
    procedure FLStudio201Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses main, fl;

procedure TForm6.FLStudio201Click(Sender: TObject);
begin
Form6.hide;
FL_Studio.show;
end;



procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.close;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(paramStr(0))+'история.htm');
end;

procedure TForm6.N2Click(Sender: TObject);
begin
Form6.hide;
MainForm.show;
end;

procedure TForm6.N6Click(Sender: TObject);
begin
Color := RGB(Random(256), Random(256), Random(256));
end;

end.
