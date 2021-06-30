//
//  ContainerController.swift
//  Yoam
//
//  Created by user198524 on 6/30/21.
//

import UIKit

class ContainerController: UIViewController {

    class AppDelegate: NSObject, UIApplicationDelegate {
        
        var window: UIWindow?
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
            window = UIWindow()
            window?.makeKeyAndVisible()
            window?.rootViewController = ContainerController()
            
            return true
        }
    }
    
    // MARK: - Properties
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - Handlers
    
    func configureHomeController() {
        let homeController = HomeController()
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
        
        
    }
    
    func configureMenuController() {
        
        
    }
    
}
