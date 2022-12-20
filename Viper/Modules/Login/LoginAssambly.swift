//
//  LoginAssambly.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol LoginAssamblyProtocol: AnyObject {
    func configure(view: LoginView)
}

class LoginAssambly: LoginAssamblyProtocol {
    
    func configure(view: LoginView) {
        
        let presenter = LoginPresenter(view)
        let interactor = LoginInteractor(presenter)
        let router = LoginRouter(view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        
    }
    
}
