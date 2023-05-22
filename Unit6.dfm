object Form1: TForm1
  Left = 185
  Top = 216
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 48
    Width = 98
    Height = 13
    Caption = 'TAHUN ANGGKATAN'
  end
  object Label2: TLabel
    Left = 168
    Top = 80
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 168
    Top = 112
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object Edit1: TEdit
    Left = 296
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 296
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      '2020'
      '2021')
  end
  object ComboBox2: TComboBox
    Left = 296
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'TI'
      'SI')
  end
  object Button1: TButton
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 160
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 160
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Chart1: TChart
    Left = 8
    Top = 200
    Width = 641
    Height = 241
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
    TabOrder = 6
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
  object StringGrid1: TStringGrid
    Left = 456
    Top = 48
    Width = 320
    Height = 120
    TabOrder = 7
  end
end
