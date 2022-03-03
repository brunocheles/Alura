object DM: TDM
  OldCreateOrder = False
  Height = 323
  Width = 383
  object DBConnection: TADOConnection
    ConnectionString = 
      'Provider=ADsDSOObject;Password=admin;User ID=system;Encrypt Pass' +
      'word=False;Data Source=XE;Mode=Read;Bind Flags=0;ADSI Flag=-2147' +
      '483648'
    DefaultDatabase = 'CONTATOS_CURSO_ALURA'
    Provider = 'ADsDSOObject'
    Left = 40
    Top = 16
  end
end
