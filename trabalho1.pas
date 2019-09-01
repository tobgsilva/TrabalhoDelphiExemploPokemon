unit trabalho1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    atributo: TClientDataSet;
    atributoid: TIntegerField;
    atributonome: TStringField;
    atributotipoum: TStringField;
    atributotipodois: TStringField;
    atributototal: TIntegerField;
    atributohp: TIntegerField;
    atributoataque: TIntegerField;
    atributodefesa: TIntegerField;
    atributoespecialataque: TIntegerField;
    atributoespecialdefesa: TIntegerField;
    atributovelocidade: TIntegerField;
    atributogeracao: TIntegerField;
    atributolegendario: TBooleanField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  ArquivoCSV: TextFile;
  Contador, I: Integer;
  Linha: String;

  function MontaValor: String;
  var
    ValorMontado: String;
  begin
    ValorMontado := '';
    inc(I);
    While Linha[I] >= ' ' do
    begin
      If Linha[I] = ';' then
        break;
      ValorMontado := ValorMontado + Linha[I];
      inc(I);
    end;
    result := ValorMontado;
  end;

begin


begin
  // Carregando o arquivo ...
  AssignFile(ArquivoCSV, 'C:\Users\José Carlos\Desktop\trabalho\Poke.csv');

  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    Contador := 1;

    while not Eoln(ArquivoCSV) do
    begin
      I := 0;

      atributo.Append;
      atributoid.AsInteger              := StrToInt(MontaValor);
      atributonome.AsString            := AnsiUpperCase(MontaValor);
      atributotipoum.AsInteger            :=  StrToInt(MontaValor);
      atributotipodois.AsInteger := StrToInt(MontaValor);
      atributototal.AsInteger := StrToInt(MontaValor);
      atributohp.AsInteger := StrToInt(MontaValor);
      atributoataque.AsInteger := StrToInt(MontaValor);
      atributodefesa.AsInteger := StrToInt(MontaValor);
      atributoespecialataque.AsInteger := StrToInt(MontaValor);
      atributoespecialdefesa.AsInteger := StrToInt(MontaValor);
      atributovelocidade.AsInteger := StrToInt(MontaValor);
      atributogeracao.AsInteger := StrToInt(MontaValor);
      atributolegendario.AsBoolean := StrToBool(MontaValor);

      atributo.Post;

      Readln(ArquivoCSV, Linha);
      Contador := Contador + 1;
    end;

  finally
    CloseFile(ArquivoCSV);
  end;

end;
end;

end.
