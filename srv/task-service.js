const cds = require('@sap/cds')

class TaskService extends cds.ApplicationService{
    init(){
        const {Tasks} = this.entities;

        this.after('READ', Tasks, each=>{
            console.log(each)
        })
        
        this.on('addTask', async req =>{
            let task = req.data
            await INSERT.into(Tasks).entries(task)
        })

        return super.init()
    }
}

module.exports = {TaskService}