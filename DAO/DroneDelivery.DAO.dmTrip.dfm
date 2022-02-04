object DMTrip: TDMTrip
  OldCreateOrder = False
  Height = 105
  Width = 165
  object dataTrips: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftSmallint
      end
      item
        Name = 'tripCount'
        DataType = ftSmallint
      end
      item
        Name = 'Drone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Location'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 30
    Top = 24
    object dataTripsId: TSmallintField
      FieldName = 'Id'
    end
    object dataTripsCount: TSmallintField
      FieldName = 'tripCount'
    end
    object dataTripsDrone: TStringField
      FieldName = 'Drone'
    end
    object dataTripsLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
  end
  object dtsTrips: TDataSource
    DataSet = dataTrips
    Left = 88
    Top = 24
  end
end
