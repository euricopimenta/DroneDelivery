unit DroneDelivery.DAO.dmTrip;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TDMTrip = class(TDataModule)
    dataTrips: TFDMemTable;
    dataTripsId: TSmallintField;
    dataTripsCount: TSmallintField;
    dataTripsDrone: TStringField;
    dataTripsLocation: TStringField;
    dtsTrips: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ValidateWeight;
  end;

var
  DMTrip: TDMTrip;

implementation
Uses
  DroneDelivery.DAO.DBConnection;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMTrip }

Procedure TDMTrip.ValidateWeight;
begin
  With DBModule.Query do   //DBModule.Query.FieldValues['HEAVIEST']
  Begin
    SQL.Text := 'SELECT (SELECT MAX(WEIGHT)FROM ORDERS) AS HEAVIEST, '+
                '       (SELECT MAX(MAXWEIGHT)FROM DRONES) AS STRONGEST';
    Open;
    if StrToInt(FieldValues['HEAVIEST']) > StrToInt(FieldValues['STRONGEST']) then
      raise Exception.Create('There is no Drone to carry '+IntToStr(FieldValues['HEAVIEST'])+'g load');
    SQL.Clear;

  End;

end;

end.
