unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCGrids, Vcl.ExtCtrls;

type
  Tfrm_Main = class(TForm)
    procedure btnAddClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Main: Tfrm_Main;

implementation

{$R *.dfm}



procedure Tfrm_Main.btnAddClick(Sender: TObject);
Var
  Controle : TControl;
begin

  grdPessoas.InsertControl(Controle);


  edtNome.Clear;
  edtBrinquedo.Clear;
  edtIdade.Clear;


End;




end.
