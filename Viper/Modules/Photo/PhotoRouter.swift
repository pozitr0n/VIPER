//
//  PhotoRouter.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation
import UIKit

protocol PhotoRouterProtocol: AnyObject {
    func backToHome()
    init (_ viewController: PhotoView)
}

class PhotoRouter: PhotoRouterProtocol {

    weak var viewController: PhotoView?
    
    required init(_ viewController: PhotoView) {
        self.viewController = viewController
    }
    
    func backToHome() {
        viewController?.dismiss(animated: true, completion: nil)
    }
    
}
