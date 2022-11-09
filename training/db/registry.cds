namespace salonicco.training;

using {
    cuid,
    managed,
    temporal,
    Country
} from '@sap/cds/common';
using salonicco.training as types from './types';
using salonicco.training as listvalues from './listvalues';

// --------------------------------------------------------------------------------------------------------------------- //
// ---------------------------------------------------- Registry  ---------------------------------------------------- //
// --------------------------------------------------------------------------------------------------------------------- //

// ----------------------------------------------> Registry Postions
entity RegistryPostions : managed {
    key IdPosizione                : String(14)             @title : 'ID Posizione';
        SospensioneManuale         : Boolean default false  @title : 'Sospensione Manuale';
        DataSospensione            : Date                   @title : 'Data Sospensione';
        EnteNonCommerciale         : types.BooleanExtended    @title : 'Ente Non Commerciale';
        PresenzaBancaIntermediaria : Boolean default false  @title : 'Presenza Banca Intermediaria';
        AliquotaManualeDEM         : Decimal(16, 2)         @(
            title    : 'Aliquota Manuale DEM',
            Measures : {Unit : UOM}
        );
        UOM                        : String(1) default '%'  @Core.Immutable  @Semantics.unitOfMeasure;
}

annotate RegistryPostions with @title : 'Registry Postions';
annotate RegistryPostions with @cds.odata.valuelist;
