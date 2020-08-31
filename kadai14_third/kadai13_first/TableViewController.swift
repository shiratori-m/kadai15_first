//
//  TableViewController.swift
//  kadai13_first
//
//  Created by 白鳥貢 on 2020/08/25.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.

import UIKit

struct Fruit {
    var named:String
    var isChecked:Bool
}

class TableViewController: UITableViewController {
    
    private var fruits = [Fruit(named: "りんご", isChecked: true),Fruit(named: "みかん", isChecked: false),
                          Fruit(named: "バナナ", isChecked: true),Fruit(named: "パイナップル", isChecked: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows

        return fruits.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell

        if fruits[indexPath.row].isChecked{
            cell.checkView.image = UIImage(named: "check")
        }else{
            cell.checkView.image = nil
        }
        
        cell.label.text = fruits[indexPath.row].named
        return cell
    }
    
    @IBAction func cancel(segue:UIStoryboardSegue){
    }
    
    @IBAction func save(segue:UIStoryboardSegue){
        let addViewController = segue.source as! AddViewController
        guard let fruit = addViewController.fruit
            else{
                return
        }
        fruits.append(Fruit(named:fruit, isChecked: false))
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        fruits[indexPath.row].isChecked.toggle()
        tableView.reloadData()
        
//        fruitsbool[indexPath.row].toggle()
//        tableView.reloadData()
    }
    
}
