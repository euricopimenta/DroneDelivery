program droneDelivey;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frm_Main},
  Vcl.Themes,
  Vcl.Styles,
  uDrone in 'Model\uDrone.pas',
  uOrder in 'Model\uOrder.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Main, frm_Main);
  Application.Run;
end.
