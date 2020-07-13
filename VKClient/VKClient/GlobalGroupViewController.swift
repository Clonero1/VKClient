//
//  GlobalGroupViewController.swift
//  VKClient
//
//  Created by Михаил on 13.07.2020.
//  Copyright © 2020 Михаил. All rights reserved.
//

import UIKit

class GlobalGroupViewController: UIViewController {
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
           }
       }

       extension GlobalGroupViewController: UITableViewDataSource {
           func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return groups.count
           }
           
           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               guard let cell = tableView.dequeueReusableCell(withIdentifier: "GlobalGroupCell") as? GlobalGroupcell else { fatalError() }
               
               cell.globalGroupTitle.text = groups[indexPath.row].0
               cell.globalGroupImage.image = groups[indexPath.row].1
               
               return cell
           }
           
           
       }

