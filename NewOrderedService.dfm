inherited vfmCreateEdit1: TvfmCreateEdit1
  Caption = 'New Ordered Service'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxButton1: TcxButton
      Left = 57
      Top = 118
      TabOrder = 4
      ExplicitLeft = 57
      ExplicitTop = 118
    end
    inherited cxButton2: TcxButton
      Left = 138
      Top = 118
      TabOrder = 5
      ExplicitLeft = 138
      ExplicitTop = 118
    end
    object cxLookupComboBox1: TcxLookupComboBox [2]
      Left = 68
      Top = 10
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxLookupComboBox2: TcxLookupComboBox [3]
      Left = 68
      Top = 64
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object cxSpinEdit1: TcxSpinEdit [4]
      Left = 68
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object cxSpinEdit2: TcxSpinEdit [5]
      Left = 68
      Top = 91
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
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
      CaptionOptions.Text = 'Price:'
      Control = cxLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Order:'
      Control = cxLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Quantity:'
      Control = cxSpinEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = grpControls
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Estimation:'
      Control = cxSpinEdit2
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited actMain: TActionList
    Left = 136
    Top = 192
  end
end
