//
//  InfoViewController.swift
//  ConverterTemperature
//
//  Created by Kisacka on 31/08/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()
    let appDescText = "Temperature Converter home task"
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText
        
        if !infoText.isEmpty {
            appInfoLabel.text = infoText
        }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
