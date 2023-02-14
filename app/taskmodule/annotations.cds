using TaskService as service from '../../srv/task-service';

annotate service.Tasks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'details',
            Value : details,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dueDate',
            Value : dueDate,
        },
    ]
);
annotate service.Tasks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'details',
                Value : details,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dueDate',
                Value : dueDate,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
