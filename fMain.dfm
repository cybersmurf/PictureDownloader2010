object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Picture Downloader'
  ClientHeight = 432
  ClientWidth = 589
  Color = clBtnFace
  Constraints.MinHeight = 422
  Constraints.MinWidth = 579
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    589
    432)
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 376
    Top = 329
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 376
    Top = 377
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton2Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 589
    Height = 305
    Align = alTop
    Lines.Strings = (
      
        'Program projde tabulku kmenov'#253'ch karet MS3. Pokud najde na kart'#283 +
        ' odkaz na obr'#225'zek ve tvaru http://... '
      
        'st'#225'hne ho a ulo'#382#237' do nastaven'#233'ho '#250'lo'#382'i'#353't'#283' a zm'#283'n'#237' cestu v money ' +
        's3')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object MoneyPath: TLabeledEdit
    Left = 8
    Top = 330
    Width = 369
    Height = 21
    Anchors = [akLeft, akBottom]
    EditLabel.Width = 76
    EditLabel.Height = 13
    EditLabel.Caption = 'Cesta k Agend'#283
    TabOrder = 1
  end
  object ePicturePath: TLabeledEdit
    Left = 8
    Top = 378
    Width = 369
    Height = 21
    Anchors = [akLeft, akBottom]
    EditLabel.Width = 98
    EditLabel.Height = 13
    EditLabel.Caption = 'Adres'#225#345' pro obr'#225'zky'
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 413
    Width = 589
    Height = 19
    Panels = <
      item
        Width = 450
      end
      item
        Text = 'verze : 0.4.0'
        Width = 50
      end>
  end
  object Button3: TButton
    Left = 425
    Top = 376
    Width = 156
    Height = 25
    Caption = 'KONEC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object btn1: TButton
    Left = 425
    Top = 322
    Width = 156
    Height = 38
    Caption = 'St'#225'hni obr'#225'zky'
    TabOrder = 5
    OnClick = btn1Click
  end
end
