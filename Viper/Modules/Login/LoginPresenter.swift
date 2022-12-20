//
//  LoginPresenter.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
    init(_ view: LoginViewProtocol)
    func configureView()
    func loginPressed()
}

class LoginPresenter: LoginPresenterProtocol {
    
    var interactor: LoginInteractorProtocol!
    weak var view: LoginViewProtocol?
    var router: LoginRouterProtocol!
    
    required init(_ view: LoginViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.setLoginButtonImage(image: interactor.login)
    }
    
    func loginPressed() {
        router.openHomePage()
    }
    
}
