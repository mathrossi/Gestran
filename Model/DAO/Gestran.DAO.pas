unit Gestran.DAO;

interface

uses
  Gestran.DAO.Interfaces, System.Classes, Gestran.Model.Connection.Interfaces,
  System.Generics.Collections, Gestran.Model.Entity.Interfaces;

type
  TDAO<T> = class(TInterfacedObject, iDAO)
    private
      FQuery : iModelQuery;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAO;
      function Open(aQuery : iModelQuery; aTable : String;
      aFiltros : TDictionary<String , String>) : iDAO;
      function ExecSQL(aQuery : iModelQuery; aTable : String; aTypeCRUD : TTypeCRUD;
      aFiltros : TDictionary<String , String>) : iDAO;
  end;

implementation

{ TDAO<T> }

function TDAO<T>.Open(aQuery : iModelQuery; aTable : String;
      aFiltros : TDictionary<String , String>) : iDAO;
var
  sql, colSelect, join, condicao, groupBy, orderBy : String;
begin
  Result := Self;

  aFiltros.TryGetValue('colSelect', colSelect);
  aFiltros.TryGetValue('join', join);
  aFiltros.TryGetValue('condicao', condicao);
  aFiltros.TryGetValue('groupBy', groupBy);
  aFiltros.TryGetValue('orderBy', orderBy);

  sql := 'select ' + colSelect + ' from ' + aTable;
  if join <> '' then
    sql := sql + join;
  if condicao <> '' then
    sql := sql + ' where ' + condicao;
  if groupBy <> '' then
    sql := sql + ' group by ' + groupBy;
  if orderBy <> '' then
    sql := sql + ' order by ' + orderBy;

  aQuery.Open(aTable, sql);
end;

constructor TDAO<T>.Create;
begin

end;

destructor TDAO<T>.Destroy;
begin

  inherited;
end;

function TDAO<T>.ExecSQL(aQuery : iModelQuery; aTable : String; aTypeCRUD : TTypeCRUD;
      aFiltros : TDictionary<String , String>) : iDAO;
var
  sql, colunas, valores, condicao : String;
begin
  Result := Self;

  aFiltros.TryGetValue('colunas', colunas);
  aFiltros.TryGetValue('valores', valores);
  aFiltros.TryGetValue('condicao', condicao);

  case aTypeCRUD of
    tpCreate: sql := 'insert into ' + aTable + '(' + colunas + ') values (' +
                       valores + ') ' + condicao;
    tpRead: ;
    tpUpdate: sql := 'update ' + aTable + ' set ' + colunas + ' ' + condicao;
    tpDelete: sql := 'delete from ' + aTable + ' where ' + condicao;
    tpSQL: sql := aTable;
  end;

  aQuery.ExecSQL(sql)
end;

class function TDAO<T>.New: iDAO;
begin
  Result := Self.Create;
end;

end.
