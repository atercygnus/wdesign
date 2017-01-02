unit Customer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CreateEdit, cxGraphics, cxControls,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  System.Actions, Vcl.ActnList, dxLayoutContainer, cxClasses, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, MainDm;

type
  TfmCustomer = class(TvfmCreateEdit)
    edtFirstName: TcxMaskEdit;
    itmFirstName: TdxLayoutItem;
    edtLastName: TcxMaskEdit;
    itmLastName: TdxLayoutItem;
    edtPhone: TcxMaskEdit;
    itmPhone: TdxLayoutItem;
    edtEmail: TcxMaskEdit;
    itmEmail: TdxLayoutItem;
    edtFactor: TcxSpinEdit;
    itmFactor: TdxLayoutItem;
    edtAttracted: TcxLookupComboBox;
    itmAttractedThrough: TdxLayoutItem;
    procedure actConfirmExecute(Sender: TObject);
  private
    { Private declarations }
    FCustomerID: Variant;
  public
    { Public declarations }
    property CustomerID: Variant read FCustomerID write FCustomerID;
  end;

var
  fmCustomer: TfmCustomer;

implementation

{$R *.dfm}

procedure TfmCustomer.actConfirmExecute(Sender: TObject);
begin
  with dmMain.stpMakeCustomer do
  begin
    ParamByName('P_CUSTOMER_ID').Value :=
      FCustomerID;
    ParamByName('P_FIRST_NAME').Value :=
      edtFirstName.EditText;
    ParamByName('P_LAST_NAME').Value :=
      edtLastName.EditText;
    ParamByName('P_EMAIL').Value :=
      edtEmail.EditText;
    ParamByName('P_PHONE_NUMBER').Value :=
      edtPhone.EditText;
    ParamByName('P_FACTOR').Value :=
      edtFactor.EditValue;
    ExecProc;
  end;
  dmMain.dbMain.Commit;

  inherited;
end;

end.
