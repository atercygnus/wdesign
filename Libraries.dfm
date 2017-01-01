object fmLibrary: TfmLibrary
  Left = 0
  Top = 0
  Caption = 'fmLibrary'
  ClientHeight = 456
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 969
    Height = 449
    TabOrder = 0
    object grdLibrary: TcxGrid
      Left = 10
      Top = 10
      Width = 919
      Height = 415
      TabOrder = 0
      object viwLibrary: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object lvlLibrary: TcxGridLevel
        GridView = viwLibrary
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itmGrid: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grdLibrary
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actMain: TActionList
    Left = 568
    Top = 176
  end
end
