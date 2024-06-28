unit Gestran.DAO.Interfaces;

interface

uses
  System.Classes, Gestran.Model.Connection.Interfaces, System.Generics.Collections,
  Gestran.Model.Entity.Interfaces;

type
  iDAO = interface
    ['{BDE00015-69F2-4044-ACEF-095B88022A6A}']
    function Open(aQuery : iModelQuery; aTable : String;
    aFiltros : TDictionary<String , String>) : iDAO;
    function ExecSQL(aQuery : iModelQuery; aTable : String; aTypeCRUD : TTypeCRUD;
    aFiltros : TDictionary<String , String>) : iDAO;
  end;

  iDAOFactory = interface
    ['{8A289148-93F0-4EC9-845C-4C54518FF8A4}']
    function GetDAO : iDAO;
  end;

implementation

end.
