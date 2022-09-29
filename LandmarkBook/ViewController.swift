//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ozan Çiçek on 29.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
       
        landmarkNames.append("Anıtkabir")
        landmarkNames.append("Egypt")
        landmarkNames.append("statue Of Liberty")
        landmarkNames.append("Tower Of Pisa")
        
        
        
        landmarkImages.append(UIImage(named: "anitkabir")!)
        landmarkImages.append(UIImage(named: "Egypt")!)
        landmarkImages.append(UIImage(named: "statueOfLiberty")!)
        landmarkImages.append(UIImage(named: "TowerofPisa")!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        content.text = landmarkNames[indexPath.row]
        
        
        cell.contentConfiguration = content
        return cell
        
    }


}

