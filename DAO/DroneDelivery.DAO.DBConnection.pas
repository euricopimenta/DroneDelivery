unit DroneDelivery.DAO.DBConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait, Data.DB, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.DataSet,
  DroneDelivery.DAO.DMDrone;

type
  TDBModule = class(TDataModule)
    DriverLink: TFDPhysSQLiteDriverLink;
    Connection: TFDConnection;
    LocalSQL: TFDLocalSQL;
    Query: TFDQuery;
    dataTrips: TFDMemTable;
    dataTripsId: TSmallintField;
    dataTripsCount: TSmallintField;
    dataTripsDrone: TStringField;
    dataTripsLocation: TStringField;
    dtsTrips: TDataSource;

  private
    { Private declarations }
  public
    function PopulateDB(AFilename: String): Boolean;
  end;

var
  DBModule : TDBModule;

implementation
Uses
  DroneDelivery.DAO.DMOrder;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDBModule }

function TDBModule.PopulateDB(AFilename: String): Boolean;
begin
  With Query do
  Begin
    SQL.LoadFromFile(AFilename);
    ExecSQL;
    SQL.Clear;

  End;

end;

end.
