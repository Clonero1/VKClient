//
//  MyGroupViewController.swift
//  VKClient
//
//  Created by Михаил on 13.07.2020.
//  Copyright © 2020 Михаил. All rights reserved.
//

import UIKit

class MyGroupViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
     var groups = [
            ("Природа", UIImage(named: "image2")),
            ("Автомобили", UIImage(named: "image0")),
            ("Музыка", UIImage(named: "image1")),
            ("Фильмы", UIImage(named: "image3"))
        ]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
        }
    }

    extension MyGroupViewController: UITableViewDataSource {
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return groups.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell") as? MyGroupCell else { fatalError() }
            
            cell.myGroupTitle.text = groups[indexPath.row].0
            cell.myGroupImage.image = groups[indexPath.row].1
            
            return cell
        }
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
            if editingStyle == .delete {
                groups.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    }




extension MyGroupViewController: UITableViewDelegate {
    
}
