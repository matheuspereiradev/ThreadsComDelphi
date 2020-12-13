program Threads;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uThSoma in 'uThSoma.pas',
  uDM in 'uDM.pas' {DM: TDataModule},
  ufrm2 in 'ufrm2.pas' {frm2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm2, frm2);
  Application.Run;
end.
