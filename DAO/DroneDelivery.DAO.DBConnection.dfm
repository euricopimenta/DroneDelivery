object DBModule: TDBModule
  OldCreateOrder = True
  Height = 92
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
    Active = True
    DetailFields = 'MaxWeight;Name'
    LocalSQL = LocalSQL
    Connection = Connection
    SQL.Strings = (
      'select 1')
    Left = 187
    Top = 14
  end
end
