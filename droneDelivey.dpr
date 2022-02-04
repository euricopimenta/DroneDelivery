program droneDelivey;

uses
  Vcl.Forms,
  DroneDelivery.View.MainForm in 'View\DroneDelivery.View.MainForm.pas' {frm_Main},
  Vcl.Themes,
  Vcl.Styles,
  DroneDelivery.Model.Drone in 'Model\DroneDelivery.Model.Drone.pas',
  DroneDelivery.Model.Order in 'Model\DroneDelivery.Model.Order.pas',
  DroneDelivery.DAO.DBConnection in 'DAO\DroneDelivery.DAO.DBConnection.pas' {DBModule: TDataModule},
  DroneDelivery.Controller.Drone in 'Controller\DroneDelivery.Controller.Drone.pas',
  DroneDelivery.DAO.dmDrone in 'DAO\DroneDelivery.DAO.dmDrone.pas' {dmDrone: TDataModule},
  DroneDelivery.DAO.dmOrder in 'DAO\DroneDelivery.DAO.dmOrder.pas' {DMOrder: TDataModule},
  DroneDelivery.Controller.Order in 'Controller\DroneDelivery.Controller.Order.pas',
  DroneDelivery.Controller.Trip in 'Controller\DroneDelivery.Controller.Trip.pas',
  DroneDelivery.DAO.dmTrip in 'DAO\DroneDelivery.DAO.dmTrip.pas' {DMTrip: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Main, frm_Main);
  Application.CreateForm(TDBModule, DBModule);
  Application.Run;
end.
