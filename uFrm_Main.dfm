object frm_Main: Tfrm_Main
  Left = 0
  Top = 0
  Caption = 'Drone Delivery - Eurico Pimenta'
  ClientHeight = 672
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
  object pnlMainLeft: TPanel
    Left = 0
    Top = 41
    Width = 313
    Height = 631
    Align = alLeft
    TabOrder = 0
    object pnlDrones: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 305
      Height = 341
      Align = alTop
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      Color = 16768941
      ParentBackground = False
      TabOrder = 0
      object edtDroneName: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 35
        Width = 190
        Height = 24
        Align = alLeft
        AutoSize = False
        BorderStyle = bsNone
        TabOrder = 0
        TextHint = ' Name'
      end
      object edtDroneMaxWeight: TEdit
        AlignWithMargins = True
        Left = 199
        Top = 35
        Width = 74
        Height = 24
        Align = alLeft
        AutoSize = False
        BorderStyle = bsNone
        NumbersOnly = True
        TabOrder = 1
        TextHint = ' MaxWeight'
      end
      object Panel2: TPanel
        Left = 0
        Top = 62
        Width = 305
        Height = 279
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object dbgDrones: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 299
          Height = 241
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
          Top = 247
          Width = 305
          Height = 32
          Align = alBottom
          BevelEdges = [beBottom]
          BevelOuter = bvNone
          Color = 8273429
          ParentBackground = False
          TabOrder = 1
          object btnPopulateDrones: TSpeedButton
            Left = 215
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
            Left = 125
            Top = 0
            Width = 90
            Height = 32
            Cursor = crHandPoint
            Align = alRight
            Caption = 'Clear'
            OnClick = btnClearDronesClick
            ExplicitTop = 3
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 305
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
          Width = 305
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
        Left = 276
        Top = 32
        Width = 32
        Height = 30
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
        TabOrder = 4
        WordWrap = True
        OnClick = btnAddDroneClick
      end
    end
    object pnlOrders: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 351
      Width = 305
      Height = 275
      Align = alTop
      BevelOuter = bvNone
      Color = 1622506
      ParentBackground = False
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 32
        Width = 305
        Height = 243
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object dbgOrders: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 36
          Width = 299
          Height = 172
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
          Top = 211
          Width = 305
          Height = 32
          Align = alBottom
          BevelEdges = [beBottom]
          BevelOuter = bvNone
          Color = 1618683
          ParentBackground = False
          TabOrder = 1
          object btnPopulateOrders: TSpeedButton
            Left = 215
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
            Left = 125
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
          Width = 305
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Panel1'
          TabOrder = 2
          object btnAddOrder: TButton
            Left = 263
            Top = 0
            Width = 42
            Height = 33
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
          end
          object edtLocation: TEdit
            AlignWithMargins = True
            Left = 4
            Top = 3
            Width = 190
            Height = 27
            Align = alRight
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 1
            TextHint = ' Location'
          end
          object edtWeight: TEdit
            AlignWithMargins = True
            Left = 200
            Top = 3
            Width = 60
            Height = 27
            Align = alRight
            AutoSize = False
            BorderStyle = bsNone
            NumbersOnly = True
            TabOrder = 2
            TextHint = ' Weight'
          end
        end
      end
      object pnlOrderTitle: TPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 32
        Align = alTop
        BevelEdges = [beBottom]
        BevelOuter = bvNone
        Color = 1549801
        ParentBackground = False
        TabOrder = 1
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 305
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
  object pnlMainTop: TPanel
    Left = 0
    Top = 0
    Width = 882
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object pnlMainClient: TPanel
    Left = 313
    Top = 41
    Width = 569
    Height = 631
    Align = alClient
    TabOrder = 2
    object pnlTrips: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 561
      Height = 623
      Align = alClient
      Color = 8273429
      ParentBackground = False
      TabOrder = 0
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 559
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
          Width = 559
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
        Top = 581
        Width = 559
        Height = 41
        Align = alBottom
        BevelEdges = [beTop]
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = 8273429
        ParentBackground = False
        TabOrder = 1
        object btnGenerateTrips: TButton
          Left = 462
          Top = 0
          Width = 97
          Height = 39
          Cursor = crHandPoint
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
        Width = 553
        Height = 533
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 2
      end
    end
  end
end
