unit MENUFORM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    LATIHAN1: TMenuItem;
    Kalkulator1: TMenuItem;
    LATIHANKONDISIONAL1: TMenuItem;
    MAHASISWASTINGGRID1: TMenuItem;
    PRAKTEKMANDIRI1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
