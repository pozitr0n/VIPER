//
//  PhotoInteractor.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation
import UIKit

protocol PhotoInteractorProtocol: AnyObject {
    var photoImage: UIImage { get }
    init(_ presenter: PhotoPresenterProtocol)
}

class PhotoInteractor: PhotoInteractorProtocol {

    weak var presenter: PhotoPresenterProtocol?
    
    let entityProtocol: PhotoEntityProtocol = PhotoEntity()
    
    required init (_ presenter: PhotoPresenterProtocol) {
        self.presenter = presenter
    }
    
    var photoImage: UIImage {
        get {
            return entityProtocol.photo
        }
    }
    
}
