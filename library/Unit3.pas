unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit4, Unit5;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
 form4.ShowModal;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
form5.ShowModal
end;

end.
