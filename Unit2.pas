unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    NILAIDIPROSES: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtinput1: TEdit;
    edtinput2: TEdit;
    edttambah: TEdit;
    edtkurang: TEdit;
    edtkali: TEdit;
    edtbagi: TEdit;
    Prosessemua: TButton;
    btn1tambah: TButton;
    btn2kurang: TButton;
    btn3kali: TButton;
    btn4bagi: TButton;
    procedure btn1tambahClick(Sender: TObject);
    procedure btn2kurangClick(Sender: TObject);
    procedure btn3kaliClick(Sender: TObject);
    procedure btn4bagiClick(Sender: TObject);
    procedure ProsessemuaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
angka1,angka2:real;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1tambahClick(Sender: TObject);
begin
angka1 := StrToFloat(edtinput1.text);
angka2 := StrToFloat(edtinput2.Text);
edttambah.Text := floattostr(angka1 + angka2);
end;

procedure TForm1.btn2kurangClick(Sender: TObject);
begin
angka1 := StrToFloat(edtinput1.text);
angka2 := StrToFloat(edtinput2.Text);
edtkurang.Text := floattostr(angka1 - angka2);
end;

procedure TForm1.btn3kaliClick(Sender: TObject);
begin
angka1 := StrToFloat(edtinput1.text);
angka2 := StrToFloat(edtinput2.Text);
edtkali.Text := floattostr(angka1 * angka2);
end;

procedure TForm1.btn4bagiClick(Sender: TObject);
begin
angka1 := StrToFloat(edtinput1.text);
angka2 := StrToFloat(edtinput2.Text);
edtbagi.Text := floattostr(angka1 / angka2);
end;

procedure TForm1.ProsessemuaClick(Sender: TObject);
begin
angka1 := StrToFloat(edtinput1.text);
angka2 := StrToFloat(edtinput2.Text);
edttambah.Text := floattostr(angka1 + angka2);
edtkurang.Text := floattostr(angka1 - angka2);
edtkali.Text := floattostr(angka1 * angka2);
edtbagi.Text := floattostr(angka1 / angka2);
end;

end.
