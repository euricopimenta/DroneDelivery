object dmDrone: TdmDrone
  OldCreateOrder = False
  Height = 131
  Width = 198
  object dataDrones: TFDMemTable
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'mtbDronesIndex1'
        Fields = 'MaxWeight'
        Options = [ixDescending]
      end>
    DetailFields = 'MaxWeight;Name'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvCheckReadOnly, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    LocalSQL = DBModule.LocalSQL
    StoreDefs = True
    Left = 40
    Top = 32
    object dataDronesName: TStringField
      DisplayWidth = 34
      FieldName = 'Name'
      LookupDataSet = DBModule.Query
    end
    object dataDronesMaxWeight: TIntegerField
      DisplayWidth = 10
      FieldName = 'MaxWeight'
    end
  end
  object dtsDrones: TDataSource
    DataSet = dataDrones
    Left = 112
    Top = 32
  end
end
