//
//  HomeView.swift
//  Viper
//
//  Created by Raman Kozar on 19/12/2022.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    func setLogoutImage(image: UIImage)
    func setShowPhoto(image: UIImage)
}

class HomeView: UIViewController {

    @IBOutlet weak var logOutBtn: UIButton!
    @IBOutlet weak var showPhotoBtn: UIButton!
    
    var presenter: HomePresenterProtocol?
    var assambly: HomeAssamblyProtocol = HomeAssambly()
    let segueIdentifire: String = "HomeToPhoto"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assambly.configure(viewController: self)
        presenter?.configureView()
    }
    
    @IBAction func logOutBtnPressed(_ sender: Any) {
        presenter?.logOutPressed()
    }
  
    @IBAction func showPhotoBtnPressed(_ sender: Any) {
        presenter?.showPhotoPressed()
    }

}

extension HomeView: HomeViewProtocol {
   
    func setLogoutImage(image: UIImage) {
        logOutBtn.setBackgroundImage(image, for: .normal)
    }
    
    func setShowPhoto(image: UIImage) {
        showPhotoBtn.setBackgroundImage(image, for: .normal)
    }
    
}
