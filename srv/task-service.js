const cds = require('@sap/cds')

class TaskService extends cds.ApplicationService{
    init(){
        const {Tasks} = this.entities;

        this.after('READ', Tasks, each=>{
            console.log(each)
        })
        
        this.on('createTask', async req =>{
            let task = req.data
            await INSERT.into(Tasks).entries(task)
            
        })

        
        this.on('deleteTask', async req => {
            let task = req.data
            await DELETE.from(Tasks).where(task)
            console.log(task)
        })

        return super.init()
    }
}

module.exports = {TaskService}