unit Customers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Libraries, cxGraphics, cxControls,
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
  dxLayoutContainer, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, MainDM, dxSkinsdxBarPainter, dxBar, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TfmCustomers = class(TfmLibrary)
    viwLibrary_customer_id: TcxGridDBColumn;
    viwLibrary_full_name: TcxGridDBColumn;
    viwLibrary_phone_number: TcxGridDBColumn;
    viwLibrary_email: TcxGridDBColumn;
    viwLibrary_factor: TcxGridDBColumn;
    bmrMain: TdxBarManager;
    bmrMainBar1: TdxBar;
    btnAddCustomer: TdxBarButton;
    imgMain: TcxImageList;
    actEditCustomer: TAction;
    procedure actEditCustomerExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCustomers: TfmCustomers;

implementation

{$R *.dfm}

uses
  Customer;

procedure TfmCustomers.actEditCustomerExecute(Sender: TObject);
var
  fm: TfmCustomer;
begin
  inherited;
  fm := TfmCustomer.Create(Self);
  try
    fm.ShowModal;
    if fm.ModalResult = mrOk then
      dmMain.vwCustomers.Refresh;
  finally
    FreeAndNil(fm);
  end;
end;

procedure TfmCustomers.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  fm: TfmCustomer;
  bmk: TBookMark;
  customer_id: integer;
begin
  inherited;

  customer_id := viwLibrary.DataController.Values[
    viwLibrary.DataController.FocusedRowIndex,
    viwLibrary_customer_id.Index];
  if dmMain.vwCustomers.Locate('CUSTOMER_ID', viwLibrary_customer_id then

  fm := TfmCustomer.Create(Self);
  try
    fm.edtFirstName.EditValue :=
      viwLibrary.DataController.Values[
        viwLibrary.DataController.FocusedRecordIndex,
        viwLibrary_full_name.Index];
    fm.ShowModal;
  finally
    FreeAndNil(fm);
  end;
end;

end.
