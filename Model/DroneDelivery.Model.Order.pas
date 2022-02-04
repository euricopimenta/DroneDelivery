unit DroneDelivery.Model.Order;

interface

  type TOrder = Class
    Private
      FLocation: String;
      FSent: Boolean;
      FWeight: Integer;
      procedure SetLocation(const Value: String);
      procedure SetSent(const Value: Boolean);
      procedure SetWeight(const Value: Integer);
    Public
      Property Location : String read FLocation write SetLocation;
      Property Weight : Integer read FWeight write SetWeight;
      Property Sent : Boolean read FSent write SetSent;
  End;

implementation
uses
  System.SysUtils;

{ TOrder }

procedure TOrder.SetLocation(const Value: String);
begin
  if Trim(Value) = EmptyStr then
    raise Exception.Create('The order must have a location');
  FLocation := Value;

end;

procedure TOrder.SetSent(const Value: Boolean);
begin
  FSent := Value;
end;

procedure TOrder.SetWeight(const Value: Integer);
begin
  if Value < 0 then
    raise Exception.Create('The order must have a weight');
  FWeight := Value

end;

end.
