unit MainDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZStoredProcedure, ZAbstractConnection, ZConnection,
  PSQLDbTables;

type
  TdmMain = class(TDataModule)
    vwOrders: TPSQLTable;
    dbMain: TPSQLDatabase;
    dsOrders: TDataSource;
    vwUpdateOrders: TPSQLUpdateSQL;
    vwOrdersorder_id: TIntegerField;
    vwOrderscustomer_name: TWideMemoField;
    vwOrderscomment: TWideStringField;
    vwOrdersstatus_name: TWideStringField;
    vwOrdersdue_date: TDateField;
    vwOrderstotal_cost: TFloatField;
    vwCustomers: TPSQLTable;
    dsCustomers: TDataSource;
    stpAddOrder: TPSQLStoredProc;
    tbOrderStatuses: TPSQLTable;
    dsOrderStatuses: TDataSource;
    tbOrderStatusesstatus_id: TAutoIncField;
    tbOrderStatusesname: TWideStringField;
    vwCustomerscustomer_id: TIntegerField;
    vwCustomersfull_name: TWideMemoField;
    vwCustomersphone_number: TWideStringField;
    vwCustomersemail: TWideStringField;
    vwCustomersfactor: TFloatField;
    vwServicesOrdered: TPSQLTable;
    dsServicesOrdered: TDataSource;
    vwServicesOrderedord_svc_id: TIntegerField;
    vwServicesOrderedservice_id: TIntegerField;
    vwServicesOrderedprice_id: TIntegerField;
    vwServicesOrderedquantity: TWideMemoField;
    vwServicesOrderedorder_id: TIntegerField;
    vwServicesOrderedstatus_id: TIntegerField;
    vwServicesOrderedestimation: TFloatField;
    vwServicesOrderedstatus_name: TWideStringField;
    vwServicesOrderedprice_per_unit: TFloatField;
    vwServicesOrderedtotal_price: TFloatField;
    vwServicesOrderedservice_name: TWideStringField;
    vwServicePrices: TPSQLTable;
    dsServicePrices: TDataSource;
    vwServicePricesprice_id: TIntegerField;
    vwServicePricesprice_name: TWideMemoField;
    vwServicePricesservice_id: TIntegerField;
    vwServicePricesservice_name: TWideStringField;
    vwServicePricesprice_per_unit: TFloatField;
    vwServicePricesunit_id: TIntegerField;
    vwServicePricesunit_name: TWideStringField;
    stpNewOrderPosition: TPSQLStoredProc;
    vwOrdersaddress: TWideStringField;
    tbCustomers: TPSQLTable;
    srcCustomers: TDataSource;
    tbCustomerscustomer_id: TAutoIncField;
    tbCustomersfirst_name: TWideStringField;
    tbCustomerslast_name: TWideStringField;
    tbCustomersphone_number: TWideStringField;
    tbCustomersemail: TWideStringField;
    tbCustomersfactor: TFloatField;
    tbCustomersattracted_through: TIntegerField;
    tbCustomersattracted_by: TIntegerField;
    stpMakeCustomer: TPSQLStoredProc;
    vwCustomersattracted: TWideMemoField;
    vwCustomersattraction_channel_id: TIntegerField;
    vwCustomersattracted_by_id: TIntegerField;
    tbAttractionChannels: TPSQLTable;
    dsAttractionChannels: TDataSource;
    vwOrderspayed: TFloatField;
    vwOrdersremains: TFloatField;
    stpNewPayment: TPSQLStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

resourcestring
  resUnknownError = 'Unknown error occured. Contact Arseniy.';

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
