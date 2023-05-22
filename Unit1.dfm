object Form1: TForm1
  Left = 348
  Top = 200
  Width = 928
  Height = 480
  Caption = 'Kalkulator'
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
    Top = 88
    Width = 25
    Height = 13
    Caption = 'Nilai1'
  end
  object Label2: TLabel
    Left = 168
    Top = 112
    Width = 25
    Height = 13
    Caption = 'Nilai2'
  end
  object Label3: TLabel
    Left = 168
    Top = 144
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object edtnilai1: TEdit
    Left = 232
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtnilai2: TEdit
    Left = 232
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtHasil: TEdit
    Left = 232
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object TAMBAH: TButton
    Left = 392
    Top = 96
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = TAMBAHClick
  end
  object SELESAI: TButton
    Left = 392
    Top = 128
    Width = 75
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = SELESAIClick
  end
end
