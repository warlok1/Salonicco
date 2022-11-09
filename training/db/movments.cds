namespace salonicco.training;

using {
    cuid,
    managed
} from '@sap/cds/common';


using salonicco.training as types from './types';
using salonicco.training as listvalues from './listvalues';
using salonicco.training as registry from './registry';

// --------------------------------------------------------------------------------------------------------------------- //
// ----------------------------------------------------- Movments ----------------------------------------------------- //
// --------------------------------------------------------------------------------------------------------------------- //

// ----------------------------------------------> Movimentazioni

entity MovmentsMaster : managed, cuid {
    Posizione            : Association to registry.RegistryPostions     @Core.Immutable  @title : 'Position ID';
    PaymentDate          : Date                        @title : 'Payment Date Movment';
    ImportoLordo         : Decimal(16, 2)              @(
        title    : 'Importo Lordo',
        Measures : {Unit : Valuta}
    )                                                                   @Core.Immutable;
    MovimentoRiferimento : Association to MovmentsMaster                @Core.Immutable  @title : 'Linked Movment';
    Valuta               : types.Valuta default 'EUR'  @Core.Immutable  @Semantics.currencyCode;
}

annotate MovmentsMaster with @title : 'Movimentazioni';
