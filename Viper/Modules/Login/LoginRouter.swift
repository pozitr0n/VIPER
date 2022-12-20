//
//  LoginRouter.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol LoginRouterProtocol: AnyObject {
    init (_ viewController: LoginView)
    func openHomePage()
}

class LoginRouter: LoginRouterProtocol {
    
    weak var viewController: LoginView?
    
    required init(_ viewController: LoginView) {
        self.viewController = viewController
    }

    func openHomePage() {
        viewController?.performSegue(withIdentifier: viewController!.segueIdentifier, sender: nil)
    }

}
