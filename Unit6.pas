unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Chart1: TChart;
    Series1: TPieSeries;
    StringGrid1: TStringGrid;
    procedure ChartAdd;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ChartAdd;
var
  i: Integer;
begin
  Chart1.Series[0].Clear; // Membersihkan tampilan chart

  // Menambahkan data dari StringGrid ke Series1
  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1, i]), StringGrid1.Cells[2, i]);
  end;

  // Memperbarui tampilan chart
  Chart1.Refresh;
end;


procedure TForm1.FormShow(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  StringGrid1.ColCount := 4;
  StringGrid1.Cells[0, 0] := 'NO';
  StringGrid1.Cells[1, 0] := 'JUMLAH TERDAFTAR';
  StringGrid1.Cells[2, 0] := 'FAKULTAS';
  StringGrid1.Cells[3, 0] := 'TAHUN ANGKATAN';

  // Menyesuaikan lebar kolom secara manual
  StringGrid1.ColWidths[0] := 30; // Lebar kolom NO
  StringGrid1.ColWidths[1] := 100; // Lebar kolom JUMLAH TERDAFTAR
  StringGrid1.ColWidths[2] := 150; // Lebar kolom FAKULTAS
  StringGrid1.ColWidths[3] := 120; // Lebar kolom TAHUN ANGKATAN
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  JumlahTerdaftar: Double;
  ValidInput: Boolean;
begin
  // Validate the input string
  ValidInput := TryStrToFloat(Edit1.Text, JumlahTerdaftar);

  if not ValidInput then
  begin
    ShowMessage('Masukkan angka yang valid pada Jumlah Terdaftar');
    Exit;
  end;

  StringGrid1.RowCount := StringGrid1.RowCount + 1;
  StringGrid1.Cells[0, StringGrid1.RowCount - 1] := IntToStr(StringGrid1.RowCount - 1);
  StringGrid1.Cells[1, StringGrid1.RowCount - 1] := FloatToStr(JumlahTerdaftar);
  StringGrid1.Cells[2, StringGrid1.RowCount - 1] := ComboBox2.Text;
  StringGrid1.Cells[3, StringGrid1.RowCount - 1] := ComboBox1.Text;

  // Mengatur lebar kolom secara manual
  StringGrid1.ColWidths[0] := 50; // Lebar kolom NO
  StringGrid1.ColWidths[1] := 100; // Lebar kolom JUMLAH TERDAFTAR
  StringGrid1.ColWidths[2] := 150; // Lebar kolom FAKULTAS
  StringGrid1.ColWidths[3] := 100; // Lebar kolom TAHUN ANGKATAN

  ChartAdd;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  a, b: Integer;
begin
  a := StringGrid1.Selection.Bottom - StringGrid1.Selection.Top + 1;
  for b := StringGrid1.Selection.Bottom + 1 to StringGrid1.RowCount - 1 do
    StringGrid1.Rows[b - a] := StringGrid1.Rows[b];

  StringGrid1.RowCount := StringGrid1.RowCount - 1;
  ChartAdd; // Memanggil prosedur CharAdd
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  StringGrid1.RowCount := 1; // Mengosongkan semua data di StringGrid
  ChartAdd; // Memanggil prosedur CharAdd
end;




end.

