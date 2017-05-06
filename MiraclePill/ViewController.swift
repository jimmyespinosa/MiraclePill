//
//  ViewController.swift
//  MiraclePill
//
//  Created by Jimmy Espinosa on 5/5/17.
//  Copyright © 2017 Jimmy Espinosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var StatePicker: UIPickerView!
    
    @IBOutlet weak var StatePickerBtn: UIButton!
    
    
    @IBOutlet weak var butNowBtn: UIButton!
    
    let states = ["Alaska","Arkansas","Nevada","Florida","California"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StatePicker.dataSource = self
        StatePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Below begins button for STATES!

    @IBAction func StateButtonBressed(_ sender: Any) {
        StatePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StatePickerBtn.setTitle(states[row], for: UIControlState() )
        StatePicker.isHidden = true
    }
    
    
    @IBAction func buyNowPressed(_ sender: Any) {
        
    }
 
    
    

    
    
    

}

