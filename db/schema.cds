using {
    managed,
    sap
} from '@sap/cds/common';

namespace de.rangulvers.todo;

entity Tasklist {
    key ID    : UUID;
        Items : Composition of many Tasks
}

entity Tasks : managed {
    key ID      : UUID;
        title   : String(256);
        details : String(2000);
        dueDate : Date;
}

entity Assignee : managed {
    key ID        : UUID;
        firstName : String(100);
}
