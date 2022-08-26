//
//  ViewController.swift
//  NY Rest
//
//  Created by Igor Abovyan on 26.08.2022.
//

import UIKit

class ViewController: UITableViewController  {


    let restaurantNames = [
    "Burger Heroes", "Kitchen", "Bonsai", "X.O", "Speak Easy", "Morris Pub", "Love&Life", "Au Za'atar", "Olio e Più", "Sottocasa Pizzeria", "Scalini Fedeli", "Norma", "Bagels & Schmear", "Sathi", "The Consulate"
    ]
    
}

//MARK: - Life cycle
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.config()
    }
}

//MARK: - Configuration
extension ViewController {
    
    private func config() {
        self.setTitle()
    }
    
    private func setTitle() {
        self.navigationItem.title = "New York Restaurants"
        
    }
}


//MARK: - Table view data source
extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell.init(style: .value1, reuseIdentifier: identifier)
        }
        
        cell?.textLabel?.text = restaurantNames[indexPath.row]
        cell?.imageView?.image = UIImage.init(named: restaurantNames[indexPath.row])
        cell?.imageView?.layer.cornerRadius = (cell?.frame.size.height)! / 2
        cell?.imageView?.clipsToBounds = true
        return cell!
    }
}

//MARK: - Table view Delegate
extension ViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}

