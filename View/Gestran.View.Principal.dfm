object PrincipalForm: TPrincipalForm
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 529
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlFiltros: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
  end
  object pnlVendas: TPanel
    Left = 0
    Top = 121
    Width = 716
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    StyleElements = [seFont, seBorder]
  end
end
