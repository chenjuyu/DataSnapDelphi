object BusiFrame: TBusiFrame
  Left = 0
  Top = 0
  Width = 898
  Height = 440
  TabOrder = 0
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = #19994#21153#36923#36753#38754#26495
    TabOrder = 0
    ExplicitTop = -6
  end
  object pnl2: TPanel
    Left = 0
    Top = 41
    Width = 898
    Height = 399
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl2'
    TabOrder = 1
    object RzPageControl1: TRzPageControl
      Left = 0
      Top = 0
      Width = 898
      Height = 399
      Hint = ''
      ActivePage = TabSheet1
      Align = alClient
      ShowCloseButtonOnActiveTab = True
      TabIndex = 0
      TabOrder = 0
      OnClose = RzPageControl1Close
      FixedDimension = 19
      object TabSheet1: TRzTabSheet
        Caption = 'TabSheet1'
      end
      object TabSheet2: TRzTabSheet
        Caption = 'TabSheet2'
      end
    end
  end
end
