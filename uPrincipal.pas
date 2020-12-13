unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,REST.Types;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    cnt:integer;
    qtThreads:integer;
  public
    procedure terminado(Sender:TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uThSoma, ufrm2, uDM;

procedure TForm1.Button1Click(Sender: TObject);
var Threads:TList;
    str:string;
    sm:ThSoma;
    i:integer;
begin

   frm2:=Tfrm2.Create(nil);
   frm2.Show;


  cnt:=0;

  Threads := TList.Create;

  for I := 0 to qtThreads -1 do
  begin
    Threads.Add(ThSoma.Create(IntToStr(i+1)));
    //seta a prioridade da thread;
    ThSoma(Threads[i]).priority := tpNormal;
    //seta o metodo que vai deinir que quando finalizar incrementa 1 no cnt  serve so pra verificar se tds foram concluidos
    ThSoma(Threads[i]).OnTerminate:=terminado;
  end;

  for I := 0 to qtThreads -1 do
    ThSoma(Threads[i]).Resume;

  Threads.Free;

end;

procedure TForm1.Button2Click(Sender: TObject);
var str:string;
begin
 frm2:=Tfrm2.Create(nil);
   frm2.Show;

   DM.rest.BaseURL:='http://localhost:3039/autores/register';
   str  := '{"nome":"Papagaio"}';

   DM.request.Body.Add(str,TRESTContentType.ctAPPLICATION_JSON);
    try
       DM.request.Execute;
    except

    end;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //define a quantidade de threads
  qtThreads:=1;
end;

procedure TForm1.terminado(Sender: TObject);
begin
   Inc(cnt);

   if cnt = qtThreads then
   begin
     Screen.Cursor:=crDefault;
     cnt:=0;
     ShowMessage('Thread Finalizada');
   end;


end;

end.
