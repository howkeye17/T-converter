//
//  ViewController.swift
//  T-converter
//
//  Created by Valera Vasilevich on 18.04.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CelsiusLabel: UILabel!
    @IBOutlet weak var FahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
       // let celsiusTemperature = Int(round(sender.value))
        let celsiusTemperature = Int(round(sender.value))
        CelsiusLabel.text = "\(celsiusTemperature)ºC"
        let fahrenheitTemperature = (celsiusTemperature*9/5)+32
        FahrenheitLabel.text = "\(fahrenheitTemperature)ºC"
    }
    
}

