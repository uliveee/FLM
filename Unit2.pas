unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw;

type
  TForm2 = class(TForm)
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses main;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(paramStr(0))+'Справка.htm');
end;

end.
