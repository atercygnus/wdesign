program WDESIGN;

uses
  Vcl.Forms,
  Main in 'Main.pas' {fmMain},
  MainDM in 'MainDM.pas' {DataModule1: TDataModule},
  Libraries in 'Libraries.pas' {fmLibrary},
  CreateEdit in 'CreateEdit.pas' {vfmCreateEdit},
  NewOrder in 'NewOrder.pas' {fmNewOrder},
  NewOrderPosition in 'NewOrderPosition.pas' {fmNewOrderPosition},
  Customers in 'Customers.pas' {fmCustomers},
  Customer in 'Customer.pas' {fmCustomer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
