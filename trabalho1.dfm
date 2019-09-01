object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Button1: TButton
    Left = 56
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object atributo: TClientDataSet
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
    Left = 272
    Top = 112
    object atributoid: TIntegerField
      FieldName = 'id'
    end
    object atributonome: TStringField
      FieldName = 'nome'
    end
    object atributotipoum: TStringField
      FieldName = 'tipoum'
    end
    object atributotipodois: TStringField
      FieldName = 'tipodois'
    end
    object atributototal: TIntegerField
      FieldName = 'total'
    end
    object atributohp: TIntegerField
      FieldName = 'hp'
    end
    object atributoataque: TIntegerField
      FieldName = 'ataque'
    end
    object atributodefesa: TIntegerField
      FieldName = 'defesa'
    end
    object atributoespecialataque: TIntegerField
      FieldName = 'especialataque'
    end
    object atributoespecialdefesa: TIntegerField
      FieldName = 'especialdefesa'
    end
    object atributovelocidade: TIntegerField
      FieldName = 'velocidade'
    end
    object atributogeracao: TIntegerField
      FieldName = 'geracao'
    end
    object atributolegendario: TBooleanField
      FieldName = 'legendario'
    end
  end
end
