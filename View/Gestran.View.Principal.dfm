object PrincipalForm: TPrincipalForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Vendas'
  ClientHeight = 604
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlFiltros: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 67
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    DesignSize = (
      834
      67)
    object Label4: TLabel
      Left = 4
      Top = 12
      Width = 79
      Height = 16
      Caption = 'Data inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 126
      Top = 12
      Width = 67
      Height = 16
      Caption = 'Data final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label120: TLabel
      Left = 249
      Top = 12
      Width = 69
      Height = 16
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spSair: TSpeedButton
      Left = 783
      Top = 12
      Width = 42
      Height = 42
      Hint = 'Sair da aplica'#231#227'o'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000050505FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF060606AFAFAFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED8E
        8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD36363600
        0000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB04
        0404000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB
        ABAB040404000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB
        ABAB040404000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB04
        0404000000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD36363600
        0000707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED8E
        8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF060606AFAFAFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000050505FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = spSairClick
    end
    object spImprimirPDF: TSpeedButton
      Left = 631
      Top = 12
      Width = 137
      Height = 42
      Caption = 'Imprimir PDF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        56080000424D560800000000000036000000280000001A0000001A0000000100
        18000000000020080000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAFAFAF7070706666666666666666666666666666666666
        66666666666666666666666666666666666666828282DADADAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFF8F8F84C4C4C00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000090909A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF7C7C7C0000001D1D1D8E8E8E9999999999999999999999999999999999
        999999999999999999999999999999999999996B6B6B020202090909DADADAFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF121212000000D3D3D3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6E6E6E000000797979FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F4F4F4000000111111FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC0000005A5A5AFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFEFEFE87
        8787848484FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEAEAE000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFF9F9F90B0B0B2424245B5B5BFEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE000000595959FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFB9
        B9B9101010000000A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEAEAE000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFE9E9E96C6C6C0C0C0C5D5D5DBABA
        BAFAFAFAFFFFFFDBDBDB7F7F7F838383D8D8D8FFFFFFAEAEAE000000595959FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF5E5E5E3636363E3E3E1313134B4B4B080808212121222222
        5D5D5DFFFFFFAEAEAE000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D31E1E1EFCFC
        FC6868683838387E7E7E6666666B6B6BD7D7D7FFFFFFAEAEAE000000595959FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF3E3E3E5F5F5F292929EDEDEDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEAEAE000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696960606
        06CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE000000595959FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7D7D7D1C1C1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEAEAE000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1B1B0E0E
        0EE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE000000595959FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE9E9E91C1C1C303030DADADAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEAEAE000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC2020201D1D
        1DF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE000000595959FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF6F6F6F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF828282000000595959FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEDEDED3A3A3A2222222222221D1D1D070707000000000000717171FF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5000000000000000000
        0000000000000000000B0B0BDCDCDCFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        F3F3F3000000131313FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC5C5C5000000000000000000000000000000050505B2B2B2FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF3F3F3000000131313FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5000000000000000000
        000000060606B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FCFCFC040404040404F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFBDBDBD000000000000000000050505AFAFAFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF454545000000606060F4F4F4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8D8D000000000000060606
        AEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFD8D8D80B0B0B0000000202021111111111111111111111111111111111
        111111110101010000000A0A0AB7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFD9D9D949494911111100
        0000000000000000000000000000000000000000040404333333C8C8C8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = spImprimirPDFClick
    end
    object spBuscar: TSpeedButton
      Left = 478
      Top = 12
      Width = 137
      Height = 42
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E53535351B1B1B929292FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E52727270000
        000000000000009A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5
        2727270000000000000000000000001E1E1EFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE5E5E52727270000000000000000000000000000002F2F2FFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE7E7E7272727000000000000000000000000000000222222E2
        E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7D7D0000000000000000000000000000
        00222222E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9C000000000000
        000000000000222222E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
        F49999994343431616160000001616164444449A9A9AF5F5F5FFFFFFCCCCCC11
        1111000000000000000000212121E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA5A5A51717170000000000000000000000000000000000000000001818
        18858585111111000000151515A2A2A27E7E7EE2E2E2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8787870101010000003F3F3FA5A5A5E0E0E0FDFDFDE0E0E0
        A4A4A43E3E3E000000000000000000131313D1D1D1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA010101050505999999FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9696960404040000008B8B8BFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1161616000000939393FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909000000018
        1818F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F000000
        3C3C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFE393939000000929292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF414141000000A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA6A6A6000000444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF181818000000E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E40000001A1A1AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF060606000000F9F9F9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F800
        0000070707FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF181818000000
        E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE4E4E40000001A1A1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF414141000000A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA6A6A6000000444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8F8F8F0000003F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C3C3C000000929292FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F11616160000009B9B9BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98989800000018
        1818F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA
        010101050505999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
        96040404010101ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8787870101010000003F3F3FACACACEBEBEBEEEEEEEBEBEB
        ABABAB3E3E3E000000010101898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A413131300000000000000
        0000000000000000000000000000141414A7A7A7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF
        EF8B8B8B4040401C1C1C1111111C1C1C4141418C8C8CF0F0F0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = spBuscarClick
    end
    object dtpDataInicial: TDateTimePicker
      Left = 4
      Top = 30
      Width = 115
      Height = 24
      Date = 40682.000000000000000000
      Time = 0.635951377313176600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnCloseUp = dtpDataInicialCloseUp
    end
    object dtpDataFinal: TDateTimePicker
      Left = 126
      Top = 30
      Width = 115
      Height = 24
      Date = 40682.000000000000000000
      Time = 0.635951585645671000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnCloseUp = dtpDataFinalCloseUp
    end
    object mskDataInicial: TMaskEdit
      Left = 4
      Top = 30
      Width = 85
      Height = 24
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object mskDataFinal: TMaskEdit
      Left = 126
      Top = 30
      Width = 85
      Height = 24
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object cbVendedores: TComboBox
      Left = 249
      Top = 30
      Width = 208
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlVendas: TPanel
    Left = 0
    Top = 67
    Width = 834
    Height = 373
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    StyleElements = [seFont, seBorder]
    ExplicitHeight = 462
    object DBGrid1: TDBGrid
      Left = 0
      Top = 33
      Width = 834
      Height = 340
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = True
      DataSource = DSVendas
      GradientEndColor = 16514043
      GradientStartColor = 16514043
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 834
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
      StyleElements = [seFont, seBorder]
      object Label1: TLabel
        Left = 4
        Top = 8
        Width = 141
        Height = 16
        Caption = 'Listagem de vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object pnlVendasResumo: TPanel
    Left = 0
    Top = 440
    Width = 834
    Height = 164
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    StyleElements = [seFont, seBorder]
    ExplicitTop = 432
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 834
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      ExplicitTop = 8
      object Label2: TLabel
        Left = 4
        Top = 8
        Width = 135
        Height = 16
        Caption = 'Resumo de vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 33
      Width = 834
      Height = 131
      Align = alClient
      BorderStyle = bsNone
      Ctl3D = True
      DataSource = DSVendasResumo
      GradientEndColor = 16514043
      GradientStartColor = 16514043
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object DSVendas: TDataSource
    AutoEdit = False
    Left = 40
    Top = 200
  end
  object DSVendedores: TDataSource
    AutoEdit = False
    Left = 40
    Top = 128
  end
  object DSVendasResumo: TDataSource
    AutoEdit = False
    Left = 40
    Top = 280
  end
end
