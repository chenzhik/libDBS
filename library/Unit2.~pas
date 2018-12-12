unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, Mask,
  dbcgrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label4: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBCtrlGrid1: TDBCtrlGrid;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
 adoquery1.Close;

 adoquery1.SQL.Clear;

 if RadioButton1.Checked=true  then
 begin
 adoquery1.SQL.add('select * from student..aaLib where Bname like ''%'+edit1.Text+'%'';');
 end;

 if RadioButton2.Checked=true  then
 begin
 adoquery1.SQL.add('select * from student..aaLib where Author like ''%'+edit1.Text+'%'';');
 end;

 if RadioButton3.Checked=true  then
 begin
 adoquery1.SQL.add('select * from student..aaLib where Publisher like ''%'+edit1.Text+'%'';');
 end;

 if RadioButton4.Checked=true  then
 begin
 adoquery1.SQL.add('select * from student..aaLib where Bid= '''+edit1.Text+''';');
 end;

 if (RadioButton1.Checked=false) and (RadioButton2.Checked=false) and (RadioButton3.Checked=false) and (RadioButton4.Checked=false)
 then
 begin
 adoquery1.SQL.add('select * from student..aaLib where Bid='''+edit1.Text+''' or Author like ''%'+edit1.Text+'%'' or Bname like ''%'+edit1.Text+'%'' or Publisher like ''%'+edit1.Text+'%'';');
 end;

 adoquery1.Open;
end;


end.
