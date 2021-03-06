unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    RMB:integer;
    RMUB:integer;
    BID:string;
    Pay:integer;
  end;

var
  Form6: TForm6;

implementation

uses Unit9;

{$R *.dfm}

procedure TForm6.Button3Click(Sender: TObject);
begin
  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.add('select * from aaLib,aaLibuser,aaLibUB where aaLib.Bid=aaLibUb.Bid and aaLibuser.Uid=aaLibUB.Uid and Bid='''+edit1.Text+''' or Author like ''%'+edit3.Text+'%'' and Bname like ''%'+edit2.Text+'%'' and Publisher like ''%'+edit4.Text+'%'';');
  adoquery1.Open;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
  adoquery1.Close;
  adoquery1.Open;
  if (RMB>=1)and(RMUB>=1)and(Pay>0) then
  begin
    adoquery1.SQL.add('update aaLib set RemainNum=RemainNum-1'+' where Bid='''+BID+'''');
    adoquery1.SQL.add('insert aaLibUB values('+BID+''''+edit5.Text+''',getdate())');
    adoquery1.SQL.add('update aaLibuser set UBorrowNum=UBorrowNum-1');
    adoquery1.SQL.add('update aaLibuser set URemainNum=URemainNum-1');
  end
  else
  begin
    form9.showmodal;
  end;
end;

procedure TForm6.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  RMB:=adoquery1.FieldByName('RemainNum').AsInteger;
  RMUB:=adoquery1.FieldByName('URemainNum').AsInteger;
  BID:=adoquery1.FieldByName('Bid').AsString;
  Pay:=adoquery1.FieldByName('Pay').Asinteger;
end;

end.
