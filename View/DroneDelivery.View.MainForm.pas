unit DroneDelivery.View.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCGrids, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Math, FireDAC.Phys.SQLiteVDataSet,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait,
  DroneDelivery.Controller.Drone,
  DroneDelivery.Controller.Order;


type
  Tfrm_Main = class(TForm)
    pnlDrones: TPanel;
    pnlOrderTitle: TPanel;
    pnlOrders: TPanel;
    edtLocation: TEdit;
    edtWeight: TEdit;
    btnAddOrder: TButton;
    pnlTrips: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    btnGenerateTrips: TButton;
    Panel2: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    dbgDrones: TDBGrid;
    dbgOrders: TDBGrid;
    Memo1: TMemo;
    Panel10: TPanel;
    btnPopulateDrones: TSpeedButton;
    Panel11: TPanel;
    btnPopulateOrders: TSpeedButton;
    btnClearDrones: TSpeedButton;
    btnClearOrders: TSpeedButton;
    pnlMainLeft: TPanel;
    pnlMainClient: TPanel;
    pnlOrderEdits: TPanel;
    Panel1: TPanel;
    edtDroneName: TEdit;
    edtDroneMaxWeight: TEdit;
    btnAddDrone: TButton;

    procedure FormCreate(Sender: TObject);
    procedure btnAddDroneClick(Sender: TObject);
    procedure btnPopulateDronesClick(Sender: TObject);
    procedure btnPopulateOrdersClick(Sender: TObject);
    procedure btnClearDronesClick(Sender: TObject);
    procedure btnClearOrdersClick(Sender: TObject);
    procedure btnGenerateTripsClick(Sender: TObject);
    procedure btnAddOrderClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Main: Tfrm_Main;
  DroneController : TDroneController;
  OrderController : TOrderController;

implementation

uses
  DroneDelivery.Controller.Trip;

{$R *.dfm}

procedure Tfrm_Main.FormCreate(Sender: TObject);
begin
  DroneController := TDroneController.Create;
  DroneController.ConnectDBGrid(dbgDrones);

  OrderController := TOrderController.Create;
  OrderController.ConnectDBGrid(dbgOrders);

end;

{$REGION ' Drones   '}
  procedure Tfrm_Main.btnAddDroneClick(Sender: TObject);
  begin
    DroneController.addDrone(edtDroneName.Text,edtDroneMaxWeight.Text);

  end;

  procedure Tfrm_Main.btnPopulateDronesClick(Sender: TObject);
  begin
    DroneController.Populate;
    btnPopulateDrones.Enabled := False;

  end;

  procedure Tfrm_Main.btnClearDronesClick(Sender: TObject);
  begin
    DroneController.clearDrones;
    btnPopulateDrones.Enabled := True;

  end;

{$ENDREGION}
{$REGION ' Orders   '}
  procedure Tfrm_Main.btnAddOrderClick(Sender: TObject);
  begin
    OrderController.addOrder(edtLocation.Text,edtWeight.Text);

  end;

  procedure Tfrm_Main.btnPopulateOrdersClick(Sender: TObject);
  begin
    OrderController.Populate;
    btnPopulateOrders.Enabled := False;

  end;

  procedure Tfrm_Main.btnClearOrdersClick(Sender: TObject);
  begin
    OrderController.clearOrders;
    btnPopulateOrders.Enabled := True;

  end;


{$ENDREGION}

procedure Tfrm_Main.btnGenerateTripsClick(Sender: TObject);
Var
  Trips : TTripController;
begin
   if (dbgDrones.DataSource.DataSet.IsEmpty) or (dbgOrders.DataSource.DataSet.IsEmpty) then
    raise Exception.Create('At least one drone and one Order must be registered');
   Try
     Trips := TTripController.Create;
     Memo1.Lines := Trips.getTripResults;
   Finally
     Trips.Free;

   End;





end;



end.
