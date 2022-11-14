namespace salonicco.training;

using salonicco.training as registry from '../db/registry';
using salonicco.training as movments from '../db/movments';

service Simpleapp {
    entity RegistryAccounts as projection on registry.RegistryAccounts;
    entity MovmentsMaster   as projection on movments.MovmentsMaster;
}
