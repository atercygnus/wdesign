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
    colCustomerID: TcxGridDBColumn;
    colFullName: TcxGridDBColumn;
    colPhoneNumber: TcxGridDBColumn;
    colEmail: TcxGridDBColumn;
    colFactor: TcxGridDBColumn;
    bmrMain: TdxBarManager;
    bmrMainBar1: TdxBar;
    btnAddCustomer: TdxBarButton;
    imgMain: TcxImageList;
    actNewCustomer: TAction;
    actEditCustomer: TAction;
    procedure actNewCustomerExecute(Sender: TObject);
    procedure actEditCustomerExecute(Sender: TObject);
    procedure viwLibraryCellDblClick(Sender: TcxCustomGridTableView;
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

procedure TfmCustomers.actNewCustomerExecute(Sender: TObject);
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

procedure TfmCustomers.viwLibraryCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  actEditCustomerExecute(Self);
end;

procedure TfmCustomers.actEditCustomerExecute(Sender: TObject);
var
  fm: TfmCustomer;
  bmk: TBookMark;
  customer_id: Integer;
begin
  inherited;

  customer_id := viwLibrary.DataController.Values[
    viwLibrary.DataController.FocusedRowIndex,
    colCustomerID.Index];

  dmMain.tbCustomers.Refresh;
  bmk := dmMain.tbCustomers.GetBookmark;
  try
    if not dmMain.tbCustomers.Locate('CUSTOMER_ID', customer_id, []) then
      MessageDlg(resUnknownError, mtError, [mbOK], 0);
    fm := TfmCustomer.Create(Self);
    try
      fm.CustomerID := customer_id;
      fm.edtFirstName.EditValue :=
        dmMain.tbCustomers.FieldByName('FIRST_NAME').Value;
      fm.edtLastName.EditValue :=
        dmMain.tbCustomers.FieldByName('LAST_NAME').Value;
      fm.edtPhone.EditValue :=
        dmMain.tbCustomers.FieldByName('PHONE_NUMBER').Value;
      fm.edtEmail.EditValue :=
        dmMain.tbCustomers.FieldByName('EMAIL').Value;
      fm.edtFactor.EditValue :=
        dmMain.tbCustomers.FieldByName('FACTOR').Value;
      fm.ShowModal;
    finally
      FreeAndNil(fm);
      dmMain.vwCustomers.Refresh;
      dmMain.tbCustomers.Refresh;
    end;
  finally
    if dmMain.tbCustomers.BookmarkValid(bmk) then
      dmMain.tbCustomers.GotoBookmark(bmk);
  end;
end;

end.
