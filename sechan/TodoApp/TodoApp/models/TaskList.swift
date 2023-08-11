import Foundation

struct TaskList {
    static var list: [Task] = [
        Task(id: 0,
             title: "say hello to everyone",
             isComplated: false),
        Task(id: 1,
             title: "And to first meet, say nice to meet you",
             isComplated: true),
    ]
    
    static func complateList() -> [Task] {
        return list.filter{ $0.isComplated == true }
    }
    
    static func complatedTask(task: Task, isComplated: Bool) {
        for index in 0 ..< list.count {
            if list[index].id == task.id {
                list[index].isComplated = isComplated
            }
        }
    }
    
    static func deleteTask(task: Task) {
        list.removeAll(where: {$0.id == task.id })
    }
}
