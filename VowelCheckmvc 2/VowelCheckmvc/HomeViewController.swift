//
//  ViewController.swift
//  VowelCheckmvc
//
//  Created by Ponnam,Jagadeesh on 4/4/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var status = ""
    @IBOutlet weak var input: UITextField!
    
    @IBAction func check(_ sender: UIButton) {
        var i = (input.text!)
        var l = i.lowercased()
        if(l.contains("a") || l.contains("e") || l.contains("i") || l.contains("o") || l.contains("u")){
            status = "Word contains Vowels 😁"
        }
        else{
            status = "Word doesnot contain Vowels ☹️"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "resultSegue"){
            var destination = segue.destination as! ResultViewController
            destination.stat = status
        }
    }


}

