import UIKit

class TodoListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var taskSwitch: UISwitch!
    
    var task: Task?
    
    @IBAction func switchChanged(_ sender: Any) {
        guard let task else { return }
        if taskSwitch.isOn {
            textLabel?.text = nil
            textLabel?.attributedText = task.title.strikeThrough()
            TaskList.complatedTask(task: task, isComplated: true)
        } else {
            textLabel?.attributedText = nil
            textLabel?.text = task.title
        }
        taskSwitch.isOn = task.isComplated
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
