//
//  ViewController.swift
//  HelloApp
//
//  Created by Ponnam,Jagadeesh on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOutlet: UITextField!
    
    @IBOutlet var inputOutlet1: UITextField!
    
    @IBOutlet weak var displaylabelOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitbuttonClick(_ sender: UIButton) {
        //Read the input from the text field and store it in a variable.
        var input = inputOutlet.text!
        var input1 = inputOutlet1.text!
        //Perform the string interpolation and assign it to the displayLabel.
        displaylabelOutlet.text = "Hello, \(input)!😊 , \(input1)!😎"
        
        
        
    }
}

