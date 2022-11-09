namespace salonicco.training;

using {
    sap,
    sap.common.CodeList
} from '@sap/cds/common';

entity MovmentSign : sap.common.CodeList { // DA IMPLEMENTARE!!
    key name : String(1)  @title : 'Classificazione'  @Common.Text : descr;
}
