//
//  ViewController.swift
//  appsurge
//
//  Created by Adapa,Pydi Venkata Satya Ramesh on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Pat: UITextField!
    
    @IBOutlet weak var cost: UITextField!
    @IBOutlet weak var sur: UITextField!
    
    @IBOutlet weak var Imageview: UIImageView!
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Calc(_ sender: UIButton) {
        var patient = Pat.text!
        var c = Double(cost.text!)
        var type = sur.text!
        var totalcost = 0.0
        if(Pat.text! == "" || cost.text! == "" || sur.text! == ""){
            output.text = "Enter all the details"
        }
        else if(type == "Heart"){
            totalcost = c!*(1+(11.75/100.00))-500.00
            Imageview.image = UIImage(named: "Heart")
            output.text = "\(patient):\r Total Cost for Heart 🫀 surgery is\r $\(round(totalcost*100)/100.00)"
        }
        
    }
    @IBAction func Clear(_ sender: UIButton) {
        Pat.text = ""
        cost.text = ""
        sur.text = ""
        output.text = ""
    }
    
    

}

