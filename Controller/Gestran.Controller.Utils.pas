unit Gestran.Controller.Utils;

interface

uses
  StrUtils, System.SysUtils;

type
  TControllerUtils = class(TObject)
    private
    public
      constructor create;
      destructor destroy;
      function RemoveChar(Const Texto : String): String;
      function RemoveCharValor(Const Texto : String): String;
      function ValidaData(const Data : String): String;
  end;

implementation

{TControllerUtils}

constructor TControllerUtils.create;
begin
  inherited create;
end;

destructor TControllerUtils.destroy;
begin
  inherited destroy;
end;

function TControllerUtils.ValidaData(const Data:String): String;
begin
  try
    result := DateToStr(StrToDate(Data));
  except on E:EConvertError do
    result := E.Message;
  end;
end;

function TControllerUtils.RemoveChar(Const Texto:String):String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
      S := S + Copy(Texto, I, 1);
  end;
  result := S;
end;

function TControllerUtils.RemoveCharValor(const Texto: String): String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) or (Texto[I] = ',') then
      S := S + Copy(Texto, I, 1);
  end;
  result := S;
end;

end.
