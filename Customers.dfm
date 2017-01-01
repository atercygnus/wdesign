inherited fmCustomers: TfmCustomers
  Caption = 'Customers'
  ClientHeight = 499
  ClientWidth = 983
  Position = poMainFormCenter
  ExplicitWidth = 999
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Top = 44
    Width = 983
    Height = 455
    Align = alClient
    ExplicitTop = 44
    ExplicitWidth = 983
    ExplicitHeight = 455
    inherited grdLibrary: TcxGrid
      Width = 943
      Height = 423
      ExplicitWidth = 943
      ExplicitHeight = 423
      inherited viwLibrary: TcxGridDBTableView
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = dmMain.srcCustomers
        object cxGrid1DBTableView1customer_id: TcxGridDBColumn
          DataBinding.FieldName = 'customer_id'
          Visible = False
          VisibleForCustomization = False
        end
        object cxGrid1DBTableView1full_name: TcxGridDBColumn
          DataBinding.FieldName = 'full_name'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1phone_number: TcxGridDBColumn
          DataBinding.FieldName = 'phone_number'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1email: TcxGridDBColumn
          DataBinding.FieldName = 'email'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object cxGrid1DBTableView1factor: TcxGridDBColumn
          DataBinding.FieldName = 'factor'
          HeaderAlignmentHorz = taCenter
        end
      end
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = -1
    end
    inherited itmGrid: TdxLayoutItem
      Index = 0
    end
  end
  inherited actMain: TActionList
    object actEditCustomer: TAction
      Caption = 'actEditCustomer'
      OnExecute = actEditCustomerExecute
    end
  end
  object bmrMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = imgMain
    ImageOptions.LargeIcons = True
    ImageOptions.SmoothGlyphs = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 376
    Top = 168
    DockControlHeights = (
      0
      0
      44
      0)
    object bmrMainBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1017
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = imgMain
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAddCustomer'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnAddCustomer: TdxBarButton
      Action = actEditCustomer
      Category = 0
      LargeImageIndex = 0
    end
  end
  object imgMain: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 10748352
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0C09135B6447998391
          66DD8D9C6EEE94A474FA97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF93A373F98D9C6EEE829066DC5B6447990B0C09130000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000677251AE97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF818F65DA97A776FF97A776FF808E
          64D997A776FF97A776FF97A776FF97A776FF97A776FF97A776FF6A7553B30000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008F9E70F297A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF535C418C97A776FF97A776FF525A
          408A97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF93A273F80000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000909F70F397A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF25291D3E97A776FF97A776FF2226
          1B3A97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF93A373F90000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000079865ECC97A776FF97A7
          76FF97A776FF97A776FF97A776FF8C9B6DEC0202010397A776FF97A776FF0101
          010289986BE897A776FF97A776FF97A776FF97A776FF97A776FF7E8B62D40000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004C543B8097A776FF97A7
          76FF97A776FF97A776FF97A776FF5F694AA00000000097A776FF97A776FF0000
          00005C66489B97A776FF97A776FF97A776FF97A776FF97A776FF51593F880000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F100C1990A071F497A7
          76FF97A776FF97A776FF97A776FF313626520000000097A776FF97A776FF0000
          00002C31234B97A776FF97A776FF97A776FF97A776FF90A071F411130D1D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004148336E97A7
          76FF97A776FF97A776FF93A273F80708060C0000000097A776FF97A776FF0000
          000004050307909F70F397A776FF97A776FF97A776FF4148336E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004B53
          3B7F96A675FD97A776FF6B7653B4000000000000000000000000000000000000
          00000000000065704FAB97A776FF96A675FD4A523A7D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E211732565F43912F34254F000000000000000000000000000000000000
          0000000000002A2E2147535C418D1C1F16300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000014160F21636E4EA88E9D6FEF8E9D6FEF626C
          4CA50F110C1A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001E2117328E9D6FEF97A776FF97A776FF97A776FF97A7
          76FF89986BE81518112400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000607050A829066DC97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF7C8961D102030204000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004047326C97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF33382856000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000717D58BF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF646F4EA9000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008D9C6EEE97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF818F65DA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000377EA3B20000000000000000000000000000
          00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF8B9A6DEB000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000F23
          2D310D1E272A00000000020506074EB2E6FB050B0F10000000000A171E211127
          3237000000008B996CEA97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF808D64D8000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D1F
          272B49A8D9ED20485E660D1E272A4FB5EAFF112732371C41545B48A5D6E90E21
          2A2E00000000667150AC97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF5D67499D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000020485E664FB5EAFF3E8EB8C84FB5EAFF3E8FB8C94FB5EAFF214C626B0000
          0000000000001B1E152E909F70F397A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF8E9D6FEF15171023000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000306
          08090E1F282C3E8DB7C72A5F7B8603080A0B25546D773E8DB7C70E1F282C0205
          0607000000000000000017191226606A4BA288976AE697A776FF97A776FF8897
          6AE6606A4BA21518112400000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003983AAB94FB4
          E9FE4FB5EAFF4FB5EAFF0812181A0000000003080A0B4FB5EAFF4FB5EAFF4EB3
          E7FC3983A9B80102030300000000000000000000000001010102010101020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000070F
          1315122834393F8FB9CA275A757F02050607235068714094BFD011283338060D
          1113000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001D42555D4FB5EAFF3F8FB9CA4FB5EAFF4093BECF4FB5EAFF1F485D650000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000C1B
          232649A8D9ED235068710E20292D4FB5EAFF122A363B1F465B6349A7D8EB0C1C
          2528000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001024
          2F330F232E32000000000307090A4FB4E9FE07111618000000000C1C2528122A
          363B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003E8DB7C70000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end