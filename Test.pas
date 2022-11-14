unit Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg;

type
  TForm8 = class(TForm)
    MainMenu1: TMainMenu;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
   f: text;
  s: string;
  Nvern, ball: integer;

implementation

{$R *.dfm}

uses main;
procedure TForm8.Button1Click(Sender: TObject);
begin
begin
if (RadioGroup1.ItemIndex>-1) and (not Eof(f)) then
  begin
    if RadioGroup1.ItemIndex = Nvern-1 then
      begin
      ball:=ball+1; //���� ��������� ������� ������������� ������ ������� ������, �� ���� ������������ � ��������� ���� ��� ���������� �������
      Label1.Caption := '���������!';
      end
    else
      Label1.Caption := '��������� ������';
  RadioGroup1.Items.Clear;
  Repeat
    if (s[1]='-') then
    begin
      delete(s,1,1);
      RadioGroup1.Caption:=s;
    end
    else
    if s[1]='*' then
    begin
      delete(s,1,1);
      Nvern:=StrToInt(s);
    end
    else
    RadioGroup1.Items.Add(s);
    readln(f,s);
  until (s[1]='-') or (Eof(f));
  end
//���� ����� ����� ���������, ������ ������� �����������
  Else if Eof(f) then
  begin
    delete(s,1,1);
    Nvern:=StrToInt(s);
    if RadioGroup1.ItemIndex = Nvern-1 then
      ball:=ball+1;
    CloseFile(f);
    button1.Enabled := False;
    Application.Title := '���������';
    if MessageDlg('���� ���������� ������: ' + IntToStr(ball), mtCustom, [mbOK], 0) = mrOK then
    MainForm.Show;
    Form8.Hide;
end;
end;
end;
procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MainForm.close;
end;

procedure TForm8.FormDestroy(Sender: TObject);
begin
Form8 := nil;
end;

end.
