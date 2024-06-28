object DMReport: TDMReport
  Height = 261
  Width = 698
  object frxReport: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45231.604236932900000000
    ReportOptions.LastChange = 45471.697481990740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 40
    Top = 14
    Datasets = <
      item
        DataSet = frxDBVendas
        DataSetName = 'Vendas'
      end
      item
        DataSet = frxDBVendasTotal
        DataSetName = 'VendasTotal'
      end
      item
        DataSet = frxDBVendedores
        DataSetName = 'Vendedores'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PagePrincipal: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'PagePrincipalOnBeforePrint'
      object ReportTitleCab: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 171.000000000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Stretched = True
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 104.590551180000000000
          Width = 755.906000000000000000
          Color = cl3DLight
          Frame.Typ = []
          Diagonal = True
        end
        object NomeEmpresa: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 226.771653540000000000
          Top = 36.051175000000000000
          Width = 529.134346460000000000
          Height = 24.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Gestran - Sistema de gest'#227'o de vendas - gestran.com.br')
          ParentFont = False
        end
        object Filtros: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 143.102350000000000000
          Width = 755.906000000000000000
          Height = 24.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object ImgLogo: TfrxPictureView
          Align = baLeft
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 226.771653540000000000
          Height = 91.251961180000000000
          Center = True
          Frame.Color = cl3DLight
          Frame.ShadowColor = cl3DLight
          Frame.Typ = []
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Line3: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 140.102350000000000000
          Width = 755.906000000000000000
          Color = cl3DLight
          Frame.Typ = []
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 109.102350000000000000
          Width = 755.906000000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de vendas e comiss'#245'es por vendedor')
          ParentFont = False
        end
      end
      object MasterDataCampo: TfrxMasterData
        FillType = ftBrush
        Fill.BackColor = clBtnFace
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight, ftTop]
        Height = 180.488188980000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        ColumnWidth = 377.952755905512000000
        DataSet = frxDBVendedores
        DataSetName = 'Vendedores'
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 153.259842520000000000
          Width = 69.543307090000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Id Venda')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 69.543307090000000000
          Top = 153.259842520000000000
          Width = 117.087102360000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ' Data')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 186.630409450000000000
          Top = 153.094490630000000000
          Width = 141.732283460000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 328.362692910000000000
          Top = 153.259842520000000000
          Width = 141.732283460000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Vendedor: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 27.354050000000000000
          Width = 751.677165350000000000
          Height = 24.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor: [Vendedores."Vendedor"]')
          ParentFont = False
        end
        object LineVendas: TfrxLineView
          AllowVectorExport = True
          Left = 2.133858270000000000
          Top = 145.354050000000000000
          Width = 754.015748030000000000
          Color = cl3DLight
          Frame.Color = clWindow
          Frame.Typ = [ftLeft]
          Frame.Width = 3.000000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 9.432900000000000000
          Width = 754.015748030000000000
          Color = cl3DLight
          Frame.Color = clWindow
          Frame.Typ = [ftTop]
          Frame.Width = 22.000000000000000000
          Frame.LeftLine.Width = 1.000000000000000000
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 470.094976370000000000
          Top = 153.551020000000000000
          Width = 141.732283460000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 123.181102360000000000
          Top = 86.874269610000000000
          Width = 159.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Vendedores."ValorTotalVendas"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 86.858070000000000000
          Width = 123.181102360000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 123.181102360000000000
          Top = 59.567219610000000000
          Width = 159.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Vendedores."ValorTotalDescontos"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 59.551020000000000000
          Width = 123.181102360000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total descontos')
          ParentFont = False
          VAlign = vaCenter
        end
        object mmValorComissao: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 123.181102360000000000
          Top = 113.567219610000000000
          Width = 159.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[VendasTotal."ValorComissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 113.551020000000000000
          Width = 123.181102360000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total comiss'#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 283.007874010000000000
          Top = 113.551020000000000000
          Width = 379.826771650000000000
          Height = 18.897637800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ' [VendasTotal."PercentComissao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 129.677180000000000000
        Top = 544.252320000000000000
        Width = 755.906000000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 6.605750000000000000
          Width = 755.905511810000000000
          Height = 35.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Color = clWindow
          Frame.Typ = []
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 45.605750000000000000
          Width = 755.905511810000000000
          Height = 35.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Color = clWindow
          Frame.Typ = []
        end
        object ValorTotalDescontos: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 593.063480310000000000
          Top = 13.621949610000000000
          Width = 162.842519690000000000
          Height = 22.677167800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 411.646157480000000000
          Top = 13.605750000000000000
          Width = 181.417322830000000000
          Height = 22.677167800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total geral descontos')
          ParentFont = False
          VAlign = vaCenter
        end
        object ValorTotalVendas: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 593.063480310000000000
          Top = 52.621949610000000000
          Width = 162.842519690000000000
          Height = 22.677167800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 411.646157480000000000
          Top = 52.605750000000000000
          Width = 181.417322830000000000
          Height = 22.677167800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total geral vendas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 83.511440000000000000
          Width = 755.905511810000000000
          Height = 35.897650000000000000
          Fill.BackColor = cl3DLight
          Frame.Color = clWindow
          Frame.Typ = []
        end
        object ValorTotalComissoes: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 593.063480310000000000
          Top = 90.527639610000000000
          Width = 162.842519690000000000
          Height = 22.677167800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 411.646157480000000000
          Top = 90.511440000000000000
          Width = 181.417322830000000000
          Height = 22.677167800000000000
          DataSetName = 'ItemOrc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total geral comiss'#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = [ftLeft, ftRight]
        Height = 29.456710000000000000
        Top = 453.543600000000000000
        Width = 755.906000000000000000
        DataSet = frxDBVendas
        DataSetName = 'Vendas'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Nome: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 69.370130000000000000
          Height = 26.456692910000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Vendas."IdVenda"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 69.370130000000000000
          Width = 119.165740000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Vendas."Data"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 188.535870000000000000
          Width = 138.370130000000000000
          Height = 26.456692910000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Vendas."ValorSubTotal"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 326.906000000000000000
          Top = 0.385590000000000000
          Width = 143.370130000000000000
          Height = 26.456692910000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Vendas."ValorDesconto"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 470.276130000000000000
          Top = 0.385590000000000000
          Width = 143.370130000000000000
          Height = 26.456692910000000000
          StretchMode = smActualHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Vendas."ValorTotal"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 695.433520000000000000
        Width = 755.906000000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 549.000000000000000000
          Top = 1.566480000000000000
          Width = 119.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page] de')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 673.000000000000000000
          Top = 1.566480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxReportTableObject: TfrxReportTableObject
    Left = 323
    Top = 14
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 424
    Top = 14
  end
  object frxRichObject: TfrxRichObject
    Left = 129
    Top = 13
  end
  object frxPDFExport: TfrxPDFExport
    FileName = 'OrdemServico.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43732.793501064810000000
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 217
    Top = 13
  end
  object frxCrossObject: TfrxCrossObject
    Left = 508
    Top = 14
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 610
    Top = 15
  end
  object frxDBVendas: TfrxDBDataset
    UserName = 'Vendas'
    CloseDataSource = False
    DataSet = FDQVendas
    BCDToCurrency = False
    Left = 40
    Top = 96
  end
  object frxDBVendedores: TfrxDBDataset
    UserName = 'Vendedores'
    CloseDataSource = False
    DataSet = FDQVendedores
    BCDToCurrency = False
    Left = 160
    Top = 96
  end
  object FDQVendas: TFDQuery
    IndexFieldNames = 'Vendedor'
    MasterSource = DSVendedores
    MasterFields = 'Vendedor'
    Left = 40
    Top = 160
  end
  object FDQVendedores: TFDQuery
    Left = 160
    Top = 160
  end
  object DSVendedores: TDataSource
    DataSet = FDQVendedores
    Left = 264
    Top = 96
  end
  object FDMVendasTotal: TFDMemTable
    IndexFieldNames = 'Vendedor'
    MasterSource = DSVendedores
    MasterFields = 'Vendedor'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 376
    Top = 160
  end
  object frxDBVendasTotal: TfrxDBDataset
    UserName = 'VendasTotal'
    CloseDataSource = False
    DataSet = FDMVendasTotal
    BCDToCurrency = False
    Left = 376
    Top = 96
  end
  object FDQVendasTotal: TFDQuery
    Left = 480
    Top = 160
  end
end
