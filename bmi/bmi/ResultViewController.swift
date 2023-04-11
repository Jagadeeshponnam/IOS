//
//  ResultViewController.swift
//  bmi
//
//  
//

import UIKit

class ResultViewController: UIViewController {
    

    @IBOutlet weak var displayHeightOL: UILabel!
    
    
    @IBOutlet weak var displayweightOL: UILabel!
    

    @IBOutlet weak var displayResult: UILabel!
    
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    //Need variables to store the values.
    
    var destinationHeight = ""
    var destinationWeight = ""
    var result = ""
    var resultImage = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayHeightOL.text! += destinationHeight
        displayweightOL.text! += destinationWeight
        displayResult.text! += result
        imageOL.image = UIImage(named: resultImage)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func shakeBtnClicked(_ sender: UIButton) {
        var width = imageOL.frame.width
        width += 40
        var height = imageOL.frame.height
        height += 40
        var x  =  imageOL.frame.origin.x-20
        var y = imageOL.frame.origin.y-20
        var largeFrame = CGRect(x: x, y: y, width: width, height: height)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.imageOL.frame = largeFrame
        })
        
        
    }
    
    
}
