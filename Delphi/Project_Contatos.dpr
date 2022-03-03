program Project_Contatos;

uses
  Vcl.Forms,
  UContatos in 'UContatos.pas' {Form_Contatos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Contatos, Form_Contatos);
  Application.Run;
end.
