object DMOrder: TDMOrder
  OldCreateOrder = False
  Height = 128
  Width = 167
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
    DetailFields = 'Location;Sent;Weight'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 32
    Top = 22
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
  object dtsOrders: TDataSource
    DataSet = dataOrders
    Left = 88
    Top = 22
  end
end
