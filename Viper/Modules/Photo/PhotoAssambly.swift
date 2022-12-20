//
//  PhotoAssambly.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol PhotoAssamblyProtocol: AnyObject {
    func configure(viewController: PhotoView)
}

class PhotoAssambly: PhotoAssamblyProtocol {
    
    func configure(viewController: PhotoView) {
       
        let presenter = PhotoPresenter(viewController)
        let interactor = PhotoInteractor(presenter)
        let router = PhotoRouter(viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
    
}
