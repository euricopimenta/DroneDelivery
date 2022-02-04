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
    Procedure ResetDataSets;

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

end;

destructor TTripController.Destroy;
begin
  FTripList.Free;
  DMTrip.Free;
  inherited;
end;

Function TTripController.getTripResults : TStrings;
Var
 I , CurrentWeight, MaxWeight, Trip :Integer;

begin
  DMTrip.ValidateWeight;
  ResetDataSets;

 Trip := 1;
 while not DMOrder.dataOrdersSent.Value do
 Begin
   for I := 0 to DMDrone.dataDrones.RecordCount-1 do
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

      End
      Else
        Break;
      DMOrder.dataOrders.Next;

     End;
     DMDrone.dataDrones.Next;

   End;
   DMDrone.dataDrones.First;
   I := 0; //I put it manually because it's not reseting in the loop for. Bug ?
   Inc(Trip,1);

 End;

 Result := FTripList;

end;

procedure TTripController.ResetDataSets;
begin
   DMDrone.orderByMaxWeight;
   DMOrder.ResetSentStatus;
   DMOrder.dataOrders.First;
   DMOrder.dataOrders.IndexFieldNames := 'Weight';

end;

end.
