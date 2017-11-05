//
//  SecondViewController.swift
//  Homework4
//
//  Created by millennium on 05.11.17.
//  Copyright © 2017 millennium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

        let food = ["pancake", "bun", "cheesecake", "cake", "toast", "wafers", "pie", "strudel", "bread", "baguette"]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        cell.textLabel?.text = food[indexPath.row]
        cell.imageView?.image = UIImage(named: "food")
        
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
