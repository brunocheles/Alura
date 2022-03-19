unit uContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txt_ID: TEdit;
    txt_NOME: TEdit;
    txt_EMAIL: TEdit;
    txt_TELEFONE: TEdit;
    Label5: TLabel;
    txt_OBSERVACOES: TMemo;
    Button1: TButton;
    Button2: TButton;
    status: TLabel;
    procedure carrega;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses uBanco;

procedure TForm2.carrega;
begin
  txt_ID.Text := DM.MySQLTable.FieldByName('ID').Value;
  txt_NOME.Text := DM.MySQLTable.FieldByName('NOME').Value;
  txt_EMAIL.Text := DM.MySQLTable.FieldByName('EMAIL').Value;
  txt_TELEFONE.Text := DM.MySQLTable.FieldByName('TELEFONE').Value;
  txt_OBSERVACOES.Text := DM.MySQLTable.FieldByName('OBSERVACOES').Value;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  DM.MySQLConnection.Params.Database := 'curso_delphi';
  DM.MySQLConnection.Connected := true;
  DM.MySQLTable.TableName := 'curso_delphi.contatos';
  DM.MySQLTable.Active := true;

  if DM.MySQLConnection.Connected = true then
  begin
    status.Caption := 'Conectado';
    carrega;
  end;
end;

{$R *.dfm}

end.
