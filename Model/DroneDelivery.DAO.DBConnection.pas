unit DroneDelivery.DAO.DBConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait, Data.DB, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.DataSet;

type
  TDBModule = class(TDataModule)
    dataOrders: TFDMemTable;
    OrderLocation: TStringField;
    dataOrdersWeight: TIntegerField;
    dataOrdersSent: TBooleanField;
    DriverLink: TFDPhysSQLiteDriverLink;
    Connection: TFDConnection;
    LocalSQL: TFDLocalSQL;
    Query: TFDQuery;
    dataTrips: TFDMemTable;
    dataTripsId: TSmallintField;
    dataTripsCount: TSmallintField;
    StringField2: TStringField;
    dataTripsLocation: TStringField;
    dtsOrders: TDataSource;
    dtsTrips: TDataSource;
  private
    { Private declarations }
  public
  end;

var
  DBModule : TDBModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
