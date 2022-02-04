unit DroneDelivery.Controller.Trip;

interface
uses
  System.Classes,
  DroneDelivery.Model.Drone,
  DroneDelivery.Model.Order,
  DroneDelivery.DAO.DMDrone,
  DroneDelivery.DAO.DMOrder,
  DroneDelivery.DAO.DMTrip,
  SysUtils;

 Type
  TTripController = Class
    FTripList : TStringList;
    Function Validate : Boolean;

  Public
    Constructor Create;
    Destructor Destroy ; Override;
    Function getTripResults : TStrings;

  End;

implementation

{ TTripController }

constructor TTripController.Create;
begin
  FTripList := TStringList.Create;
  DMTrip := TDMTrip.Create(nil);
  DMTrip.ValidateWeight;
end;

destructor TTripController.Destroy;
begin
  FTripList.Free;
  DMOrder.ResetSentStatus;
  DMDrone.dataDrones.First;
  DMTrip.Free;
  inherited;
end;

Function TTripController.getTripResults : TStrings;
Var
 I , CurrentWeight, MaxWeight, Trip :Integer;

begin
 Trip := 1;

 while not DMOrder.dataOrdersSent.Value do
 Begin
   for I := 0 to DMDrone.dataDrones.RecordCount do
   Begin
     MaxWeight := DMDrone.dataDrones.FieldValues['MaxWeight'];
     CurrentWeight := 0;

     While CurrentWeight < MaxWeight  do
     Begin
      if Not(DMOrder.dataOrdersSent.Value) then
      Begin
        CurrentWeight := CurrentWeight + DMOrder.dataOrdersWeight.Value;
        if CurrentWeight > MaxWeight then
          Break ;

        DMOrder.dataOrders.Edit;
        DMOrder.dataOrdersSent.AsBoolean := True;
        FTripList.Add(DMDrone.dataDronesName.Value+' Goes to '+ DMOrder.OrderLocation.Value +
                        ' Carrying '+ CurrentWeight.ToString+'g in his Trip #'+Trip.ToString);

      End;
      DMOrder.dataOrders.Next;

     End;
     DMDrone.dataDrones.Next;

   End;
   DMDrone.dataDrones.First;
   Inc(Trip,1);

 End;
 Result := FTripList;

end;

function TTripController.Validate: Boolean;
begin

end;

end.
