unit uMainScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    imagem: TImage;
    MainMenu: TMainMenu;
    menuprincipal: TMenuItem;
    menuprincipal2: TMenuItem;
    Contatos1: TMenuItem;
    procedure menuprincipal2Click(Sender: TObject);
    procedure Contatos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

  uses uContatos;
{$R *.dfm}

procedure TForm3.Contatos1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm3.menuprincipal2Click(Sender: TObject);
begin
  Form3.Close;
end;

end.
