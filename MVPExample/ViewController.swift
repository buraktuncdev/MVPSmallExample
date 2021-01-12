//
//  ViewController.swift
//  MVPExample
//
//  Created by Burak Tunc on 12.01.21.
//

import UIKit

class ViewController: UIViewController, TrafficLightViewDelegate {
  
    
    @IBOutlet weak var descriptionLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }

    @IBAction func redButtonPressed(_ sender: Any) {
        print("Red")
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @IBAction func yellowButtonPressed(_ sender: Any) {
        print("Yellow")
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }
    
    @IBAction func greenButtonPressed(_ sender: Any) {
        print("Green")
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }
    
    func displayTrafficLight(description: (String)) {
        print(description)
        print(description)
        print(description)
        descriptionLabel.text = description
    }
    
}

