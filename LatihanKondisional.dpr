unit LatihanKondisional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtnilai3: TEdit;
    edtbobot1: TEdit;
    edtbobot2: TEdit;
    edtbobot3: TEdit;
    GroupBox1: TGroupBox;
    edttotal: TEdit;
    edtgrade: TEdit;
    Hitung: TButton;
    Hapus: TButton;
    keluar: TButton;
    procedure HitungClick(Sender: TObject);
    procedure HapusClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.HitungClick(Sender: TObject);
var
     nil1, nil2, nil3,hasil : real;
     b1, b2, b3 : Real;
     grade :string;
begin
  //mengambil data
  nil1 := StrToFloat(edtnilai1.Text);
  nil2 := StrToFloat(edtnilai2.Text);
  nil3 := StrToFloat(edtnilai3.Text);
  //mengambil pesan
  b1 := StrToFloat(edtbobot1.Text);
  b2 := StrToFloat(edtbobot2.Text);
  b3 := StrToFloat(edtbobot3.Text);
  //menghitung nilai akhir
  hasil := nil1*b1 + nil2*b2 + nil3*b3;
  //mementukan grade
  if (hasil>= 80) then
  grade:='A'
  else
  if (hasil>= 70) then
  grade:='B'
  else
  if (hasil>= 60) then
  grade:='C'
  else
  if (hasil>= 50) then
  grade:='D'
  else
  grade:='E';
  //hasil dari proses
  edttotal.Text := FloatToStr(hasil);
  edtgrade.Text := grade;
end;

procedure TForm1.HapusClick(Sender: TObject);
begin
edtnilai1.Text := '0';
edtnilai2.Text := '0';
edtnilai3.Text := '0';
edtbobot1.Text := '';
edtbobot2.Text := '';
edtbobot3.Text := '';
edttotal.Text := '';
edtgrade.Text := '';
end;

procedure TForm1.keluarClick(Sender: TObject);
begin
Application.Terminate;
end;

end.
