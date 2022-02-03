unit DroneDelivery.DAO.dmDrone;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DroneDelivery.Model.Drone;

type
  TdmDrone = class(TDataModule)
    dataDrones: TFDMemTable;
    dataDronesName: TStringField;
    dataDronesMaxWeight: TIntegerField;
    dtsDrones: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    Function DBClearDrones : Boolean;
    Function DBAddDrone (ADrone : TDrone) : Boolean;
    Function PopulateDrones (AFilename : String) : Boolean;
  end;

var
  DMDrone: TdmDrone;

implementation
Uses
DroneDelivery.DAO.DBConnection;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDrone }

Function TdmDrone.DBClearDrones : Boolean;
begin
  dataDrones.Data.DataView.DeleteAll(True);
  dataDrones.Refresh;

end;

function TdmDrone.DBAddDrone(ADrone: TDrone): Boolean;
begin
 With dataDrones do
  Begin
    Open;
    Append;
      Fields[0].AsString := ADrone.Name;
      Fields[1].AsFloat := ADrone.MaxWeight;
    Post;
    IndexFieldNames := 'MaxWeight'; // sort by "smallest" drone

  End;

end;

function TdmDrone.PopulateDrones(AFilename: String): Boolean; begin

  DBModule.PopulateDB(AFilename);
  dataDrones.IndexFieldNames := 'MaxWeight';
  dataDrones.First;

end;

end.
