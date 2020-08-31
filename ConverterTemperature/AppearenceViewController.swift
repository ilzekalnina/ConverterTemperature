//
//  AppearenceViewController.swift
//  ConverterTemperature
//
//  Created by Kisacka on 31/08/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class AppearenceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.traitCollection.userInterfaceStyle == .dark {
            textLabel.text = "Dark Mode Is On"
        
        }

    
    }
    

    @IBAction func openSettingsTapped(_ sender: Any) {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsURL){
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print(success)
            }
        }
    }
    func setLabelText(){
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is on. \nGo to Settings if you would like \n to change to Light Mode."
        } else {
            text = "Light Mode is on. \nGo to Settings if you would like \n to change to Dark Mode."
        }
        textLabel.text = text
    }
} // end Class


extension AppearenceViewController{
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
