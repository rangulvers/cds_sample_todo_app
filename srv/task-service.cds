using {de.rangulvers.todo as my} from '../db/schema';


service TaskService @(path: '/task') {
    entity Tasks    as projection on my.Tasks;
    entity Assignee as projection on my.Assignee;
    action addTask(title : String, details : String)
}
