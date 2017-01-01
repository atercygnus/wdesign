inherited fmCustomer: TfmCustomer
  Caption = 'Customer'
  Position = poMainFormCenter
  ExplicitWidth = 639
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxButton1: TcxButton
      Left = 61
      Top = 172
      TabOrder = 6
      ExplicitLeft = 61
      ExplicitTop = 172
    end
    inherited cxButton2: TcxButton
      Left = 142
      Top = 172
      TabOrder = 7
      ExplicitLeft = 142
      ExplicitTop = 172
    end
    object edtFirstName: TcxMaskEdit [2]
      Left = 72
      Top = 10
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '['#1072'-'#1103#1040'-'#1071']+'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edtLastName: TcxMaskEdit [3]
      Left = 72
      Top = 37
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '['#1072'-'#1103#1040'-'#1071']+'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object edtPhone: TcxMaskEdit [4]
      Left = 72
      Top = 64
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d(\d\d?)? - \d\d - \d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = '3'
      Width = 121
    end
    object edtEmail: TcxMaskEdit [5]
      Left = 72
      Top = 91
      Properties.MaskKind = emkRegExprEx
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtFactor: TcxSpinEdit [6]
      Left = 72
      Top = 118
      Properties.AssignedValues.MinValue = True
      Properties.Increment = 0.100000000000000000
      Properties.LargeIncrement = 1.000000000000000000
      Properties.MaxValue = 10.000000000000000000
      Properties.ValueType = vtFloat
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 121
    end
    object edtAttracted: TcxLookupComboBox [7]
      Left = 72
      Top = 145
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 145
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
    object itmFirstName: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'First name:'
      Control = edtFirstName
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmLastName: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'Last name:'
      Control = edtLastName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmPhone: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'Phone num:'
      Control = edtPhone
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmEmail: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'Email:'
      Control = edtEmail
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmFactor: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'Factor:'
      Control = edtFactor
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmAttractedThrough: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.Text = 'Attracted:'
      Control = edtAttracted
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited actMain: TActionList
    Left = 248
    Top = 72
  end
end
