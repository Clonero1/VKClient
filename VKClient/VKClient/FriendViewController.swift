//
//  FriendViewController.swift
//  VKClient
//
//  Created by Михаил on 09.07.2020.
//  Copyright © 2020 Михаил. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    
    var friends = [
        ("Иванов Иван", UIImage(named: "image2")),
        ("Александр Сидоров", UIImage(named: "image0")),
        ("Алексей Зубенко", UIImage(named: "image1")),
        ("Елена Петрова", UIImage(named: "image3"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
}

extension FriendViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell") as? FriedCell else { fatalError() }
        
        cell.friendTitle.text = friends[indexPath.row].0
        cell.friendImage.image = friends[indexPath.row].1
        
        return cell
    }
    
    
}
