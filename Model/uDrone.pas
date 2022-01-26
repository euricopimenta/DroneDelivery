unit uDrone;

interface
  Type
    TDrone = Class
  private
    FName: String;
    FMaxWeight: String;
    procedure SetMaxWeight(const Value: String);
    procedure SetName(const Value: String);
  published
    property Name : String read FName write SetName;
    property MaxWeight : String read FMaxWeight write SetMaxWeight;
    End;

implementation

{ TDrone }

procedure TDrone.SetMaxWeight(const Value: String);
begin
  FMaxWeight := Value;
end;

procedure TDrone.SetName(const Value: String);
begin
  FName := Value;
end;

end.
