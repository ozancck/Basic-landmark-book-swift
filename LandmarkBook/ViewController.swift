//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ozan Çiçek on 29.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        var landmarkNames = [String]()
        landmarkNames.append("Anıtkabir")
        landmarkNames.append("Egypt")
        landmarkNames.append("statue Of Liberty")
        landmarkNames.append("Tower Of Pisa")
        
        var landmarkImages = [UIImage]()
        
        landmarkImages.append(UIImage(named: "anitkabir")!)
        landmarkImages.append(UIImage(named: "Egypt")!)
        landmarkImages.append(UIImage(named: "statueOfLiberty")!)
        landmarkImages.append(UIImage(named: "TowerofPisa")!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        content.text = "ozan"
        content.secondaryText="seses"
        
        cell.contentConfiguration = content
        return cell
        
    }


}

