//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Ponnam,Jagadeesh on 4/13/23.
//

import UIKit

class Product {
    var name : String?
    var category : String?
    
    init(name: String, category: String) {
        self.name = name
        self.category = category
    }
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Expecting to return number of product
        return products.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Create a cell
        var mycell = TableViewOutlet.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        //Populate a cell with some data
        mycell.textLabel?.text = products[indexPath.row].name
        
        //Return the cell
       return mycell
    }
    

    @IBOutlet weak var TableViewOutlet: UITableView!
     var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewOutlet.delegate = self
        TableViewOutlet.dataSource = self
        
        let p1 = Product(name: "MacBook Air", category: "Laptop")
        let p2 = Product(name: "Iphone", category: "Phone")
        let p3 = Product(name: "Air pods", category: "Accessories")
        let p4 = Product(name: "Apple", category: "Fruites")
        let p5 = Product(name: "Car", category: "Vehicles")
        
        products.append(p1)
        products.append(p2)
        products.append(p3)
        products.append(p4)
        products.append(p5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "DetailsSegue"{
            let destination = segue.destination as! ResultViewController
            //Send the selected product row
            destination.product = products[(TableViewOutlet.indexPathForSelectedRow?.row)!]
            
        }
    }


}

