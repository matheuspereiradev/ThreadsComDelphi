unit ufrm3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  Tfrm3 = class(TForm)
    rtxt: TRichEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm3: Tfrm3;

implementation

{$R *.dfm}

procedure Tfrm3.Button1Click(Sender: TObject);
begin
ShowMessage(rtxt.Text);
end;

end.
