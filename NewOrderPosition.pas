unit NewOrderPosition;

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
  System.Actions, Vcl.ActnList, dxLayoutContainer, cxClasses, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, MainDM;

type
  TfmNewOrderPosition = class(TvfmCreateEdit)
    edtPrice: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edtOrder: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edtQuantity: TcxSpinEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtEstimation: TcxSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    procedure actConfirmExecute(Sender: TObject);
    procedure actConfirmUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewOrderPosition: TfmNewOrderPosition;

implementation

{$R *.dfm}

procedure TfmNewOrderPosition.actConfirmExecute(Sender: TObject);
begin
  with dmMain.stpNewOrderPosition do
  begin
    ParamByName('P_PRICE_ID').Value :=
      edtPrice.EditValue;
    ParamByName('P_QUANTITY').Value :=
      edtQuantity.EditValue;
    ParamByName('P_ORDER_ID').Value :=
      edtOrder.EditValue;
    ParamByName('P_ESTIMATION').Value :=
      edtEstimation.EditValue;
    ExecProc;
  end;
  dmMain.dbMain.Commit;

  inherited;
end;

procedure TfmNewOrderPosition.actConfirmUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled :=
    (edtQuantity.EditValue > 0) and (edtEstimation.EditValue > 0);
end;

end.
