unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DOLAR: TEdit;
    Button1: TButton;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Comprar: TButton;
    msg: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComprarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  varReal: real;
  varNome: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  IF DOLAR.Text = '' THEN
    BEGIN
      SHOWMESSAGE('Digite um valor em Dolar.');
    END
  ELSE
    BEGIN
      COMPRAR.Enabled := TRUE;
      varReal := strToFloat(DOLAR.Text) * 5.2;
      REAL.Text := floatToStr(varReal);
    END;
end;

procedure TForm1.ComprarClick(Sender: TObject);
begin
  varNome := INPUTBOX('NOME','DIGITE SEU NOME:','');

  IF (varNome <> '')AND (DOLAR.Text <> '0') THEN
    BEGIN
      msg.caption := ansiUpperCase('Parab?ns ' + varNome + ', voc? comprou ' + DOLAR.Text + ' Dolar(es)!');
    END
  ELSE
    BEGIN
      SHOWMESSAGE('FALTA NOME OU DOLAR TEM QUE SER MAIOR QUE ZERO.');
    END;
end;

end.
