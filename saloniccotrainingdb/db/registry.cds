namespace salonicco.training;

using {
    cuid,
    managed,
    temporal,
    Country
} from '@sap/cds/common';
using salonicco.training as types from './types';
using salonicco.training as listvalues from './listvalues';

entity RegistryClients : managed {
    key IdClient : Integer;
        accounts : Composition of many RegistryAccounts
                       on accounts.IdAccount = $self;
}

entity RegistryAccounts : cuid, managed {
    key IdAccount   : Association to RegistryClients;
        AccountType : Association to listvalues.AccountType  @Core.Immutable  @assert.notNull  @title : 'Type of account';
}
