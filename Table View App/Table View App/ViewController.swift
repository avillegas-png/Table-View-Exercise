//
//  ViewController.swift
//  Table View App
//
//  Created by Alan Villegas on 8/4/20.
//  Copyright © 2020 Alan Villegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let alansSocks = ["Nike Socks", "Adidas Socks", "Reebok Socks", "Puma Socks"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return alansSocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = alansSocks[indexPath.row]
        return cell!
        
    }
    
}

