unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxLayoutContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxLayoutControl,
  dxSkinsdxBarPainter, System.ImageList, Vcl.ImgList, dxBar, System.Actions,
  Vcl.ActnList, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, MainDM, cxMemo, cxTextEdit, cxRichEdit;

type
  TfmMain = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    viwOrders: TcxGridDBTableView;
    lvlOrders: TcxGridLevel;
    grdOrders: TcxGrid;
    itmgrdOrders: TdxLayoutItem;
    viwOrdersorder_id: TcxGridDBColumn;
    viwOrderscustomer_name: TcxGridDBColumn;
    viwOrderscomment: TcxGridDBColumn;
    viwOrdersstatus_name: TcxGridDBColumn;
    viwOrdersdue_date: TcxGridDBColumn;
    viwOrderstotal_cost: TcxGridDBColumn;
    bmrMain: TdxBarManager;
    bmrTools: TdxBar;
    btnNewProject: TdxBarButton;
    imlMain: TcxImageList;
    actMain: TActionList;
    actNewOrder: TAction;
    lvlServicesOrdered: TcxGridLevel;
    viwServicesOrdered: TcxGridDBBandedTableView;
    actNewServiceOrder: TAction;
    viwServicesOrderedservice_name: TcxGridDBBandedColumn;
    viwServicesOrderedord_svc_id: TcxGridDBBandedColumn;
    viwServicesOrderedservice_id: TcxGridDBBandedColumn;
    viwServicesOrderedprice_id: TcxGridDBBandedColumn;
    viwServicesOrderedquantity: TcxGridDBBandedColumn;
    viwServicesOrderedorder_id: TcxGridDBBandedColumn;
    viwServicesOrderedstatus_id: TcxGridDBBandedColumn;
    viwServicesOrderedestimation: TcxGridDBBandedColumn;
    viwServicesOrderedstatus_name: TcxGridDBBandedColumn;
    viwServicesOrderedprice_per_unit: TcxGridDBBandedColumn;
    viwServicesOrderedtotal_price: TcxGridDBBandedColumn;
    btnCreateOrderPosition: TdxBarButton;
    viwOrdersaddress: TcxGridDBColumn;
    actEditCustomers: TAction;
    btnEditCustomers: TdxBarButton;
    viwOrderspayed: TcxGridDBColumn;
    viwOrdersremains: TcxGridDBColumn;
    actNewPayment: TAction;
    btnPayment: TdxBarButton;
    actNewCustomer: TAction;
    procedure actNewOrderExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actNewServiceOrderExecute(Sender: TObject);
    procedure actEditCustomersExecute(Sender: TObject);
    procedure actNewPaymentExecute(Sender: TObject);
    procedure actNewCustomerExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses
  NewOrder, NewOrderPosition, Customers, Customer, Payment;

procedure TfmMain.actEditCustomersExecute(Sender: TObject);
var
  fm: TfmCustomers;
begin
  fm := TfmCustomers.Create(Self);
  try
    fm.ShowModal;
  finally
    FreeAndNil(fm);
  end;
end;

procedure TfmMain.actNewCustomerExecute(Sender: TObject);
var
  fm: TfmCustomer;
begin
  fm := TfmCustomer.Create(Self);
  try
    fm.ShowModal;
    if fm.ModalResult = mrOK then
      dmMain.vwCustomers.Refresh;
  finally
    FreeAndNil(fm);
  end;
end;

procedure TfmMain.actNewOrderExecute(Sender: TObject);
var
  fm: TfmNewOrder;
begin
  fm := TfmNewOrder.Create(Self);
  try
    fm.ShowModal;
    if fm.ModalResult = mrOK then
      dmMain.vwOrders.Refresh;
  finally
    FreeAndNil(fm);
  end;
end;

procedure TfmMain.actNewPaymentExecute(Sender: TObject);
var
  fm: TfmPayment;
begin
  fm := TfmPayment.Create(Self);
  try
    fm.ShowModal;
    if fm.ModalResult = mrOK then
      dmMain.vwOrders.Refresh;
  finally
    FreeAndNil(fm);
  end;
end;

procedure TfmMain.actNewServiceOrderExecute(Sender: TObject);
var
  fm: TfmNewOrderPosition;
begin
  fm := TfmNewOrderPosition.Create(Self);
  try
    fm.ShowModal;
    if fm.ModalResult = mrOK then
      dmMain.vwServicesOrdered.Refresh;
  finally
    FreeAndNil(fm);
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  dmMain := TdmMain.Create(Self);
  dmMain.vwOrders.Open;
  dmMain.vwServicesOrdered.Open;
  dmMain.vwCustomers.Open;
  dmMain.tbOrderStatuses.Open;
end;

end.
