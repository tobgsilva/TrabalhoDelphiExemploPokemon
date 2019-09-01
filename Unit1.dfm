object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object importar: TButton
    Left = 268
    Top = 113
    Width = 99
    Height = 25
    Caption = 'Importar Arquivo'
    TabOrder = 0
    OnClick = importarClick
  end
  object btnpokemon: TButton
    Left = 24
    Top = 113
    Width = 115
    Height = 25
    Caption = 'Migrar Pokemon'
    TabOrder = 1
    OnClick = btnpokemonClick
  end
  object btnforca: TButton
    Left = 168
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Migrar For'#231'a'
    TabOrder = 2
    OnClick = btnforcaClick
  end
  object atributos: TClientDataSet
    PersistDataPacket.Data = {
      110100009619E0BD01000000180000000D000000000003000000110102696404
      00010000000000046E6F6D650100490000000100055749445448020002001400
      067469706F756D0100490000000100055749445448020002001400087469706F
      646F6973010049000000010005574944544802000200140005746F74616C0400
      0100000000000268700400010000000000066174617175650400010000000000
      0664656665736104000100000000000E657370656369616C6174617175650400
      0100000000000E657370656369616C64656665736104000100000000000A7665
      6C6F6369646164650400010000000000076765726163616F0400010000000000
      0A6C6567656E646172696F02000300000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tipoum'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tipodois'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'total'
        DataType = ftInteger
      end
      item
        Name = 'hp'
        DataType = ftInteger
      end
      item
        Name = 'ataque'
        DataType = ftInteger
      end
      item
        Name = 'defesa'
        DataType = ftInteger
      end
      item
        Name = 'especialataque'
        DataType = ftInteger
      end
      item
        Name = 'especialdefesa'
        DataType = ftInteger
      end
      item
        Name = 'velocidade'
        DataType = ftInteger
      end
      item
        Name = 'geracao'
        DataType = ftInteger
      end
      item
        Name = 'legendario'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 312
    Top = 156
    object atributosid: TIntegerField
      FieldName = 'id'
    end
    object atributosnome: TStringField
      FieldName = 'nome'
    end
    object atributostipoum: TStringField
      FieldName = 'tipoum'
    end
    object atributostipodois: TStringField
      FieldName = 'tipodois'
    end
    object atributostotal: TIntegerField
      FieldName = 'total'
    end
    object atributoshp: TIntegerField
      FieldName = 'hp'
    end
    object atributosataque: TIntegerField
      FieldName = 'ataque'
    end
    object atributosdefesa: TIntegerField
      FieldName = 'defesa'
    end
    object atributosespecialataque: TIntegerField
      FieldName = 'especialataque'
    end
    object atributosespecialdefesa: TIntegerField
      FieldName = 'especialdefesa'
    end
    object atributosvelocidade: TIntegerField
      FieldName = 'velocidade'
    end
    object atributosgeracao: TIntegerField
      FieldName = 'geracao'
    end
    object atributoslegendario: TBooleanField
      FieldName = 'legendario'
    end
  end
  object conexaoDestino: TFDConnection
    Params.Strings = (
      'Database=ufo'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 80
    Top = 160
  end
  object qDestino: TFDQuery
    Connection = conexaoDestino
    SQL.Strings = (
      '')
    Left = 152
    Top = 160
  end
  object qUFO: TFDQuery
    Connection = conexaoDestino
    Left = 216
    Top = 160
  end
end
