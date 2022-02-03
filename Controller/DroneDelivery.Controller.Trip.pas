unit DroneDelivery.Controller.Trip;

interface
uses
  System.Classes,
  DroneDelivery.Model.Drone,
  DroneDelivery.Model.Order,
  DroneDelivery.DAO.DMDrone,
  DroneDelivery.DAO.DMOrder,
  SysUtils;

 Type
  TTripController = Class

  Public
    Function getTripResults : TStrings;
  End;

implementation

{ TTripController }

Function TTripController.getTripResults : TStrings;
Var
 I , CurrentWeight, MaxWeight, Trip :Integer;
 TripList : TStringList;
begin
 Trip := 1;
 TripList := TStringList.Create;
 DMDrone.dataDrones.First;
 DMDrone.dataDrones.IndexFieldNames := 'MaxWeight';
 DMOrder.dataOrders.First;
 DMOrder.dataOrders.IndexFieldNames := 'Weight';

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
        TripList.Add(DMDrone.dataDronesName.Value+' Goes to '+ DMOrder.dataOrdersWeight.Value.ToString +
                        ' Carrying '+ CurrentWeight.ToString+'g in his Trip #'+Trip.ToString);

      End;
      DMOrder.dataOrders.Next;

     End;
     DMDrone.dataDrones.Next;

   End;
   DMDrone.dataDrones.First;
   Inc(Trip,1);
 End;
 Result := TripList;

end;


end.
