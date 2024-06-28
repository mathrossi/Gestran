unit Gestran.Model.Entity.Interfaces;

interface

uses
  Data.DB, Gestran.Model.Connection.Interfaces, System.Classes,
  System.Generics.Collections, FireDAC.Comp.Client;

type
  TTypeCRUD = (tpCreate, tpRead, tpUpdate, tpDelete, tpSQL);

  iModelEntity = interface
    ['{FF239A20-1A37-4E71-B023-348DDEEB7FA1}']
    function DataSet(aValue : TDataSource) : iModelEntity;
    function Open(aTable : String; aFiltros : TDictionary<String , String>) : iModelEntity;
    function ExecSQL(aTable : String; aTypeCRUD : TTypeCRUD;
    aFiltros : TDictionary<String , String>) : iModelEntity;
    function RecordCount : Integer;
    function ApplyUpdates : integer;
    function CommitUpdates : iModelEntity;
    function Close : iModelQuery;
    function CloneQuery : TFDQuery;
  end;

  iModelEntityFactory = interface
    ['{07D50FCF-085C-4370-9A91-67C3BA227EF7}']
    function QuerySQL(aTipoConnection : iModelConnectionFactory; aConnection : iModelConnection) : iModelEntity;
  end;

implementation

end.
