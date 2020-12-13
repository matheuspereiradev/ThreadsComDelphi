unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    Button1: TButton;
    spNumThreads: TSpinEdit;
    procedure Button1Click(Sender: TObject);
  private
    cnt:integer;
  public
    procedure terminado(Sender:TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uThSoma, ufrm2;

procedure TForm1.Button1Click(Sender: TObject);
var Threads:TList;
    sm:ThSoma;
    i:integer;
begin

   frm2:=Tfrm2.Create(nil);
   frm2.Show;

  //colao cursor de carregando
  Screen.Cursor:=crHourGlass;

  cnt:=0;

  Threads := TList.Create;

  for I := 0 to spNumThreads.value -1 do
  begin
    Threads.Add(ThSoma.Create(IntToStr(i+1)));
    ThSoma(Threads[i]).priority := tpNormal;
    ThSoma(Threads[i]).OnTerminate:=terminado;
  end;

  for I := 0 to spNumThreads.value -1 do
    ThSoma(Threads[i]).Resume;

  Threads.Free;

end;

procedure TForm1.terminado(Sender: TObject);
begin
   Inc(cnt);

   if cnt = spNumThreads.value then
   begin
     Screen.Cursor:=crDefault;
     cnt:=0;
     ShowMessage('Thread Finalizada');
   end;


end;

end.