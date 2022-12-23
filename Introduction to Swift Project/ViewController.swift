//
//  ViewController.swift
//  Introduction to Swift Project
//
//  Created by Kuzivakwashe Mavera on 12/22/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstnametextfield: UITextField!
    @IBOutlet weak var lastnametextfield: UITextField!
    @IBOutlet weak var schoolnametextfield: UITextField!
    
    @IBOutlet weak var agetextfield: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberofpetslabel: UILabel!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberofpetslabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstnametextfield.text!) \(lastnametextfield.text!). I am doing my studies at \(schoolnametextfield.text!) and I am in my \(year!) year. I am also currently \(agetextfield.text!) years old. So far, I own \(numberofpetslabel.text!) pets and it is \(morePetsSwitch.isOn) that I want more pets."
        
        print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

