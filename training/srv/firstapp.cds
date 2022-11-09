namespace salonicco.training;

using salonicco.training as registry from '../db/registry';
using salonicco.training as movments from '../db/movments';

service firstapp {
    entity RegistryPosition as projection on registry.RegistryPostions;
    entity MovmentsMaster   as projection on movments.MovmentsMaster;
}
