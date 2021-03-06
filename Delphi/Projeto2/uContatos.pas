unit uContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uBanco, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

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
    NovoDado: TButton;
    salvar: TButton;
    status: TLabel;
    Voltar: TButton;
    Avancar: TButton;
    editar: TButton;
    excluir: TButton;
    cancelar: TButton;
    txt_PROCURA: TEdit;
    procurar: TSpeedButton;
    DBGrid1: TDBGrid;
    sair: TSpeedButton;
    img_foto: TImage;
    procedure FormCreate(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
    procedure AvancarClick(Sender: TObject);
    procedure NovoDadoClick(Sender: TObject);
    procedure carrega;
    procedure bloqueia;
    procedure limpa;
    function conectar():boolean;
    procedure salvarClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
    procedure editarClick(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
    procedure procurarClick(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataModule: TDM;
    estado: integer;
  end;

var
  Form2: TForm2;

implementation

  uses uMainScreen;

procedure TForm2.bloqueia;
begin
  txt_NOME.Enabled := not txt_NOME.Enabled;
  txt_EMAIL.Enabled := not txt_EMAIL.Enabled;
  txt_TELEFONE.Enabled := not txt_TELEFONE.Enabled;
  txt_OBSERVACOES.Enabled := not txt_OBSERVACOES.Enabled;
end;

procedure TForm2.limpa;
begin
  txt_ID.Text := '';
  txt_NOME.Text := '';
  txt_EMAIL.Text := '';
  txt_TELEFONE.Text := '';
  txt_OBSERVACOES.Text := '';
  txt_NOME.SetFocus;
end;

procedure TForm2.sairClick(Sender: TObject);
begin
  Form2.Hide;
  Form3.Show;
end;

procedure TForm2.salvarClick(Sender: TObject);
begin
  DataModule.MySQLTable.post;
  bloqueia;
  showmessage('Dados Gravados');
end;

procedure TForm2.cancelarClick(Sender: TObject);
begin
  limpa;
  if (estado = 1) then
    DataModule.MySQLTable.Prior;
  carrega;
  bloqueia;
  estado := 0;
end;

procedure TForm2.carrega;
begin

  txt_ID.Text := DataModule.MySQLTable.FieldByName('ID').Value;
  txt_NOME.Text := DataModule.MySQLTable.FieldByName('NOME').Value;
  txt_EMAIL.Text := DataModule.MySQLTable.FieldByName('EMAIL').Value;
  txt_TELEFONE.Text := DataModule.MySQLTable.FieldByName('TELEFONE').Value;
  if (DataModule.MySQLTable.FieldByName('OBSERVACOES').Value = NULL) then
    txt_OBSERVACOES.Text := ''
  else
    txt_OBSERVACOES.Text := DataModule.MySQLTable.FieldByName('OBSERVACOES').Value;
end;

function TForm2.conectar(): boolean;
begin
  DataModule.MySQLConnection.Params.Database := 'curso_delphi';
  DataModule.MySQLConnection.Connected := true;
  DataModule.MySQLTable.TableName := 'curso_delphi.contatos';
  DataModule.MySQLTable.Active := true;

  if (DataModule.MySQLConnection.Connected = true) then
  begin
    Result := true;
  end;
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
  carrega;
end;

procedure TForm2.editarClick(Sender: TObject);
begin
  estado := 2;
  bloqueia;
  DataModule.MySQLTable.Edit;
end;

procedure TForm2.excluirClick(Sender: TObject);
begin
  DataModule.MySQLTable.Delete;
  carrega;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  resultado: boolean;
begin
  DataModule := TDM.Create(nil);
  resultado := conectar();
  if (resultado = true) then
  begin
    status.Caption := 'Conectado';
    carrega;
  end;
end;

procedure TForm2.NovoDadoClick(Sender: TObject);
begin
  estado := 1;
  DataModule.MySQLTable.Insert;
  bloqueia;
  limpa;
end;

procedure TForm2.procurarClick(Sender: TObject);
begin
  if (not DataModule.MySQLTable.FindKey([txt_PROCURA.Text])) then
    showmessage('N?o encontrado')
  else
    carrega;
end;

procedure TForm2.VoltarClick(Sender: TObject);
begin
  DataModule.MySQLTable.Prior;
  carrega;
end;

procedure TForm2.AvancarClick(Sender: TObject);
begin
  DataModule.MySQLTable.Next;
  carrega;
end;

{$R *.dfm}

end.
