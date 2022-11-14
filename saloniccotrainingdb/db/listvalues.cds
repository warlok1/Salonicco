namespace salonicco.training;

using {
    sap,
    sap.common.CodeList
} from '@sap/cds/common';

entity AccountType : sap.common.CodeList {
    key name : String(3)  @title : 'Account Type'  @Common.Text : descr;
}

annotate AccountType with @title : 'Account Type';
