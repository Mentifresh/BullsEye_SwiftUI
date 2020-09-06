//
//  TimeCounter.swift
//  BullsEye_SwiftUI
//
//  Created by Dani Kilders on 06.09.20.
//  Copyright © 2020 danielkilders. All rights reserved.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var timer: Timer?
    var counter = 0
    
    @objc func updateCounter() {
        counter += 1
        objectWillChange.send(self)
    }
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
