namespace salonicco.training;

using sap from '@sap/cds/common';

type Valuta : String(3);
annotate Valuta with @title : 'Valuta';

type BooleanExtended : String(3) enum {
    YES;
    NO;
    NA;
}
