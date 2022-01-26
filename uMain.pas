unit uMain;

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
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.VCLUI.Wait;

type
  Tfrm_Main = class(TForm)
    Panel1: TPanel;
    edtDroneName: TEdit;
    edtDroneMaxWeight: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    edtLocation: TEdit;
    edtWeight: TEdit;
    btnAddOrder: TButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    btnGenerateTrips: TButton;
    Panel2: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    btnAddDrone: TButton;
    mtbDrones: TFDMemTable;
    dbgDrones: TDBGrid;
    dbgOrders: TDBGrid;
    mtbDronesName: TStringField;
    mtbDronesMaxWeight: TIntegerField;
    mtbOrders: TFDMemTable;
    OrderLocation: TStringField;
    dtsDrones: TDataSource;
    dtsOrders: TDataSource;
    Memo1: TMemo;
    mtbTrips: TFDMemTable;
    StringField2: TStringField;
    mtbTripsId: TSmallintField;
    mtbTripsCount: TSmallintField;
    mtbTripsLocation: TStringField;
    mtbOrdersSent: TBooleanField;
    Panel10: TPanel;
    btnPopulateDrones: TSpeedButton;
    Panel11: TPanel;
    btnPopulateOrders: TSpeedButton;
    btnClearDrones: TSpeedButton;
    btnClearOrders: TSpeedButton;
    LocalSQL: TFDLocalSQL;
    Query: TFDQuery;
    DriverLink: TFDPhysSQLiteDriverLink;
    Connection: TFDConnection;
    mtbOrdersWeight: TIntegerField;
    procedure btnAddDroneClick(Sender: TObject);
    procedure btnAddOrderClick(Sender: TObject);
    Procedure ConnectLocalSQL;

    procedure FormCreate(Sender: TObject);
    procedure btnPopulateDronesClick(Sender: TObject);
    procedure btnPopulateOrdersClick(Sender: TObject);
    procedure btnClearDronesClick(Sender: TObject);
    procedure btnClearOrdersClick(Sender: TObject);
    procedure btnGenerateTripsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Main: Tfrm_Main;

implementation

{$R *.dfm}

procedure Tfrm_Main.FormCreate(Sender: TObject);
begin
  ConnectLocalSQL;
  btnPopulateDronesClick(Self);
  btnPopulateOrdersClick(Self);

end;

procedure Tfrm_Main.btnAddDroneClick(Sender: TObject);
begin
  With mtbDrones do
  Begin
    Open;
    Append;
    mtbDrones.Fields[0].AsString := edtDroneName.Text;
    mtbDrones.Fields[1].AsFloat := StrToFloat(edtDroneMaxWeight.Text);
    Post;
    IndexFieldNames := 'MaxWeight'; // sort by "smallest" drone

  End;

end;

procedure Tfrm_Main.btnAddOrderClick(Sender: TObject);
begin
  With mtbOrders do
  Begin
    Open;
    Append;
    mtbOrders.Fields[0].AsString := edtLocation.Text;
    mtbOrders.Fields[1].AsFloat := StrToFloat(edtWeight.Text);
    Post;

  End;

end;

procedure Tfrm_Main.btnClearDronesClick(Sender: TObject);
begin
  With Query Do
  Begin
    SQL.Text := 'DELETE FROM DRONES';
    ExecSQL;
    SQL.Clear;
  End;
  btnPopulateDrones.Enabled := True;

end;

procedure Tfrm_Main.btnClearOrdersClick(Sender: TObject);
begin
  With Query Do
  Begin
    SQL.Text := 'DELETE FROM ORDERS';
    ExecSQL;
    SQL.Clear;
  End;
  btnPopulateOrders.Enabled := True;
end;

procedure Tfrm_Main.btnGenerateTripsClick(Sender: TObject);
Var
 I , CurrentWeight, MaxWeight, Trip :Integer;
begin
 Trip := 1;
 mtbDrones.First;
 mtbOrders.First;
 while not mtbOrdersSent.Value do
 Begin
   for I := 0 to mtbDrones.RecordCount do
   Begin
     MaxWeight := mtbDrones.FieldValues['MaxWeight'];
     CurrentWeight := 0;

     While CurrentWeight < MaxWeight  do
     Begin
      if Not(mtbOrdersSent.Value) then
      Begin
        CurrentWeight := CurrentWeight + mtbOrdersWeight.Value;
        if CurrentWeight > MaxWeight then
          Break ;

        mtbOrders.Edit;
        mtbOrdersSent.AsBoolean := True;
        Memo1.Lines.Add(mtbDronesName.Value+' Goes to '+ OrderLocation.Value +
                        ' Carrying '+ CurrentWeight.ToString+'g in his Trip #'+Trip.ToString);

      End;
      mtbOrders.Next;

     End;
     mtbDrones.Next;

   End;
   mtbDrones.First;
   Inc(Trip,1);
 End;

end;

procedure Tfrm_Main.btnPopulateDronesClick(Sender: TObject);
begin
  With Query Do
  Begin
    SQL.LoadFromFile('.\DRONES.SQL');
    ExecSQL;
    SQL.Clear;
  End;
  mtbDrones.IndexFieldNames := 'MaxWeight';
  mtbDrones.First;
  btnPopulateDrones.Enabled := False;


end;

procedure Tfrm_Main.btnPopulateOrdersClick(Sender: TObject);
begin
  With Query do
  Begin
    SQL.LoadFromFile('.\ORDERS.SQL');
    ExecSQL;
    SQL.Clear;
  End;
  mtbOrders.IndexFieldNames := 'Weight';
  mtbOrders.First;
  btnPopulateOrders.Enabled := False;

end;

procedure Tfrm_Main.ConnectLocalSQL;
begin
  Try
    Connection.Connected := True;
    LocalSQL.Active := True;
    Query.Active := True;

  Except on E:Exception do
    ShowMessage(E.Message);

  End;

end;



end.
