//
//  LoginView.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import UIKit

protocol LoginViewProtocol: AnyObject {
    func setLoginButtonImage(image: UIImage)
}

class LoginView: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    let segueIdentifier: String = "LoginToHome"
    var presenter: LoginPresenterProtocol!
    var assambly: LoginAssamblyProtocol = LoginAssambly()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assambly.configure(view: self)
        presenter.configureView()
        
    }   
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        presenter.loginPressed()
    }

}

extension LoginView: LoginViewProtocol {
    
    func setLoginButtonImage(image: UIImage) {
        loginBtn.setBackgroundImage(image, for: .normal)
    }
    
}
