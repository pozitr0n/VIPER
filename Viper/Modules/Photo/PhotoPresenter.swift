//
//  PhotoPresenter.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation

protocol PhotoPresenterProtocol: AnyObject {
   
    func configureView()
    func backToHomePressed()
    
    init (_ view: PhotoViewProtocol)
    
}

class PhotoPresenter: PhotoPresenterProtocol {
 
    weak var view:PhotoViewProtocol?
    
    var interactor: PhotoInteractorProtocol!
    var router: PhotoRouterProtocol!
    
    required init(_ view: PhotoViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        view?.setPhoto(image: interactor.photoImage)
    }
    
    func backToHomePressed() {
        router.backToHome()
    }
    
}
