unit DroneDelivery.DAO.dmOrder;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DroneDelivery.Model.Order,DroneDelivery.DAO.DBConnection;

type
  TDMOrder = class(TDataModule)
    dataOrders: TFDMemTable;
    OrderLocation: TStringField;
    dataOrdersWeight: TIntegerField;
    dataOrdersSent: TBooleanField;
    dtsOrders: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ResetSentStatus;
    Function DBClearOrders : Boolean;
    Function DBAddOrder (AOrder : TOrder) : Boolean;
    Function PopulateOrders (AFilename : String) : Boolean;
  end;

var
  DMOrder: TDMOrder;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMOrder }

function TDMOrder.DBAddOrder(AOrder: TOrder): Boolean;
begin
 With dataOrders do
  Begin
    Open;
    Append;
      Fields[0].AsString := AOrder.Location;
      Fields[1].AsFloat := AOrder.Weight;
    Post;
    IndexFieldNames := 'Weight'; // sort by "Lightest" package

  End;

end;

function TDMOrder.DBClearOrders: Boolean;
begin
  dataOrders.Data.DataView.DeleteAll(True);
  dataOrders.Refresh;

end;

function TDMOrder.PopulateOrders(AFilename: String): Boolean;
begin
  DBModule.PopulateDB(AFilename);
  dataOrders.IndexFieldNames := 'Weight';
  dataOrders.First;
end;

procedure TDMOrder.ResetSentStatus;
begin
  With DBModule.Query do
  Begin
    SQL.Text := 'UPDATE ORDERS SET SENT = FALSE';
    ExecSQL;
    SQL.Clear;

  End;
  dataOrders.Refresh;
  dataOrders.IndexFieldNames := 'Weight';
  dataOrders.First;

end;

end.
