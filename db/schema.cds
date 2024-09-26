using { managed, cuid } from '@sap/cds/common';

entity Precedents : managed, cuid {
    name: String(100);
    description: String(5000);
    published: Date;
    decided: Date;
    judge: Association to one Judges;
    courts: Association to one Courts;
}

entity Judges : managed, cuid {
    name: String(100);
    surname: String(100);
}

entity Courts : managed, cuid {
    name: String(100);
}