object ServerMethods2: TServerMethods2
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 347
  Width = 505
  object dsp: TDataSetProvider
    DataSet = UniQuery1
    ResolveToDataSet = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspUpdateError
    Left = 264
    Top = 24
  end
  object UniConnection1: TUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Database = 'A006'
    Username = 'sa'
    Server = 'LAPTOP-47BTMKR7'
    Connected = True
    Left = 32
    Top = 24
    EncryptedPassword = 'CEFFCDFFCCFFCBFFCAFFC9FF'
  end
  object UniQuery1: TUniQuery
    UpdatingTable = 't_user'
    KeyFields = 'UserID'
    Connection = UniConnection1
    SQL.Strings = (
      
        'select b.Department,a.* from [t_user] a join Department b on a.D' +
        'epartmentID =b.DepartmentID')
    Options.RequiredFields = False
    Left = 104
    Top = 24
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 176
    Top = 24
  end
end
