unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit7, Unit9;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
  mymd5:TIdHashMessageDigest5;
begin
  mymd5:=TIdHashMessageDigest5.Create;

  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery.SQL.add('select Uid u1,Password p1 from aaLibuser where Uid = '''+Edit1.text+''';');
  adoquery1.Open;

  UID:=adoquery1.FieldByName('u1').AsString;
  password:=adoquery1.FieldByName('p1').AsString;

  if(password = copy(mymd5.AsHex(mymd5.HashValue(Edit1.text + Edit2.Text)),2,12)) then
  begin
    if(UID = 'Administrator') then form7.ShowModal;
    else form6.showmodal;
  end
  else
  begin
    form9.showmodal;
  end
end;

end.
