unit ufrm2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  Tfrm2 = class(TForm)
    con: TADOConnection;
    qry: TADOQuery;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm2: Tfrm2;

implementation

{$R *.dfm}

procedure Tfrm2.FormCreate(Sender: TObject);
begin
  qry.Open;
end;

procedure Tfrm2.FormShow(Sender: TObject);
begin
Label1.Caption:='Qt:'+IntToStr(qry.RecordCount);
end;

end.
