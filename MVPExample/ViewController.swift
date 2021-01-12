//
//  ViewController.swift
//  MVPExample
//
//  Created by Burak Tunc on 12.01.21.
//

import UIKit

protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description:(String))
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

