//
//  TrafficLightService.swift
//  MVPExample
//
//  Created by Burak Tunc on 12.01.21.
//
import Foundation

class TrafficLightService {
    
    func getTrafficLight(colorName: (String), callBack: (TrafficLight?) -> Void) {
        
        let trafficLights = [
            TrafficLight(colorName: "Red", description: "Stop"),
            TrafficLight(colorName: "Green", description: "Go"),
            TrafficLight(colorName: "Yellow", description: "Wait")
        ]
        
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
