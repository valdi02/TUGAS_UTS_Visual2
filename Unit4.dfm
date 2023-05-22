object Form1: TForm1
  Left = 375
  Top = 207
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
  object GroupBox1: TGroupBox
    Left = 96
    Top = 16
    Width = 473
    Height = 361
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 96
      Width = 88
      Height = 13
      Caption = 'NILAI KEHADIRAN'
    end
    object Label2: TLabel
      Left = 32
      Top = 152
      Width = 49
      Height = 13
      Caption = 'NILAI UTS'
    end
    object Label3: TLabel
      Left = 32
      Top = 168
      Width = 69
      Height = 13
      Caption = 'NILAI HARIAN'
    end
    object Label4: TLabel
      Left = 32
      Top = 200
      Width = 50
      Height = 13
      Caption = 'NILAI UAS'
    end
    object Label5: TLabel
      Left = 32
      Top = 264
      Width = 32
      Height = 13
      Caption = 'TOTAL'
    end
    object Label6: TLabel
      Left = 32
      Top = 288
      Width = 34
      Height = 13
      Caption = 'GRADE'
    end
    object Label7: TLabel
      Left = 32
      Top = 312
      Width = 18
      Height = 13
      Caption = 'KET'
    end
    object NILAITUGAS: TLabel
      Left = 32
      Top = 128
      Width = 63
      Height = 13
      Caption = 'NILAI TUGAS'
    end
    object Panel1: TPanel
      Left = 88
      Top = 16
      Width = 273
      Height = 25
      Caption = 'CHECK BOBOT NILAI SISWA'
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 144
      Top = 48
      Width = 89
      Height = 25
      Caption = 'NILAI'
      Color = clBtnShadow
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 280
      Top = 48
      Width = 89
      Height = 25
      Caption = 'BOBOT'
      Color = clBtnShadow
      TabOrder = 2
    end
    object HITUNG: TButton
      Left = 64
      Top = 224
      Width = 75
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 3
      OnClick = HITUNGClick
    end
    object HAPUS: TButton
      Left = 160
      Top = 224
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 4
      OnClick = HAPUSClick
    end
    object KELUAR: TButton
      Left = 248
      Top = 224
      Width = 75
      Height = 25
      Caption = 'KELUAR'
      TabOrder = 5
      OnClick = KELUARClick
    end
    object edtNkehadiran: TEdit
      Left = 128
      Top = 96
      Width = 89
      Height = 21
      TabOrder = 6
    end
    object edtNUTS: TEdit
      Left = 128
      Top = 144
      Width = 89
      Height = 21
      TabOrder = 7
    end
    object edtNHarian: TEdit
      Left = 128
      Top = 168
      Width = 89
      Height = 21
      TabOrder = 8
    end
    object edtNUAS: TEdit
      Left = 128
      Top = 192
      Width = 89
      Height = 21
      TabOrder = 9
    end
    object edtBkehadiran: TEdit
      Left = 224
      Top = 96
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 10
      Text = '15'
    end
    object edtBUTS: TEdit
      Left = 224
      Top = 144
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 11
      Text = '20'
    end
    object edtBHarian: TEdit
      Left = 224
      Top = 168
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 12
      Text = '10'
    end
    object edtNtugas: TEdit
      Left = 128
      Top = 120
      Width = 89
      Height = 21
      TabOrder = 13
    end
    object edtBTugas: TEdit
      Left = 224
      Top = 120
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 14
      Text = '25'
    end
    object edtBUAS: TEdit
      Left = 224
      Top = 192
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 15
      Text = '30'
    end
    object edtTOTAL: TEdit
      Left = 96
      Top = 264
      Width = 241
      Height = 21
      TabOrder = 16
    end
    object edtGRADE: TEdit
      Left = 96
      Top = 288
      Width = 241
      Height = 21
      TabOrder = 17
    end
    object edtKet: TEdit
      Left = 96
      Top = 312
      Width = 241
      Height = 21
      TabOrder = 18
    end
  end
end
