//
//  DetailsVC.swift
//  LandmarkBook
//
//  Created by Ozan Çiçek on 29.09.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage 
    }
    
}
