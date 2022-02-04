object DBModule: TDBModule
  OldCreateOrder = False
  Height = 83
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
      end
      item
        DataSet = Query
        Name = 'Query'
      end>
    Left = 131
    Top = 14
  end
  object Query: TFDQuery
    Active = True
    LocalSQL = LocalSQL
    Connection = Connection
    SQL.Strings = (
      'select 1')
    Left = 187
    Top = 14
  end
end
