unit DroneDelivery.Controller.Order;

interface
uses
  DroneDelivery.Model.Order,
  DroneDelivery.DAO.DMOrder,
  VCL.DBGrids,
  SysUtils;


Type
  TOrderController = Class
  Private
    FOrder : TOrder;
  Public
    Constructor Create;
    Destructor Destroy ; Override;
    Procedure Populate;
    Procedure addOrder(Location : String; Weight : String);
    Procedure clearOrders;
    Procedure ConnectDBGrid(Grid : TDBGrid);

End;

implementation

{ TOrderController }

procedure TOrderController.addOrder(Location, Weight: String);
begin
  FOrder := TOrder.Create;
  Try
    FOrder.Location := Location;
    FOrder.Weight := Weight.ToDouble;
    DMOrder.DBAddOrder(FOrder);
  Finally
    FOrder.Free;

  End;

end;

procedure TOrderController.clearOrders;
begin
  DMOrder.DBClearOrders;

end;


constructor TOrderController.Create;
begin
   DMOrder := TDMOrder.Create(nil);
end;

destructor TOrderController.Destroy;
begin
  DMOrder.Free;
  inherited;
end;

procedure TOrderController.ConnectDBGrid(Grid: TDBGrid);
begin
  Grid.DataSource := DMOrder.dtsOrders;
  Grid.Update;

end;

procedure TOrderController.Populate;
begin
  DMOrder.PopulateOrders('.\ORDERS.SQL');

end;

end.
