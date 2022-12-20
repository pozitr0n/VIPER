//
//  HomeRouter.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol HomeRouterProtocol: AnyObject {
    
    func closeCurrentController()
    func showSecondController()
    init(_ viewController: HomeView)
    
}

class HomeRouter: HomeRouterProtocol {
    
    weak var viewController: HomeView?
    
    required init(_ viewController: HomeView) {
        self.viewController = viewController
    }
    
    func closeCurrentController() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
    func showSecondController() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifire, sender: nil)
    }
      
}
