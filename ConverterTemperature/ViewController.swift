//
//  ViewController.swift
//  ConverterTemperature
//
//  Created by Kisacka on 28/08/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider!{
        //will assign the default values
        didSet{
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 99
            tempSlider.value = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fahrenheitLabel.text = "32º F"
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("value:", Int(sender.value))
        let tempCelsius = Int(sender.value) //because by default it is Float type
        celsiusLabel.text = "\(tempCelsius)º C"
        
        let tempFahr = Int(sender.value * 9 / 5 + 32)
        fahrenheitLabel.text = "\(tempFahr)º F"
    }
    
}

