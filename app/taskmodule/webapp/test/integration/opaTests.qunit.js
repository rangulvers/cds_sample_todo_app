sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'taskmodule/test/integration/FirstJourney',
		'taskmodule/test/integration/pages/TasksList',
		'taskmodule/test/integration/pages/TasksObjectPage'
    ],
    function(JourneyRunner, opaJourney, TasksList, TasksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('taskmodule') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTasksList: TasksList,
					onTheTasksObjectPage: TasksObjectPage
                }
            },
            opaJourney.run
        );
    }
);