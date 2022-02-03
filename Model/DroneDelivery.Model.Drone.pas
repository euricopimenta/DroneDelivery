unit DroneDelivery.Model.Drone;

interface
  Type
    TDrone = Class
    private
      FName: String;
      FMaxWeight: Double;
      procedure SetMaxWeight(const Value: Double);
      procedure SetName(const Value: String);
    public
      property Name : String read FName write SetName;
      property MaxWeight : Double read FMaxWeight write SetMaxWeight;
  End;

implementation
Uses
  System.SysUtils;

{ TDrone }

procedure TDrone.SetMaxWeight(const Value: Double);
begin
  if Value < 0.01 then
    raise Exception.Create('Drone needs a maxWeight');
  FMaxWeight := Value;

end;

procedure TDrone.SetName(const Value: String);
begin
  if Value = EmptyStr then
   raise Exception.Create('The drone needs a name');
  FName := Value;

end;

end.
