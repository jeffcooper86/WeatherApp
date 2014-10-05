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
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        let forecastURL = NSURL(string:"38.907575,-77.038034", relativeToURL: baseURL)
        
        let sharedSession = NSURLSession.sharedSession()
        let downloadTask: NSURLSessionDownloadTask =
        sharedSession.downloadTaskWithURL(forecastURL, completionHandler: { (location: NSURL!, response: NSURLResponse!, error: NSError!) -> Void in
                println(response)
            })
        downloadTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

