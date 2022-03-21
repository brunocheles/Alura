object DM: TDM
  OldCreateOrder = False
  Height = 256
  Width = 344
  object MySQLConnection: TFDConnection
    Params.Strings = (
      'Database=curso_delphi'
      'User_Name=brunocheles'
      'Password=Br@254910'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object MySQLWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 24
  end
  object MySQLDriverLink: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Program Files (x86)\MySQL\MySQL Server 5.7\lib\libmysql.dll'
    Left = 272
    Top = 24
  end
  object MySQLTransaction: TFDTransaction
    Connection = MySQLConnection
    Left = 32
    Top = 104
  end
  object MySQLQuery: TFDQuery
    Active = True
    Connection = MySQLConnection
    SQL.Strings = (
      'SELECT * FROM contatos;')
    Left = 152
    Top = 104
  end
  object MySQLDataSource: TDataSource
    DataSet = MySQLTable
    Left = 272
    Top = 104
  end
  object MySQLTable: TFDTable
    BeforePost = MySQLTableBeforePost
    Connection = MySQLConnection
    TableName = 'curso_delphi.contatos'
    Left = 152
    Top = 184
  end
end
