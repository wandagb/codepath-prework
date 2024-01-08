//
//  ViewController.swift
//  codepath
//
//  Created by Wanda B on 1/7/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var jobTextField: UITextField!
    
    @IBOutlet weak var submitNameBtn: UIButton!
    @IBOutlet weak var submitSchoolBtn: UIButton!
    @IBOutlet weak var submitJobBtn: UIButton!
    
    @IBOutlet weak var schoolButton: UIButton!
    @IBOutlet weak var nameButton: UIButton!
    @IBOutlet weak var jobButton: UIButton!
    @IBOutlet weak var backgroundButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    var result: String!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name"
        schoolLabel.text = "School"
        jobLabel.text = "Job"
        
    }
    
    @IBAction func changeBackground(_ sender: UIButton) {
        let randomcolor = changeColor()
        view.backgroundColor = randomcolor
    }
    
    @IBAction func editName(_ sender: Any) {
        result = nameTextField.text!
        nameLabel.text = "\(result!)"
        
    }
    
    
    @IBAction func editSchool(_ sender: Any) {
        result = schoolTextField.text!
        schoolLabel.text = "\(result!)"
    }
    
    
    @IBAction func editJob(_ sender: Any) {
        result = jobTextField.text!
        jobLabel.text = "\(result!)"
    }
    
    
    @IBAction func changeNameColor(_ sender: UIButton) {
        let randomcolor = changeColor()
        nameLabel.textColor = randomcolor
    }
    
    @IBAction func changeSchoolColor(_ sender: UIButton) {
        let randomcolor = changeColor()
        schoolLabel.textColor = randomcolor
    }
    @IBAction func changeJobColor(_ sender: UIButton) {
        let randomcolor = changeColor()
        jobLabel.textColor = randomcolor
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        backgroundButton.isHidden = true
        nameButton.isHidden = true
        schoolButton.isHidden = true
        jobButton.isHidden = true
        submitButton.isHidden = true
        
        nameTextField.isHidden = true
        schoolTextField.isHidden = true
        jobTextField.isHidden = true
        
        submitNameBtn.isHidden = true
        submitSchoolBtn.isHidden = true
        submitJobBtn.isHidden = true
        
    }
    func changeColor() -> UIColor{
        
        let red = CGFloat.random(in:0...1)
        let green = CGFloat.random(in:0...1)
        let blue = CGFloat.random(in:0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }


}

