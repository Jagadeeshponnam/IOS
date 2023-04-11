//
//  ResultViewController.swift
//  Practice
//
//  
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var SidOL: UILabel!
    
    
    @IBOutlet weak var resultOL: UILabel!
    
    
    @IBOutlet weak var ImgOL: UIImageView!
    
    var sID = ""
    var CrsId = ""
    var CrsName = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SidOL.text = "Your Student ID is : \(sID)"
        resultOL.text = "you have successfully enrolled in:\(CrsId),\(CrsName)"
        ImgOL.image = UIImage(named: image)
        
        
        var width = ImgOL.frame.width
                width += 40
                var height = ImgOL.frame.height
                height = height + 40
                var x  =  ImgOL.frame.origin.x-20
                var y = ImgOL.frame.origin.y-20
                var largeFrame = CGRect(x: x, y: y, width: width, height: height)
                UIView.animate(withDuration: 2, delay: 3, usingSpringWithDamping: 0.1, initialSpringVelocity: 50, animations: {
                    self.ImgOL.frame = largeFrame
                    
                })
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
