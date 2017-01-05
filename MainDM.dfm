object dmMain: TdmMain
  OldCreateOrder = False
  Height = 798
  Width = 1067
  object vwOrders: TPSQLTable
    Database = dbMain
    Options = [dsoUseGUIDField]
    TableName = '"core"."vw_current_orders"'
    UpdateObject = vwUpdateOrders
    Left = 88
    Top = 96
    object vwOrdersorder_id: TIntegerField
      FieldName = 'order_id'
    end
    object vwOrderscustomer_name: TWideMemoField
      DisplayLabel = #1048#1084#1103' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
      FieldName = 'customer_name'
      BlobType = ftWideMemo
      Size = 4
    end
    object vwOrdersaddress: TWideStringField
      DisplayLabel = 'Address'
      FieldName = 'address'
      Size = 4000
    end
    object vwOrderscomment: TWideStringField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'comment'
      Size = 4000
    end
    object vwOrdersstatus_name: TWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'status_name'
      Size = 255
    end
    object vwOrdersdue_date: TDateField
      DisplayLabel = #1044#1077#1076#1083#1072#1081#1085
      FieldName = 'due_date'
    end
    object vwOrderstotal_cost: TFloatField
      DisplayLabel = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      FieldName = 'total_cost'
    end
    object vwOrderspayed: TFloatField
      FieldName = 'payed'
    end
    object vwOrdersremains: TFloatField
      FieldName = 'remains'
    end
  end
  object dbMain: TPSQLDatabase
    CharSet = 'UTF8'
    Connected = True
    Params.Strings = (
      'connect_timeout=15'
      'dbname=wdesign'
      'user=postgres'
      'password=t'
      'port=5432'
      'sslmode=prefer'
      'host=localhost')
    Left = 16
    Top = 16
  end
  object dsOrders: TDataSource
    DataSet = vwOrders
    Left = 168
    Top = 96
  end
  object vwUpdateOrders: TPSQLUpdateSQL
    InsertSQL.Strings = (
      'select core.add_order('
      '    1,'
      '    2,'
      '    :due_date,'
      '    :comment)')
    Left = 248
    Top = 96
  end
  object vwCustomers: TPSQLTable
    Database = dbMain
    Active = True
    Options = [dsoUseGUIDField]
    TableName = '"core"."vw_customers"'
    Left = 88
    Top = 144
    object vwCustomerscustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object vwCustomersfull_name: TWideMemoField
      FieldName = 'full_name'
      BlobType = ftWideMemo
      Size = 4
    end
    object vwCustomersphone_number: TWideStringField
      FieldName = 'phone_number'
      Size = 15
    end
    object vwCustomersemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object vwCustomersfactor: TFloatField
      FieldName = 'factor'
    end
    object vwCustomersattracted: TWideMemoField
      FieldName = 'attracted'
      BlobType = ftWideMemo
      Size = 4
    end
    object vwCustomersattraction_channel_id: TIntegerField
      FieldName = 'attraction_channel_id'
    end
    object vwCustomersattracted_by_id: TIntegerField
      FieldName = 'attracted_by_id'
    end
  end
  object dsCustomers: TDataSource
    DataSet = vwCustomers
    Left = 168
    Top = 144
  end
  object stpAddOrder: TPSQLStoredProc
    Database = dbMain
    Options = [dsoUseGUIDField]
    StoredProcName = 'core.add_order'
    Params = <
      item
        DataType = ftInteger
        Name = 'p_customer_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_status_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'p_due_date'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_address'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_comment'
        ParamType = ptInput
      end>
    Left = 496
    Top = 24
  end
  object tbOrderStatuses: TPSQLTable
    Database = dbMain
    Active = True
    Options = [dsoUseGUIDField]
    TableName = '"core"."order_statuses"'
    Left = 88
    Top = 192
    object tbOrderStatusesstatus_id: TAutoIncField
      FieldName = 'status_id'
    end
    object tbOrderStatusesname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 255
    end
  end
  object dsOrderStatuses: TDataSource
    DataSet = tbOrderStatuses
    Left = 168
    Top = 200
  end
  object vwServicesOrdered: TPSQLTable
    Database = dbMain
    Active = True
    Options = [dsoUseGUIDField]
    TableName = '"core"."vw_services_ordered"'
    Left = 88
    Top = 240
    object vwServicesOrderedservice_name: TWideStringField
      DisplayLabel = 'Service name'
      FieldName = 'service_name'
      Size = 255
    end
    object vwServicesOrderedord_svc_id: TIntegerField
      FieldName = 'ord_svc_id'
      Visible = False
    end
    object vwServicesOrderedservice_id: TIntegerField
      FieldName = 'service_id'
      Visible = False
    end
    object vwServicesOrderedprice_id: TIntegerField
      FieldName = 'price_id'
      Visible = False
    end
    object vwServicesOrderedquantity: TWideMemoField
      DisplayLabel = 'Quantity'
      FieldName = 'quantity'
      BlobType = ftWideMemo
      Size = 4
    end
    object vwServicesOrderedorder_id: TIntegerField
      FieldName = 'order_id'
      Visible = False
    end
    object vwServicesOrderedstatus_id: TIntegerField
      FieldName = 'status_id'
      Visible = False
    end
    object vwServicesOrderedestimation: TFloatField
      DisplayLabel = 'Estimation'
      FieldName = 'estimation'
    end
    object vwServicesOrderedstatus_name: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status_name'
      Size = 255
    end
    object vwServicesOrderedprice_per_unit: TFloatField
      DisplayLabel = 'Price per unit'
      FieldName = 'price_per_unit'
    end
    object vwServicesOrderedtotal_price: TFloatField
      DisplayLabel = 'Total price'
      FieldName = 'total_price'
    end
  end
  object dsServicesOrdered: TDataSource
    DataSet = vwServicesOrdered
    Left = 168
    Top = 248
  end
  object vwServicePrices: TPSQLTable
    Database = dbMain
    Active = True
    Options = [dsoUseGUIDField]
    TableName = '"core"."vw_service_prices"'
    Left = 88
    Top = 304
    object vwServicePricesprice_id: TIntegerField
      FieldName = 'price_id'
    end
    object vwServicePricesprice_name: TWideMemoField
      DisplayLabel = 'Price'
      FieldName = 'price_name'
      BlobType = ftWideMemo
      Size = 4
    end
    object vwServicePricesservice_id: TIntegerField
      FieldName = 'service_id'
    end
    object vwServicePricesservice_name: TWideStringField
      DisplayLabel = 'Service'
      FieldName = 'service_name'
      Size = 255
    end
    object vwServicePricesprice_per_unit: TFloatField
      DisplayLabel = 'Price per unit'
      FieldName = 'price_per_unit'
    end
    object vwServicePricesunit_id: TIntegerField
      FieldName = 'unit_id'
    end
    object vwServicePricesunit_name: TWideStringField
      DisplayLabel = 'Unit'
      FieldName = 'unit_name'
      Size = 255
    end
  end
  object dsServicePrices: TDataSource
    DataSet = vwServicePrices
    Left = 168
    Top = 304
  end
  object stpNewOrderPosition: TPSQLStoredProc
    Database = dbMain
    Options = [dsoUseGUIDField]
    StoredProcName = 'core.add_ordered_service'
    Params = <
      item
        DataType = ftInteger
        Name = 'p_price_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'p_quantity'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_order_id'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'p_estimation'
        ParamType = ptInput
      end>
    Left = 496
    Top = 72
  end
  object tbCustomers: TPSQLTable
    Database = dbMain
    Active = True
    Options = [dsoUseGUIDField]
    TableName = '"core"."customers"'
    Left = 248
    Top = 144
    object tbCustomerscustomer_id: TAutoIncField
      FieldName = 'customer_id'
    end
    object tbCustomersfirst_name: TWideStringField
      FieldName = 'first_name'
      Required = True
      Size = 255
    end
    object tbCustomerslast_name: TWideStringField
      FieldName = 'last_name'
      Required = True
      Size = 255
    end
    object tbCustomersphone_number: TWideStringField
      FieldName = 'phone_number'
      Size = 15
    end
    object tbCustomersemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object tbCustomersfactor: TFloatField
      FieldName = 'factor'
      Required = True
    end
    object tbCustomersattracted_through: TIntegerField
      FieldName = 'attracted_through'
    end
    object tbCustomersattracted_by: TIntegerField
      FieldName = 'attracted_by'
    end
  end
  object srcCustomers: TDataSource
    DataSet = tbCustomers
    Left = 320
    Top = 144
  end
  object stpMakeCustomer: TPSQLStoredProc
    Database = dbMain
    Options = [dsoUseGUIDField]
    StoredProcName = 'core.make_customer'
    Params = <
      item
        DataType = ftInteger
        Name = 'p_customer_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_first_name'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_last_name'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_phone_number'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_email'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'p_factor'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_attracted_through'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_attracted_by'
        ParamType = ptInput
      end>
    Left = 496
    Top = 120
  end
  object tbAttractionChannels: TPSQLTable
    Database = dbMain
    Active = True
    Options = [dsoUseGUIDField]
    TableName = '"core"."attraction_channels"'
    Left = 96
    Top = 408
  end
  object dsAttractionChannels: TDataSource
    DataSet = tbAttractionChannels
    Left = 224
    Top = 408
  end
  object stpNewPayment: TPSQLStoredProc
    Database = dbMain
    Options = [dsoUseGUIDField]
    StoredProcName = 'core.add_payment'
    Params = <
      item
        DataType = ftInteger
        Name = 'p_amount'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'p_order_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'p_date'
        ParamType = ptInput
      end>
    Left = 496
    Top = 168
  end
end
