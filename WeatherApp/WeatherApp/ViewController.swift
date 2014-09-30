//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jeffrey Cooper on 9/30/14.
//  Copyright (c) 2014 Jeff Cooper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let forecastUrl = "https://api.forecast.io/forecast/" + apiKey + "37.8267,-122.423"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

