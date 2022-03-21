unit uBanco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    MySQLConnection: TFDConnection;
    MySQLWaitCursor: TFDGUIxWaitCursor;
    MySQLDriverLink: TFDPhysMySQLDriverLink;
    MySQLTransaction: TFDTransaction;
    MySQLQuery: TFDQuery;
    MySQLDataSource: TDataSource;
    MySQLTable: TFDTable;
    procedure MySQLTableBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

  uses uContatos;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.MySQLTableBeforePost(DataSet: TDataSet);
begin
  MySQLTable.FieldByName('NOME').value := Form2.txt_NOME.Text;
  MySQLTable.FieldByName('EMAIL').value := Form2.txt_EMAIL.Text;
  MySQLTable.FieldByName('TELEFONE').value := Form2.txt_TELEFONE.Text;
  MySQLTable.FieldByName('OBSERVACOES').value := Form2.txt_OBSERVACOES.Text;
end;

end.
