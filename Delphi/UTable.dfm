object Tabela: TTabela
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ConexaoOracle: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    HostName = 'localhost'
    Port = 1521
    Database = 'xe'
    User = 'system'
    Password = 'admin'
    Protocol = 'oracle'
    LibraryLocation = 'C:\app\oraclexe\product\21c\dbhomeXE\bin\oci.dll'
    Left = 24
    Top = 8
  end
end
