//
//  HomeController.swift
//  Yoam
//
//  Created by user198524 on 6/30/21.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    
    
    //MARK: - Handlers
    
    @objc func handleMenuToggle() {
        
        print("Toggle menu..")
        
    }
    
    func configureNavigationBar() {
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "hamburgermenu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
}
