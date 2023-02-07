using {
    managed,
    sap
} from '@sap/cds/common';

namespace de.rangulvers.todo;


entity Tasks : managed {
    key ID       : UUID;
        title    : localized String(256);
        details  : localized String(2000);
        dueDate  : Date;
        assignee : Association to Assignee;
}

entity Assignee : managed {
    key ID        : UUID;
        firstName : String(100);
}
