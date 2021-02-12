object DM: TDM
  OldCreateOrder = False
  Height = 431
  Width = 532
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\Pastas\Aplica'#231#245'es\Delphi\ControleDeDinheiro\Sistema.' +
        'sdb'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object LoginQuery: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 24
    Top = 88
    object LoginQueryIDUSUARIO: TFDAutoIncField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object LoginQueryLogin: TWideMemoField
      FieldName = 'Login'
      Origin = 'Login'
      Required = True
      BlobType = ftWideMemo
    end
    object LoginQuerySenha: TWideMemoField
      FieldName = 'Senha'
      Origin = 'Senha'
      Required = True
      BlobType = ftWideMemo
    end
  end
end
