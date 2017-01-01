unit CreateOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer,
  dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxMemo, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, MainDM, System.Actions,
  Vcl.ActnList;

type
  TfmCreateOrder = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    grpOrder: TdxLayoutGroup;
    grpButtons: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    edtCustomer: TcxLookupComboBox;
    itmCustomer: TdxLayoutItem;
    edtDueDate: TcxDateEdit;
    itmDueDate: TdxLayoutItem;
    edtComment: TcxMemo;
    itmComment: TdxLayoutItem;
    actMain: TActionList;
    actCreateOrder: TAction;
    actCancel: TAction;
    edtStatus: TcxLookupComboBox;
    itmStatus: TdxLayoutItem;
    procedure actCreateOrderExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCreateOrder: TfmCreateOrder;

implementation

{$R *.dfm}

procedure TfmCreateOrder.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfmCreateOrder.actCreateOrderExecute(Sender: TObject);
begin
  with dmMain.stpAddOrder do
  begin
    ParamByName('P_CUSTOMER_ID').Value :=
      edtCustomer.EditValue;
    ParamByName('P_STATUS_ID').Value :=
      edtStatus.EditValue;
    ParamByName('P_DUE_DATE').Value :=
      edtDueDate.EditValue;
    ParamByName('P_COMMENT').Value :=
      edtComment.Lines.ToString;
    ExecProc;
  end;
  dmMain.dbMain.Commit;

  ModalResult := mrOK;
end;

end.
