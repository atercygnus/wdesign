unit CreateEdit;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  System.Actions, Vcl.ActnList, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxClasses, dxLayoutControl;

type
  TvfmCreateEdit = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    grpControls: TdxLayoutGroup;
    grpButtons: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    actMain: TActionList;
    actCancel: TAction;
    actConfirm: TAction;
    procedure actCancelExecute(Sender: TObject);
    procedure actConfirmExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vfmCreateEdit: TvfmCreateEdit;

implementation

{$R *.dfm}

procedure TvfmCreateEdit.actCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TvfmCreateEdit.actConfirmExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
