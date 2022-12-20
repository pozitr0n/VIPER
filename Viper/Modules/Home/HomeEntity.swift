//
//  HomeEntity.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import Foundation
import UIKit

protocol HomeEntityProtocol {
    var logoutImage: UIImage { get }
    var showPhotoImage: UIImage { get }
}

struct HomeEntity: HomeEntityProtocol {
  
    var logoutImage: UIImage { get { return UIImage(named: "logout")! }}
    var showPhotoImage: UIImage { get { return UIImage(named: "showImage")! }}

}
