//
//  ViewController.swift
//  Practice
//
//  
//

import UIKit

class CourseViewController: UIViewController {
    
    
    @IBOutlet weak var courseIdOL: UITextField!
    
    @IBOutlet weak var sIDOL: UITextField!
    
    
    @IBOutlet weak var CrsBtnOL: UIButton!
    
    
    @IBOutlet weak var StatusOL: UILabel!
    
    
    @IBOutlet weak var ImageOL: UIImageView!
    
    
    @IBOutlet weak var EnrollCrsOL: UIButton!
    
    var course = CourseDetails()
    var coursesarray = CoursesArray
    var isCourse = false
    var Sid = ""
    var CourseId = ""
    var CourseName = ""
    var Image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ImageOL.isHidden = true
        EnrollCrsOL.isHidden = true
        StatusOL.isHidden = true
        CrsBtnOL.isEnabled = false
        
    }
    
    @IBAction func CourseIDTextField(_ sender: UITextField) {
        let CouseId = courseIdOL.text!
        let sID = sIDOL.text!
        
        if(CouseId.isEmpty || sID.isEmpty){
            CrsBtnOL.isEnabled = false
            
        }else{
            CrsBtnOL.isEnabled = true
        }
            
    }
    
    @IBAction func sIDTextField(_ sender: UITextField) {
        let CouseId = courseIdOL.text!
        let sID = sIDOL.text!
        
        if(CouseId.isEmpty || sID.isEmpty){
            CrsBtnOL.isEnabled = false
            
        }else{
            CrsBtnOL.isEnabled = true
        }
    }
    
    
    @IBAction func CourseBTNClicked(_ sender: UIButton) {
        let CouseId = courseIdOL.text!
        let sID = sIDOL.text!
        
        for c in coursesarray {
            if CouseId == c.courseID{
                ImageOL.isHidden = false
                EnrollCrsOL.isHidden = false
                StatusOL.isHidden = false
                
                StatusOL.text = "\(CouseId) is open for registration"
                ImageOL.image=UIImage(named: c.courseImage)
                EnrollCrsOL.isEnabled = true
                isCourse = true
                CourseId = CouseId
                Sid = sID
                Image = c.courseImage
                CourseName = c.courseName
                break
                
            }else{
                ImageOL.image = UIImage(named: "default")
                StatusOL.text = "Course ID is not found"
                EnrollCrsOL.isHidden = true
            }
        }
        
    }
    
    
    @IBAction func EnrollCrsBTNClicked(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "CourseSegue"{
            //Create a destination of type studentInfoViewController
            let destination = segue.destination as! ResultViewController
            
            //if student is exists in the array, we will assign the studentObj in the destination with "studentFound"
            if isCourse {
                destination.sID = Sid
                destination.image = Image
                destination.CrsId = CourseId
                destination.CrsName = CourseName
            
            }
            
            
            
        }
    }
    

}

