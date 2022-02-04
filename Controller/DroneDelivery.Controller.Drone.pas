unit DroneDelivery.Controller.Drone;

interface
uses
  DroneDelivery.Model.Drone,
  DroneDelivery.DAO.dmDrone,
  VCL.DBGrids,
  SysUtils;


Type
  TDroneController = Class
  Private
    FDrone : TDrone;
  Public
    Constructor Create;
    Destructor Destroy ; Override;
    Procedure Populate;
    Procedure addDrone(Name : String; MaxWeight : String);
    Procedure RemoveDrone ;
    Procedure clearDrones;
    Procedure ConnectDBGrid(Grid : TDBGrid);

End;

implementation


{ TDroneController }

procedure TDroneController.addDrone(Name, MaxWeight: String);
begin
  FDrone := TDrone.Create;
  Try
    FDrone.Name := Name;
    FDrone.MaxWeight := MaxWeight.ToInteger;
    DMDrone.DBAddDrone(FDrone);
  Finally
    FDrone.Free

  End;

end;

procedure TDroneController.clearDrones;
begin
  dmDrone.DBClearDrones;

end;

constructor TDroneController.Create;
begin
  if not Assigned(DMDrone) then
    DMDrone := TdmDrone.Create(nil);

end;

destructor TDroneController.Destroy;
begin
  DMDrone.Free;
  inherited;
end;

Procedure TDroneController.ConnectDBGrid(Grid:TDBGrid);
begin
  Grid.DataSource := dmDrone.dtsDrones;

end;

procedure TDroneController.Populate;
begin
  dmDrone.PopulateDrones('.\DRONES.SQL')

end;


procedure TDroneController.RemoveDrone;
begin
  dmDrone.dataDrones.Delete;
  dmDrone.orderByMaxWeight;
end;

end.
