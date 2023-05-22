unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtHasil: TEdit;
    TAMBAH: TButton;
    SELESAI: TButton;
    procedure TAMBAHClick(Sender: TObject);
    procedure SELESAIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TAMBAHClick(Sender: TObject);
begin
edtHasil.Text:=IntToStr(StrToInt(edtnilai1.Text)+StrToint(edtnilai2.Text));
end;

procedure TForm1.SELESAIClick(Sender: TObject);
begin
Close;
end;

end.
