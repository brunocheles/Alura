object Form_Contatos: TForm_Contatos
  Left = 0
  Top = 0
  Caption = 'Gest'#227'o de Contatos'
  ClientHeight = 329
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object BDConexão: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\bruno\OneDrive\Documentos\GitHub\Alura\Delphi\' +
        'Win32\Debug\assets\Contatos.accdb'
      'Pooled=True'
      'ConnectionDef=Access_Demo')
    LoginPrompt = False
    Left = 192
    Top = 144
  end
end
