object DBModule: TDBModule
  OldCreateOrder = True
  Height = 205
  Width = 248
  object DriverLink: TFDPhysSQLiteDriverLink
    Left = 14
    Top = 14
  end
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Connected = True
    Left = 70
    Top = 14
  end
  object LocalSQL: TFDLocalSQL
    MultipleCursors = False
    DisableControls = False
    Connection = Connection
    Active = True
    DataSets = <
      item
        DataSet = dmDrone.dataDrones
        Name = 'Drones'
      end
      item
        DataSet = DMOrder.dataOrders
        Name = 'Orders'
      end>
    Left = 131
    Top = 14
  end
  object Query: TFDQuery
    DetailFields = 'MaxWeight;Name'
    LocalSQL = LocalSQL
    Connection = Connection
    SQL.Strings = (
      'select 1')
    Left = 187
    Top = 14
  end
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
    Left = 14
    Top = 88
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
    Left = 72
    Top = 88
  end
end
