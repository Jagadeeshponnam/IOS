//
//  ViewController.swift
//  bmi
//
//  
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var heightOL: UITextField!
    
    
    @IBOutlet weak var weightOL: UITextField!
    
    var bmiValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcBmiBtnClicked(_ sender: UIButton) {
        var height = Double(heightOL.text!)
        var weight = Double(weightOL.text!)
        bmiValue = weight! / (height! * height!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "resultSegue"){
            //create a destination - ResultViewController
            var destination = segue.destination as! ResultViewController
            //assign values to ResultVC
            destination.destinationHeight = heightOL.text!
            destination.destinationWeight = weightOL.text!
            destination.result = String(bmiValue)
            if(bmiValue > 30.0) {
                destination.resultImage = "danger"
            }
            else if(bmiValue <= 29.9 && bmiValue >= 20) {
                destination.resultImage = "warning"
                
            }
            else if(bmiValue <= 19.5 && bmiValue >= 10.0) {
                destination.resultImage="perfect"
            }
            else {
                destination.resultImage = "low"
            }
        }
    }
    

}

