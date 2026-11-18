object FormConexaoTS: TFormConexaoTS
  Left = 0
  Top = 0
  Caption = 'Conex'#227'o TS'
  ClientHeight = 661
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 19
    Top = 8
    Width = 122
    Height = 15
    Caption = 'Caminho das conex'#245'es'
  end
  object Label2: TLabel
    Left = 19
    Top = 102
    Width = 139
    Height = 15
    Caption = 'Lista de conex'#245'es na pasta'
  end
  object Label3: TLabel
    Left = 488
    Top = 102
    Width = 24
    Height = 15
    Caption = 'item'
  end
  object EditConexaoTS: TEdit
    Left = 19
    Top = 21
    Width = 122
    Height = 23
    TabOrder = 0
    Text = 'C:\Solus\TS\'
  end
  object Memo1: TMemo
    Left = 19
    Top = 154
    Width = 444
    Height = 460
    TabOrder = 1
    OnClick = Memo1Click
  end
  object Button1: TButton
    Left = 19
    Top = 123
    Width = 444
    Height = 25
    Caption = 'Listar Conex'#245'es dispon'#237'veis na pasta'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 488
    Top = 154
    Width = 451
    Height = 460
    TabOrder = 3
  end
  object Button2: TButton
    Left = 488
    Top = 123
    Width = 451
    Height = 25
    Caption = 'Atualizar visualiza'#231#227'o'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 488
    Top = 620
    Width = 451
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 147
    Top = 21
    Width = 197
    Height = 23
    Caption = 'Alterar todos .rdp da pasta'
    TabOrder = 6
    OnClick = Button4Click
  end
end
