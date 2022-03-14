program ProjetoContatos2;

uses
  Vcl.Forms,
  uContatos in '..\..\..\..\OneDrive\Documentos\Embarcadero\Studio\Projects\uContatos.pas' {Form2},
  uBanco in '..\..\..\..\OneDrive\Documentos\Embarcadero\Studio\Projects\uBanco.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
