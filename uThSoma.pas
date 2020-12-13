unit uThSoma;

interface

uses
  System.Classes,REST.Types;

type
  ThSoma = class(TThread)
  private
    fthread:string;
  public
    constructor Create(Thread:string);
  protected
    procedure Execute; override;
  end;

implementation

{ ThSoma }

uses uDM;

constructor ThSoma.Create(Thread: string);
begin
  inherited Create(true);

  FreeOnTerminate := true;

  fthread := Thread;
end;

procedure ThSoma.Execute;
var str:string;
begin
  DM.rest.BaseURL:='http://localhost:3039/autores/register';
  str  := '{"nome":"Papagaio"}';

  DM.request.Body.Add(str,TRESTContentType.ctAPPLICATION_JSON);
  try
     DM.request.Execute;
  except

  end;


end;

end.
