namespace salonicco.training;

using {
    cuid,
    managed,
    temporal,
    Country
} from '@sap/cds/common';
using salonicco.training as registry from './registry';
using salonicco.training as types from './types';
using salonicco.training as listvalues from './listvalues';

entity MovmentsMaster : managed, cuid {
    Account      : Association to registry.RegistryAccounts     @Core.Immutable  @title : 'ID Account';
    VATRate      : Decimal(16, 2)              @(
        title    : 'VATRate',
        Measures : {Unit : UOM}
    )                                                           @Core.Immutable;
    UOM          : String(1) default '%'       @Core.Immutable  @Semantics.unitOfMeasure;
    ImportoLordo : Decimal(16, 2)              @(
        title    : 'Importo Lordo',
        Measures : {Unit : Valuta}
    )                                                           @Core.Immutable;
    Valuta       : types.Valuta default 'EUR'  @Core.Immutable  @Semantics.currencyCode;
}
