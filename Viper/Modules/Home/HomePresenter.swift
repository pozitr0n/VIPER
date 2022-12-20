//
//  HomePresenter.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol HomePresenterProtocol: AnyObject {
    func configureView()
    func logOutPressed()
    func showPhotoPressed()
    init(_ view: HomeViewProtocol)
}

class HomePresenter: HomePresenterProtocol {
    
    weak var view: HomeViewProtocol?
    
    var router: HomeRouterProtocol!
    var interactor: HomeInteractorProtocol!
    
    required init(_ view: HomeViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.setLogoutImage(image: interactor.loginImage)
        view?.setShowPhoto(image: interactor.showPhotoImage)
    }
    
    func logOutPressed() {
        router.closeCurrentController()
    }
    
    func showPhotoPressed() {
        router.showSecondController()
    }
    
}
