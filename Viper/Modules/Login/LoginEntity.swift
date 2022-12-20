//
//  LoginEntity.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation
import UIKit

protocol LoginEntityProtocol {
    
    var loginImageForButton: UIImage { get }
    
}

struct LoginEntity: LoginEntityProtocol {
 
    var loginImageForButton: UIImage { get { return UIImage(named: "Login")! }}
    
}
