import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController = UINavigationController()
        
        let viewController1 =  UIViewController()
        viewController1.title = "First View Controller"
        navigationController?.setViewControllers([viewController1], animated: false)
        
        addChild(navigationController!)
        view.addSubview(navigationController!.view)
        navigationController!.didMove(toParent: self)
        
        navigationController?.view.frame = view.bounds
        
        let Button = UIButton(type: .system)
        Button.setTitle("Push View Controller", for: .normal)
        Button.addTarget(self, action: #selector(pushViewController), for: .touchUpInside)
        navigationController?.navigationBar.addSubview(Button)
    }
    
    @objc func pushViewController() {
        let newViewController = UIViewController()
        newViewController.title = "New View Controller"
        navigationController?.pushViewController(newViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
}

