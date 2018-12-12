unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit2, Unit3, Unit6;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  form3.showmodal;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  form6.ShowModal;
end;

end.
