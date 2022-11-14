unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.MPlayer;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    FLStudio201: TMenuItem;
    DAW1: TMenuItem;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure N2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FLStudio201Click(Sender: TObject);
    procedure DAW1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  Value: Byte = 0;

implementation

{$R *.dfm}

uses fl, history, Unit2;

procedure TMainForm.DAW1Click(Sender: TObject);
begin
MainForm.hide;
Form6.show;
end;

procedure TMainForm.FLStudio201Click(Sender: TObject);
begin
MainForm.hide;
FL_Studio.show;
end;

procedure TMainForm.Image3Click(Sender: TObject);
begin
MainForm.hide;
FL_Studio.show;
end;

procedure TMainForm.Label3Click(Sender: TObject);
begin
MainForm.hide;
FL_Studio.show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
Close;
end;
procedure TMainForm.N3Click(Sender: TObject);
begin
MainForm.hide;
Form2.show;
end;

end.
