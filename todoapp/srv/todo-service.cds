using {de.rangulvers.todo as my} from '../db/schema';


service TaskService {
    entity Tasks    as projection on my.Tasks;
    entity Assignee as projection on my.Assignee;
}
