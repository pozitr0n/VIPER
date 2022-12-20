//
//  HomeAssambly.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol HomeAssamblyProtocol: AnyObject {
    func configure(viewController: HomeView)
}

class HomeAssambly: HomeAssamblyProtocol {
    
    func configure(viewController: HomeView) {
        
        let presenter = HomePresenter(viewController)
        let interactor = HomeInteractor(presenter)
        let router = HomeRouter(viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        
    }
    
}
