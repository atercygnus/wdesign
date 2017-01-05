unit NewOrder;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfmNewOrder = class(TvfmCreateEdit)
    edtCustomer: TcxLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edtStatus: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edtDueDate: TcxDateEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtComment: TcxMemo;
    dxLayoutItem6: TdxLayoutItem;
    edtAddress: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    procedure actConfirmExecute(Sender: TObject);
    procedure actConfirmUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmNewOrder: TfmNewOrder;

implementation

{$R *.dfm}

uses
  MainDM;

procedure TfmNewOrder.actConfirmExecute(Sender: TObject);
begin
  with dmMain.stpAddOrder do
  begin
    ParamByName('P_CUSTOMER_ID').Value :=
      edtCustomer.EditValue;
    ParamByName('P_STATUS_ID').Value :=
      edtStatus.EditValue;
    ParamByName('P_DUE_DATE').Value :=
      edtDueDate.EditValue;
    ParamByName('P_ADDRESS').Value :=
      edtAddress.EditingText;
    ParamByName('P_COMMENT').Value :=
      edtComment.Lines.Text;
    ExecProc;
  end;
  dmMain.dbMain.Commit;

  inherited;
end;

procedure TfmNewOrder.actConfirmUpdate(Sender: TObject);
begin
  inherited;

  TAction(Sender).Enabled := true
    and (edtCustomer.EditValue <> null)
    and (edtStatus.EditValue <> null);
end;

end.
