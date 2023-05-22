object Form1: TForm1
  Left = 350
  Top = 255
  Width = 928
  Height = 480
  Caption = 'Latihan 02 Kondisional'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 32
    Top = 8
    Width = 521
    Height = 337
    Color = clSkyBlue
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 96
      Width = 25
      Height = 13
      Caption = 'Nilai1'
    end
    object Label2: TLabel
      Left = 104
      Top = 128
      Width = 25
      Height = 13
      Caption = 'Nilai2'
    end
    object Label3: TLabel
      Left = 104
      Top = 160
      Width = 25
      Height = 13
      Caption = 'Nilai3'
    end
    object Label5: TLabel
      Left = 332
      Top = 136
      Width = 29
      Height = 13
      Caption = 'Grade'
    end
    object Label4: TLabel
      Left = 337
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtnilai1: TEdit
      Left = 136
      Top = 96
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object edtbobot1: TEdit
      Left = 224
      Top = 96
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object edtbobot2: TEdit
      Left = 224
      Top = 128
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object edtbobot3: TEdit
      Left = 224
      Top = 160
      Width = 81
      Height = 21
      TabOrder = 3
    end
    object edtnilai2: TEdit
      Left = 136
      Top = 128
      Width = 81
      Height = 21
      TabOrder = 4
    end
    object edtnilai3: TEdit
      Left = 136
      Top = 160
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object Panel1: TPanel
      Left = 8
      Top = 16
      Width = 249
      Height = 25
      Caption = 'contoh kondisional'
      TabOrder = 6
    end
    object Panel2: TPanel
      Left = 136
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Nilai'
      TabOrder = 7
    end
    object Panel3: TPanel
      Left = 224
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Bobot'
      TabOrder = 8
    end
    object edttotal: TEdit
      Left = 368
      Top = 96
      Width = 81
      Height = 21
      TabOrder = 9
    end
    object edtgrade: TEdit
      Left = 368
      Top = 136
      Width = 81
      Height = 21
      TabOrder = 10
    end
    object Hitung: TButton
      Left = 136
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Hitung'
      TabOrder = 11
      OnClick = HitungClick
    end
    object Hapus: TButton
      Left = 224
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 12
      OnClick = HapusClick
    end
    object keluar: TButton
      Left = 368
      Top = 192
      Width = 75
      Height = 25
      Caption = 'keluar'
      TabOrder = 13
      OnClick = keluarClick
    end
  end
end
