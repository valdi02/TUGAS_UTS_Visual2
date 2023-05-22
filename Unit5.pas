unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Series1: TPieSeries;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    procedure FormShow (Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow (Sender: TObject);
begin
  StringGrid1.RowCount := 2; // Set the initial number of rows
  StringGrid1.ColCount := 4;

  StringGrid1.FixedRows := 1; // Set the number of fixed rows (header)
  StringGrid1.FixedCols := 0; // Set the number of fixed columns (title column)

  StringGrid1.Cells[0, 0] := 'NO';
  StringGrid1.Cells[1, 0] := 'JUMLAH TERDAFTAR';
  StringGrid1.Cells[2, 0] := 'FAKULTAS';
  StringGrid1.Cells[3, 0] := 'TAHUN ANGKATAN';

  StringGrid1.ColWidths[0] := 30;
  StringGrid1.ColWidths[1] := 120;
  StringGrid1.ColWidths[2] := 120;
  StringGrid1.ColWidths[3] := 100;

  StringGrid1.Cells[0, 1] := '1';
  StringGrid1.Cells[1, 1] := '0';
  StringGrid1.Cells[2, 1] := '';
  StringGrid1.Cells[3, 1] := '';

  Chart1.Series[0].Clear; // Clear data when the form is created
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  JumlahTerdaftar: Integer;
begin
  JumlahTerdaftar := StrToIntDef(Edit1.Text, 0);

  StringGrid1.RowCount := StringGrid1.RowCount + 1;

  StringGrid1.Cells[0, StringGrid1.RowCount - 1] := IntToStr(StringGrid1.RowCount - 1);
  StringGrid1.Cells[1, StringGrid1.RowCount - 1] := Edit1.Text;
  StringGrid1.Cells[2, StringGrid1.RowCount - 1] := ComboBox2.Text;
  StringGrid1.Cells[3, StringGrid1.RowCount - 1] := ComboBox1.Text;

  StringGrid1.FixedRows := 1; // Set the number of fixed rows (header)

  StringGrid1.ColWidths[0] := 30;
  StringGrid1.ColWidths[1] := 120;
  StringGrid1.ColWidths[2] := 120;
  StringGrid1.ColWidths[3] := 100;

  Chart1.Series[0].Add(JumlahTerdaftar, ComboBox1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
  JumlahTerdaftar: Integer;
begin
  Chart1.Series[0].Clear; // Clear data before adding new data

  for i := 1 to StringGrid1.RowCount - 1 do
  begin
    // Get values from column 1 (JUMLAH TERDAFTAR) and column 3 (FAKULTAS)
    // and add them to the chart as new data

    // Check if the data in column JUMLAH TERDAFTAR is a valid integer
    if TryStrToInt(StringGrid1.Cells[1, i], JumlahTerdaftar) then
      Chart1.Series[0].Add(JumlahTerdaftar, StringGrid1.Cells[2, i]);
  end;
end;


end.

