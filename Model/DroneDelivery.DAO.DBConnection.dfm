object DBModule: TDBModule
  OldCreateOrder = False
  Height = 306
  Width = 262
  object dataOrders: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Location'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Weight'
        DataType = ftInteger
      end
      item
        Name = 'Sent'
        DataType = ftBoolean
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
    Left = 16
    Top = 152
    object OrderLocation: TStringField
      DisplayWidth = 34
      FieldName = 'Location'
    end
    object dataOrdersWeight: TIntegerField
      DisplayWidth = 10
      FieldName = 'Weight'
    end
    object dataOrdersSent: TBooleanField
      DisplayWidth = 4
      FieldName = 'Sent'
      Visible = False
    end
  end
  object DriverLink: TFDPhysSQLiteDriverLink
    Left = 14
    Top = 14
  end
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 70
    Top = 14
  end
  object LocalSQL: TFDLocalSQL
    DisableControls = False
    Connection = Connection
    DataSets = <
      item
        Name = 'Drones'
      end
      item
        DataSet = dataOrders
        Name = 'Orders'
      end
      item
        DataSet = dataTrips
        Name = 'Trips'
      end>
    Left = 131
    Top = 14
  end
  object Query: TFDQuery
    LocalSQL = LocalSQL
    Connection = Connection
    SQL.Strings = (
      'Select * from Drones')
    Left = 187
    Top = 14
  end
  object dataTrips: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 14
    Top = 208
    object dataTripsId: TSmallintField
      FieldName = 'Id'
    end
    object dataTripsCount: TSmallintField
      FieldName = 'tripCount'
    end
    object StringField2: TStringField
      FieldName = 'Drone'
    end
    object dataTripsLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
  end
  object dtsOrders: TDataSource
    DataSet = dataOrders
    Left = 72
    Top = 152
  end
  object dtsTrips: TDataSource
    DataSet = dataTrips
    Left = 72
    Top = 208
  end
end
