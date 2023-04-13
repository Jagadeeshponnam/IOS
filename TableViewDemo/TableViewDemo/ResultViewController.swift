//
//  ResultViewController.swift
//  TableViewDemo
//
//  Created by Ponnam,Jagadeesh on 4/13/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var product : Product?

    @IBOutlet weak var DisplayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DisplayLabel.text = "The product \((product?.name)!) is of \((product?.category)!) category"
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
