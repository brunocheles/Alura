program ProjetoContatos2;

uses
  Vcl.Forms,
  uContatos in 'uContatos.pas' {Form2},
  uBanco in 'uBanco.pas' {DM: TDataModule},
  uMainScreen in 'uMainScreen.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
