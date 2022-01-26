object frm_Main: Tfrm_Main
  Left = 0
  Top = 0
  Caption = 'Drone Delivery - Eurico Pimenta'
  ClientHeight = 626
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 31
    Top = 36
    Width = 346
    Height = 228
    BevelOuter = bvNone
    Color = 16768941
    ParentBackground = False
    TabOrder = 0
    object edtDroneName: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 35
      Width = 233
      Height = 29
      Align = alLeft
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 0
      TextHint = ' Name'
    end
    object edtDroneMaxWeight: TEdit
      AlignWithMargins = True
      Left = 242
      Top = 35
      Width = 70
      Height = 29
      Align = alLeft
      AutoSize = False
      BorderStyle = bsNone
      NumbersOnly = True
      TabOrder = 1
      TextHint = ' MaxWeight'
    end
    object Panel2: TPanel
      Left = 0
      Top = 67
      Width = 346
      Height = 161
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object dbgDrones: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 340
        Height = 123
        Align = alClient
        BorderStyle = bsNone
        DataSource = dtsDrones
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel10: TPanel
        Left = 0
        Top = 129
        Width = 346
        Height = 32
        Align = alBottom
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = 8273429
        ParentBackground = False
        TabOrder = 1
        object btnPopulateDrones: TSpeedButton
          Left = 256
          Top = 0
          Width = 90
          Height = 32
          Align = alRight
          Caption = 'Populate'
          OnClick = btnPopulateDronesClick
          ExplicitTop = 3
        end
        object btnClearDrones: TSpeedButton
          Left = 166
          Top = 0
          Width = 90
          Height = 32
          Align = alRight
          Caption = 'Clear'
          OnClick = btnClearDronesClick
          ExplicitLeft = 160
          ExplicitTop = 3
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 346
      Height = 32
      Align = alTop
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Color = 8273429
      ParentBackground = False
      TabOrder = 3
      object Label4: TLabel
        Left = 0
        Top = 0
        Width = 346
        Height = 32
        Align = alClient
        Alignment = taCenter
        Caption = 'Drones'
        Color = 8339477
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 64
        ExplicitHeight = 25
      end
    end
    object btnAddDrone: TButton
      Left = 314
      Top = 32
      Width = 32
      Height = 35
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Style = bsCommandLink
      TabOrder = 4
      WordWrap = True
      OnClick = btnAddDroneClick
    end
  end
  object Panel4: TPanel
    Left = 34
    Top = 282
    Width = 343
    Height = 336
    BevelOuter = bvNone
    Color = 1556970
    ParentBackground = False
    TabOrder = 1
    object edtLocation: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 35
      Width = 230
      Height = 29
      Align = alLeft
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 0
      TextHint = ' Location'
    end
    object edtWeight: TEdit
      AlignWithMargins = True
      Left = 239
      Top = 35
      Width = 60
      Height = 29
      Align = alLeft
      AutoSize = False
      BorderStyle = bsNone
      NumbersOnly = True
      TabOrder = 1
      TextHint = ' Weight'
    end
    object btnAddOrder: TButton
      Left = 305
      Top = 31
      Width = 42
      Height = 43
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Style = bsCommandLink
      TabOrder = 2
      WordWrap = True
      OnClick = btnAddOrderClick
    end
    object Panel6: TPanel
      Left = 0
      Top = 67
      Width = 343
      Height = 269
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object dbgOrders: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 337
        Height = 231
        Align = alClient
        BorderStyle = bsNone
        DataSource = dtsOrders
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object Panel11: TPanel
        Left = 0
        Top = 237
        Width = 343
        Height = 32
        Align = alBottom
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = 1618683
        ParentBackground = False
        TabOrder = 1
        object btnPopulateOrders: TSpeedButton
          Left = 253
          Top = 0
          Width = 90
          Height = 32
          Align = alRight
          Caption = 'Populate'
          OnClick = btnPopulateOrdersClick
          ExplicitLeft = 259
          ExplicitTop = 3
        end
        object btnClearOrders: TSpeedButton
          Left = 163
          Top = 0
          Width = 90
          Height = 32
          Align = alRight
          Caption = 'Clear'
          OnClick = btnClearOrdersClick
          ExplicitLeft = 256
          ExplicitTop = 3
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 343
      Height = 32
      Align = alTop
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Color = 1549288
      ParentBackground = False
      TabOrder = 4
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 343
        Height = 32
        Align = alClient
        Alignment = taCenter
        Caption = 'Orders'
        Color = 1618683
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 60
        ExplicitHeight = 25
      end
    end
  end
  object Panel7: TPanel
    Left = 406
    Top = 33
    Width = 457
    Height = 582
    Color = 8273429
    ParentBackground = False
    TabOrder = 2
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 455
      Height = 41
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Color = 8339477
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 455
        Height = 41
        Align = alClient
        Alignment = taCenter
        Caption = 'Trips'
        Color = 8470549
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 43
        ExplicitHeight = 25
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 540
      Width = 455
      Height = 41
      Align = alBottom
      BevelEdges = [beTop]
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 8273429
      ParentBackground = False
      TabOrder = 1
      object btnGenerateTrips: TButton
        Left = 358
        Top = 0
        Width = 97
        Height = 39
        Align = alRight
        Caption = 'Generate Trips'
        TabOrder = 0
        OnClick = btnGenerateTripsClick
      end
    end
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 45
      Width = 449
      Height = 492
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 2
    end
  end
  object mtbDrones: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MaxWeight'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'mtbDronesIndex1'
        Fields = 'MaxWeight'
        Options = [ixDescending]
      end>
    Indexes = <
      item
        Active = True
        Name = 'mtbDronesIndex1'
        Fields = 'MaxWeight'
        Options = [soDescending]
      end>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvCheckReadOnly, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    LocalSQL = LocalSQL
    StoreDefs = True
    Left = 328
    Top = 8
    object mtbDronesName: TStringField
      DisplayWidth = 34
      FieldName = 'Name'
    end
    object mtbDronesMaxWeight: TIntegerField
      DisplayWidth = 10
      FieldName = 'MaxWeight'
    end
  end
  object mtbOrders: TFDMemTable
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
    Left = 328
    Top = 264
    object OrderLocation: TStringField
      DisplayWidth = 34
      FieldName = 'Location'
    end
    object mtbOrdersWeight: TIntegerField
      DisplayWidth = 10
      FieldName = 'Weight'
    end
    object mtbOrdersSent: TBooleanField
      DisplayWidth = 4
      FieldName = 'Sent'
      Visible = False
    end
  end
  object dtsDrones: TDataSource
    DataSet = mtbDrones
    Left = 256
    Top = 8
  end
  object dtsOrders: TDataSource
    DataSet = mtbOrders
    Left = 264
    Top = 264
  end
  object mtbTrips: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 800
    Top = 80
    object mtbTripsId: TSmallintField
      FieldName = 'Id'
    end
    object mtbTripsCount: TSmallintField
      FieldName = 'tripCount'
    end
    object StringField2: TStringField
      FieldName = 'Drone'
    end
    object mtbTripsLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
  end
  object LocalSQL: TFDLocalSQL
    DisableControls = False
    Connection = Connection
    DataSets = <
      item
        DataSet = mtbDrones
        Name = 'Drones'
      end
      item
        DataSet = mtbOrders
        Name = 'Orders'
      end
      item
        DataSet = mtbTrips
        Name = 'Trips'
      end>
    Left = 544
    Top = 472
  end
  object Query: TFDQuery
    LocalSQL = LocalSQL
    Connection = Connection
    SQL.Strings = (
      'Select * from Drones')
    Left = 606
    Top = 473
  end
  object DriverLink: TFDPhysSQLiteDriverLink
    Left = 422
    Top = 473
  end
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 478
    Top = 473
  end
end
