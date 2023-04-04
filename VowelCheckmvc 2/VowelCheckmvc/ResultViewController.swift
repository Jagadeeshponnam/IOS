//
//  ResultViewController.swift
//  VowelCheckmvc
//
//  Created by Ponnam,Jagadeesh on 4/4/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    var stat = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result.text! = stat

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
