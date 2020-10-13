object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #23458#25143#31471#31243#24207
  ClientHeight = 381
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TSpeedButton
    Left = 320
    Top = 32
    Width = 89
    Height = 25
    Caption = #20445#23384
    OnClick = btn1Click
  end
  object dbgrdh1: TDBGridEh
    Left = 112
    Top = 124
    Width = 545
    Height = 249
    DataSource = ds2
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    PopupMenu = pm1
    TabOrder = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    RemoteServer = ClientModule1.DSProviderConnection1
    OnNewRecord = ds1NewRecord
    Left = 112
    Top = 64
  end
  object ds2: TDataSource
    DataSet = ds1
    Left = 376
    Top = 80
  end
  object pm1: TPopupMenu
    Left = 440
    Top = 72
    object N1: TMenuItem
      Caption = #21024#38500
      OnClick = N1Click
    end
  end
end
