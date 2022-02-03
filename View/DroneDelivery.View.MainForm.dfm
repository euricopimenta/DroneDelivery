object frm_Main: Tfrm_Main
  Left = 0
  Top = 0
  Caption = 'Drone Delivery - Eurico Pimenta'
  ClientHeight = 672
  ClientWidth = 931
  Color = cl3DLight
  DefaultMonitor = dmPrimary
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Padding.Left = 15
  Padding.Top = 15
  Padding.Right = 15
  Padding.Bottom = 15
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object pnlMainLeft: TPanel
    Left = 15
    Top = 15
    Width = 361
    Height = 642
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 41
    ExplicitHeight = 631
    object pnlDrones: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 355
      Height = 307
      Margins.Bottom = 10
      Align = alClient
      BevelWidth = 2
      Color = 16768941
      ParentBackground = False
      TabOrder = 0
      object Panel2: TPanel
        Left = 2
        Top = 70
        Width = 351
        Height = 235
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 68
        ExplicitWidth = 355
        ExplicitHeight = 239
        object dbgDrones: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 345
          Height = 197
          Align = alClient
          BorderStyle = bsNone
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
          Top = 203
          Width = 351
          Height = 32
          Align = alBottom
          BevelEdges = [beBottom]
          BevelOuter = bvNone
          Color = 8273429
          ParentBackground = False
          TabOrder = 1
          ExplicitTop = 207
          ExplicitWidth = 355
          object btnPopulateDrones: TSpeedButton
            Left = 261
            Top = 0
            Width = 90
            Height = 32
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Populate'
            OnClick = btnPopulateDronesClick
            ExplicitLeft = 256
            ExplicitTop = 3
          end
          object btnClearDrones: TSpeedButton
            Left = 171
            Top = 0
            Width = 90
            Height = 32
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Clear'
            OnClick = btnClearDronesClick
            ExplicitLeft = 125
            ExplicitTop = 3
          end
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 351
        Height = 32
        Align = alTop
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = 8273429
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 355
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 351
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
      object Panel1: TPanel
        Left = 2
        Top = 34
        Width = 351
        Height = 36
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 2
        ExplicitLeft = 0
        ExplicitTop = 32
        ExplicitWidth = 355
        object edtDroneName: TEdit
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 229
          Height = 28
          Align = alLeft
          AutoSize = False
          BorderStyle = bsNone
          TabOrder = 0
          TextHint = ' Name'
        end
        object edtDroneMaxWeight: TEdit
          AlignWithMargins = True
          Left = 239
          Top = 4
          Width = 74
          Height = 28
          Align = alLeft
          AutoSize = False
          BorderStyle = bsNone
          NumbersOnly = True
          TabOrder = 1
          TextHint = ' MaxWeight'
        end
        object btnAddDrone: TButton
          Left = 316
          Top = 1
          Width = 40
          Height = 34
          Cursor = crHandPoint
          Align = alLeft
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageAlignment = iaCenter
          ParentFont = False
          Style = bsCommandLink
          TabOrder = 2
          WordWrap = True
          OnClick = btnAddDroneClick
        end
      end
    end
    object pnlOrders: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 323
      Width = 355
      Height = 316
      Align = alBottom
      BevelWidth = 2
      Color = 1556970
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 4
      ExplicitTop = 351
      ExplicitWidth = 353
      object Panel6: TPanel
        Left = 2
        Top = 34
        Width = 351
        Height = 280
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 32
        ExplicitWidth = 337
        ExplicitHeight = 243
        object dbgOrders: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 39
          Width = 345
          Height = 206
          Align = alClient
          BorderStyle = bsNone
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
          Top = 248
          Width = 351
          Height = 32
          Align = alBottom
          BevelEdges = [beBottom]
          BevelOuter = bvNone
          Color = 1618683
          ParentBackground = False
          TabOrder = 1
          ExplicitTop = 211
          ExplicitWidth = 305
          object btnPopulateOrders: TSpeedButton
            Left = 261
            Top = 0
            Width = 90
            Height = 32
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Populate'
            OnClick = btnPopulateOrdersClick
            ExplicitLeft = 259
            ExplicitTop = 3
          end
          object btnClearOrders: TSpeedButton
            Left = 171
            Top = 0
            Width = 90
            Height = 32
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Clear'
            OnClick = btnClearOrdersClick
            ExplicitLeft = 256
            ExplicitTop = 3
          end
        end
        object pnlOrderEdits: TPanel
          Left = 0
          Top = 0
          Width = 351
          Height = 36
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Panel1'
          TabOrder = 2
          ExplicitWidth = 353
          object btnAddOrder: TButton
            Left = 309
            Top = 0
            Width = 42
            Height = 36
            Cursor = crHandPoint
            Align = alRight
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ImageAlignment = iaCenter
            ParentFont = False
            Style = bsCommandLink
            TabOrder = 0
            WordWrap = True
            OnClick = btnAddOrderClick
            ExplicitLeft = 263
            ExplicitHeight = 33
          end
          object edtLocation: TEdit
            AlignWithMargins = True
            Left = 2
            Top = 3
            Width = 238
            Height = 30
            Align = alRight
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 1
            TextHint = ' Location'
            ExplicitLeft = 4
            ExplicitHeight = 27
          end
          object edtWeight: TEdit
            AlignWithMargins = True
            Left = 246
            Top = 3
            Width = 60
            Height = 30
            Align = alRight
            AutoSize = False
            BorderStyle = bsNone
            NumbersOnly = True
            TabOrder = 2
            TextHint = ' Weight'
            ExplicitLeft = 232
            ExplicitHeight = 27
          end
        end
      end
      object pnlOrderTitle: TPanel
        Left = 2
        Top = 2
        Width = 351
        Height = 32
        Align = alTop
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = 1549801
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 305
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 351
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
  end
  object pnlMainClient: TPanel
    Left = 376
    Top = 15
    Width = 540
    Height = 642
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 313
    ExplicitTop = 41
    ExplicitWidth = 569
    ExplicitHeight = 631
    object pnlTrips: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 534
      Height = 636
      Align = alClient
      BevelWidth = 2
      Color = 8273429
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 561
      ExplicitHeight = 623
      object Panel8: TPanel
        Left = 2
        Top = 2
        Width = 530
        Height = 41
        Align = alTop
        BevelEdges = []
        BevelOuter = bvNone
        Color = 8339477
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 559
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 530
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
        Left = 2
        Top = 593
        Width = 530
        Height = 41
        Align = alBottom
        BevelEdges = [beTop]
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 8273429
        ParentBackground = False
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitTop = 581
        ExplicitWidth = 559
        object btnGenerateTrips: TButton
          Left = 433
          Top = 0
          Width = 97
          Height = 39
          Cursor = crHandPoint
          Align = alRight
          Caption = 'Generate Trips'
          TabOrder = 0
          OnClick = btnGenerateTripsClick
          ExplicitTop = 1
        end
      end
      object Memo1: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 46
        Width = 524
        Height = 544
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 2
        ExplicitLeft = 4
        ExplicitTop = 45
        ExplicitWidth = 553
        ExplicitHeight = 533
      end
    end
  end
end
