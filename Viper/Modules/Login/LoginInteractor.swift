//
//  LoginInteractor.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation
import UIKit

protocol LoginInteractorProtocol: AnyObject {
    init(_ presenter: LoginPresenterProtocol)
    var login: UIImage { get }
}

class LoginInteractor: LoginInteractorProtocol {
   
    required init(_ presenter: LoginPresenterProtocol) {
        self.presenter = presenter
    }
  
    weak var presenter: LoginPresenterProtocol?
    let loginEntity: LoginEntityProtocol = LoginEntity()
    
    var login: UIImage {
        get { return loginEntity.loginImageForButton }
    }
    
}
