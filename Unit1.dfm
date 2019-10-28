object Form1: TForm1
  Left = 9
  Top = 161
  Width = 749
  Height = 317
  Caption = 'Form1'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 504
    Top = 96
    Width = 17
    Height = 13
    Caption = 'alf0'
  end
  object Label2: TLabel
    Left = 504
    Top = 136
    Width = 11
    Height = 13
    Caption = 'fi0'
  end
  object Label3: TLabel
    Left = 504
    Top = 56
    Width = 6
    Height = 13
    Caption = 'L'
  end
  object Label4: TLabel
    Left = 528
    Top = 176
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 528
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 352
    Top = 248
    Width = 105
    Height = 13
    Caption = 'Number of vibrations'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 16
    Width = 329
    Height = 257
    Shape = bsFrame
  end
  object Label7: TLabel
    Left = 528
    Top = 224
    Width = 32
    Height = 13
    Caption = 'Label7'
  end
  object TrackBar1: TTrackBar
    Left = 352
    Top = 48
    Width = 150
    Height = 33
    Max = 100
    Min = 50
    Frequency = 5
    Position = 100
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 352
    Top = 80
    Width = 150
    Height = 33
    Max = 180
    Min = 1
    Frequency = 10
    Position = 60
    TabOrder = 1
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 352
    Top = 120
    Width = 150
    Height = 45
    Max = 15
    Min = 1
    Position = 1
    TabOrder = 2
    OnChange = TrackBar3Change
  end
  object Button1: TButton
    Left = 352
    Top = 176
    Width = 161
    Height = 49
    Caption = 'RUN'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 480
    Top = 240
    Width = 33
    Height = 21
    TabOrder = 4
    Text = '10'
  end
  object CheckBox1: TCheckBox
    Left = 360
    Top = 16
    Width = 145
    Height = 17
    Caption = 'Center of mass vibrations'
    TabOrder = 5
  end
end
