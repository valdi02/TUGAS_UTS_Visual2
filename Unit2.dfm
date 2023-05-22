object Form1: TForm1
  Left = 530
  Top = 154
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
    Width = 50
    Height = 13
    Caption = 'INPUTAN1'
  end
  object Label2: TLabel
    Left = 168
    Top = 88
    Width = 50
    Height = 13
    Caption = 'INPUTAN2'
  end
  object NILAIDIPROSES: TGroupBox
    Left = 120
    Top = 152
    Width = 505
    Height = 193
    Caption = 'NILAI DIPROSES'
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 0
    object Label3: TLabel
      Left = 56
      Top = 40
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object Label4: TLabel
      Left = 56
      Top = 72
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object Label5: TLabel
      Left = 56
      Top = 112
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Label6: TLabel
      Left = 56
      Top = 136
      Width = 56
      Height = 13
      Caption = 'HASIL BAGI'
    end
    object edttambah: TEdit
      Left = 144
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtkurang: TEdit
      Left = 144
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtkali: TEdit
      Left = 144
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtbagi: TEdit
      Left = 144
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btn1tambah: TButton
      Left = 280
      Top = 40
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = btn1tambahClick
    end
    object btn2kurang: TButton
      Left = 280
      Top = 72
      Width = 75
      Height = 25
      Caption = '-'
      TabOrder = 5
      OnClick = btn2kurangClick
    end
    object btn3kali: TButton
      Left = 280
      Top = 104
      Width = 75
      Height = 25
      Caption = 'x'
      TabOrder = 6
      OnClick = btn3kaliClick
    end
    object btn4bagi: TButton
      Left = 280
      Top = 136
      Width = 75
      Height = 25
      Caption = ':'
      TabOrder = 7
      OnClick = btn4bagiClick
    end
  end
  object edtinput1: TEdit
    Left = 232
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtinput2: TEdit
    Left = 232
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Prosessemua: TButton
    Left = 376
    Top = 64
    Width = 91
    Height = 33
    Caption = 'PROSES SEMUA'
    TabOrder = 3
    OnClick = ProsessemuaClick
  end
end
