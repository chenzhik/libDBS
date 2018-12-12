unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm5 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label14: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit10: TEdit;
    Label7: TLabel;
    ADOQuery2: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    RM:integer;
    BID:string;
  end;

var
  Form5: TForm5;

implementation

uses Unit8;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.add('select * from student..aaLib where Bid='''+edit7.Text+''' or Author like ''%'+edit9.Text+'%'' and Bname like ''%'+edit8.Text+'%'' and Publisher like ''%'+edit10.Text+'%'';');
  adoquery1.Open;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.add('select count(*) a from aaLib where Bid='''+'Edit1.Text'+''';');
  adoquery1.Open;

  if adoquery1.FieldByName('a').AsInteger=0 then
  begin
    adoquery1.Close;
    adoquery1.SQL.Clear;
    adoquery1.SQL.add('insert into aaLib values('''+Edit1.Text+''','''+Edit2.Text+''','''+Edit3.Text+''','''+Edit4.Text+''','''+Edit5.Text+''','+Edit6.Text+',0,'+Edit6.Text+');');
  end
  else
  begin
    adoquery1.Close;
    adoquery1.SQL.Clear;
    adoquery1.SQL.add('update aaLib set Bnum=Bnum+'+Edit6.Text+',RemainNum=RemainNum+'+Edit6.Text+' where Bid='''+Edit1.Text+''';');
  end;
    adoquery1.SQL.add('insert into aaLibin values('''+Edit1.Text+''',getdate(),'+Edit6.Text+');');
    adoquery1.execsql;

    adoquery1.SQL.clear;
    adoquery1.Close;
    adoquery1.Open;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  if RM>StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]) then
  begin
    adoquery1.Close;
    adoquery1.SQL.Clear;
    adoquery1.SQL.Add('update aaLib set Bnum=Bnum-'+ComboBox1.Items[ComboBox1.ItemIndex]+',RemainNum=RemainNum-'+ComboBox1.Items[ComboBox1.ItemIndex]+' where Bid='''+BID+'''');
  end;
  if RM=StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]) then
  begin
    adoquery1.Close;
    adoquery1.SQL.Clear;
    adoquery1.SQL.Add('delete from aaLib where Bid='''+BID+'''');
  end;
    adoquery1.execsql;
  if RM<StrToInt(ComboBox1.Items[ComboBox1.ItemIndex]) then
  begin
    form8.ShowModal;
  end;
    adoquery1.SQL.Add('insert into aaLibout values('''+BID+''',getdate(),'+ComboBox1.Items[ComboBox1.ItemIndex]+');');
    adoquery1.execsql;
end;

procedure TForm5.DataSource1DataChange(Sender: TObject; Field: TField);
var i:integer;
begin
  RM:=adoquery2.FieldByName('RemainNum').AsInteger;
  BID:=adoquery2.FieldByName('Bid').AsString;
  ComboBox1.Items.Clear;
  for i:=1 to RM do
    ComboBox1.Items.Add(inttostr(i));
end;

end.
