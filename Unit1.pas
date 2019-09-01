unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.ExtDlgs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    atributos: TClientDataSet;
    atributosid: TIntegerField;
    atributosnome: TStringField;
    atributostipoum: TStringField;
    atributostipodois: TStringField;
    atributostotal: TIntegerField;
    atributoshp: TIntegerField;
    atributosataque: TIntegerField;
    atributosdefesa: TIntegerField;
    atributosespecialataque: TIntegerField;
    atributosespecialdefesa: TIntegerField;
    atributosvelocidade: TIntegerField;
    atributosgeracao: TIntegerField;
    atributoslegendario: TBooleanField;
    importar: TButton;
    btnpokemon: TButton;
    btnforca: TButton;
    conexaoDestino: TFDConnection;
    qDestino: TFDQuery;
    qUFO: TFDQuery;

    procedure importarClick(Sender: TObject);
    procedure btnpokemonClick(Sender: TObject);
    procedure btnforcaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnforcaClick(Sender: TObject);
begin
 atributos.First;
  while not atributos.Eof do
  Begin
    try
      try
        Form1.qDestino.Close;
        Form1.qDestino.SQL.Text := ' INSERT INTO forca (id, total, hp, ataque, defesa, especialataque, especialdefesa, velocidade) ' +
                                              ' VALUES ( ' + QuotedStr(atributosid.AsString) + ', ' +
                                              QuotedStr(atributostotal.AsString) + ', ' + QuotedStr(atributoshp.AsString) + ', ' +
                                              QuotedStr(atributosataque.AsString) + ', ' + QuotedStr(atributosdefesa.AsString) + ', ' +
                                              QuotedStr(atributosespecialataque.AsString) + ', ' + QuotedStr(atributosespecialdefesa.AsString) + ', '
                                              + QuotedStr(atributosvelocidade.AsString) + ' )';
        Form1.qDestino.ExecSQL;

      except

      end;
    finally
      atributos.Next;
    end;
  End;
end;

procedure TForm1.btnpokemonClick(Sender: TObject);
begin
atributos.First;
  while not atributos.Eof do
  Begin
    try
      try
        Form1.qDestino.Close;
        Form1.qDestino.SQL.Text := ' INSERT INTO descricao (id, nome, tipoum, tipodois, legendario) ' +
                                              ' VALUES ( ' + QuotedStr(atributosid.AsString) + ', ' +
                                              QuotedStr(atributosnome.AsString) + ', ' + QuotedStr(atributostipoum.AsString) + ', ' +
                                              QuotedStr(atributostipodois.AsString) + ', ' + QuotedStr(atributoslegendario.AsString) +' )';
        Form1.qDestino.ExecSQL;

      except
        on e : Exception do
        ShowMessage(e.Message);
      end;
    finally
      atributos.Next;
    end;
  End;
end;

procedure TForm1.importarClick(Sender: TObject);
var
  ArquivoCSV: TextFile;
  Contador, I: Integer;
  Linha, aux: String;
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

  AssignFile(ArquivoCSV, 'C:\Users\José Carlos\Desktop\trabalho\Poke.csv');

  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    Contador := 1;

    while not Eoln(ArquivoCSV) do
    begin
    try
     I := 0;

      atributos.Append;
      atributosid.AsInteger :=  StrToInt(MontaValor);
      atributosnome.AsString  := MontaValor;
      atributostipoum.AsString := MontaValor;
      atributostipodois.AsString := MontaValor;
      atributostotal.AsInteger := StrToInt(MontaValor);
      atributoshp.AsInteger := StrToInt(MontaValor);
      atributosataque.AsInteger := StrToInt(MontaValor);
      atributosdefesa.AsInteger := StrToInt(MontaValor);
      atributosespecialataque.AsInteger := StrToInt(MontaValor);
      atributosespecialdefesa.AsInteger := StrToInt(MontaValor);
      atributosvelocidade.AsInteger := StrToInt(MontaValor);
      atributosgeracao.AsInteger := StrToInt(MontaValor);
      atributoslegendario.AsBoolean := StrToBool(MontaValor);
      atributos.Post;
      Readln(ArquivoCSV, Linha);
      Contador := Contador + 1;
    except
      on e : Exception do
        ShowMessage(e.Message);
      end;

    end;

  finally
  CloseFile(ArquivoCSV);

  end;


end;

end.
