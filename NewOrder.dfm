inherited fmNewOrder: TfmNewOrder
  Caption = 'New Order'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxButton1: TcxButton
      Left = 159
      Top = 213
      TabOrder = 5
      ExplicitLeft = 159
      ExplicitTop = 213
    end
    inherited cxButton2: TcxButton
      Left = 240
      Top = 213
      TabOrder = 6
      ExplicitLeft = 240
      ExplicitTop = 213
    end
    object edtCustomer: TcxLookupComboBox [2]
      Left = 65
      Top = 10
      Properties.KeyFieldNames = 'customer_id'
      Properties.ListColumns = <
        item
          FieldName = 'full_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmMain.dsCustomers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object edtStatus: TcxLookupComboBox [3]
      Left = 65
      Top = 37
      Properties.KeyFieldNames = 'status_id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmMain.dsOrderStatuses
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object edtDueDate: TcxDateEdit [4]
      Left = 65
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object edtComment: TcxMemo [5]
      Left = 65
      Top = 118
      Properties.MaxLength = 4000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 89
      Width = 185
    end
    object edtAddress: TcxTextEdit [6]
      Left = 65
      Top = 91
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 250
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      Index = -1
    end
    inherited grpControls: TdxLayoutGroup
      ShowBorder = False
      Index = 0
    end
    inherited grpButtons: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutItem2: TdxLayoutItem
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Customer:'
      Control = edtCustomer
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status:'
      Control = edtStatus
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date:'
      Control = edtDueDate
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Comment:'
      Control = edtComment
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Address:'
      Control = edtAddress
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited actMain: TActionList
    Left = 176
    Top = 272
    inherited actConfirm: TAction
      OnUpdate = actConfirmUpdate
    end
  end
end
