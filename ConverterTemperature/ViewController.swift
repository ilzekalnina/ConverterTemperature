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
    
    
      // MARK: - Navigation

      // In a storyboard-based application, you will often want to do a little preparation before navigation
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoSegue"{
          // Get the new view controller using segue.destination.
            let vc = segue.destination as! InfoViewController
          // Pass the selected object to the new view controller.
            vc.infoText = "Temperature Converter helps to convert \nCelsius temperature to Fahrenheit"
        }
      }
      
}

