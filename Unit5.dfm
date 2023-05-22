object Form1: TForm1
  Left = 343
  Top = 166
  Width = 928
  Height = 480
  Caption = ' menampilkan data digrafik dan stringgrid'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 80
    Top = 120
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object Label2: TLabel
    Left = 80
    Top = 80
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label1: TLabel
    Left = 80
    Top = 56
    Width = 98
    Height = 13
    Caption = 'TAHUN ANGGKATAN'
  end
  object Button2: TButton
    Left = 104
    Top = 144
    Width = 81
    Height = 25
    Caption = 'view grafik'
    TabOrder = 0
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 372
    Top = 16
    Width = 509
    Height = 161
    Color = clBtnFace
    DefaultColWidth = 70
    DefaultRowHeight = 30
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 200
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object ComboBox2: TComboBox
    Left = 200
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'TEKNIK INFORMASI'
      'TEKNIK PERTANIAN'
      'TEKNIK HUKUM')
  end
  object ComboBox1: TComboBox
    Left = 200
    Top = 48
    Width = 145
    Height = 21
    ImeName = '2020'
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      '2020'
      '2021'
      '2022')
  end
  object Chart1: TChart
    Left = 16
    Top = 184
    Width = 657
    Height = 249
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 5
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 8
    Top = 144
    Width = 89
    Height = 25
    Caption = 'add data'
    TabOrder = 6
    OnClick = Button1Click
  end
end
