//
//  PhotoEntity.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation
import UIKit

protocol PhotoEntityProtocol {
    var photo: UIImage { get }
}

struct PhotoEntity: PhotoEntityProtocol {
  
    var photo: UIImage {
        get { return UIImage(named: "female")! }
      }
    
}
