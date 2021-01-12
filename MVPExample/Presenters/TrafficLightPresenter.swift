//
//  TrafficLightPresenter.swift
//  MVPExample
//
//  Created by Burak Tunc on 12.01.21.
//

import Foundation

class TrafficLightPresenter {
    private let trafficLightService: TrafficLightService
    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?
    
    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
    }
    
    
    func setViewDelegate(trafficLightViewDelegate: TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    func trafficLightColorSelected(colorName: (String)){
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] trafficLight in
            if let trafficLight = trafficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        }
    }
    
}
