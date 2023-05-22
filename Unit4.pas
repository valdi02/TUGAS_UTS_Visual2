unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    NILAITUGAS: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    HITUNG: TButton;
    HAPUS: TButton;
    KELUAR: TButton;
    edtNkehadiran: TEdit;
    edtNUTS: TEdit;
    edtNHarian: TEdit;
    edtNUAS: TEdit;
    edtBkehadiran: TEdit;
    edtBUTS: TEdit;
    edtBHarian: TEdit;
    edtNtugas: TEdit;
    edtBTugas: TEdit;
    edtBUAS: TEdit;
    edtTOTAL: TEdit;
    edtGRADE: TEdit;
    edtKet: TEdit;
    procedure HITUNGClick(Sender: TObject);
    procedure HAPUSClick(Sender: TObject);
    procedure KELUARClick(Sender: TObject);
  private
    { Private declarations }
    procedure HitungNilaiDanGrade;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.HitungNilaiDanGrade;
var
  kehadiran, tugas, uts, nilaiHarian, uas: Integer;
  bobotKehadiran, bobotTugas, bobotUTS, bobotHarian, bobotUAS: Double;
  bobotNilai: Double;
begin
  // Ambil nilai-nilai dari komponen TEdit
  kehadiran := StrToInt(edtNkehadiran.Text);
  tugas := StrToInt(edtNtugas.Text);
  uts := StrToInt(edtNUTS.Text);
  nilaiHarian := StrToInt(edtNHarian.Text);
  uas := StrToInt(edtNUAS.Text);

  // Ambil bobot nilai dari komponen TEdit
  bobotKehadiran := StrToFloat(edtBkehadiran.Text);
  bobotTugas := StrToFloat(edtBTugas.Text);
  bobotUTS := StrToFloat(edtBUTS.Text);
  bobotHarian := StrToFloat(edtBHarian.Text);
  bobotUAS := StrToFloat(edtBUAS.Text);

  // Batasan nilai antara 0-100
  if (kehadiran < 0) or (kehadiran > 100) or
    (tugas < 0) or (tugas > 100) or
    (uts < 0) or (uts > 100) or
    (nilaiHarian < 0) or (nilaiHarian > 100) or
    (uas < 0) or (uas > 100) then
  begin
    ShowMessage('Nilai harus berada di antara 0-100.');
    Exit;
  end;

  // Hitung bobot nilai untuk setiap komponen
  bobotNilai := (kehadiran * bobotKehadiran / 100) +
    (tugas * bobotTugas / 100) +
    (uts * bobotUTS / 100) +
    (nilaiHarian * bobotHarian / 100) +
    (uas * bobotUAS / 100);

  // Tampilkan total nilai
  edtTOTAL.Text := FloatToStr(bobotNilai);

  // Tentukan grade berdasarkan total nilai
  if bobotNilai >= 80 then
    edtGRADE.Text := 'A'
  else if bobotNilai >= 70 then
    edtGRADE.Text := 'B'
  else if bobotNilai >= 60 then
    edtGRADE.Text := 'C'
  else if bobotNilai >= 50 then
    edtGRADE.Text := 'D'
  else
    edtGRADE.Text := 'E';

  // Tentukan keterangan (LULUS atau TIDAK LULUS)
  if (edtGRADE.Text = 'A') or (edtGRADE.Text = 'B') or (edtGRADE.Text = 'C') then
    edtKet.Text := 'LULUS'
  else
    edtKet.Text := 'TIDAK LULUS';
end;

procedure TForm1.HITUNGClick(Sender: TObject);
begin
  HitungNilaiDanGrade;
end;

procedure TForm1.HAPUSClick(Sender: TObject);
begin
  edtNkehadiran.Text := '';
  edtNtugas.Text := '';
  edtNUTS.Text := '';
  edtNHarian.Text := '';
  edtNUAS.Text := '';
  edtTOTAL.Text := '';
  edtGRADE.Text := '';
  edtKet.Text := '';
end;

procedure TForm1.KELUARClick(Sender: TObject);
begin
  Close;
end;

end.

