//
//  time.swift
//  EPHS App
//
//  Created by 90305163 on 10/28/20.
//

import Foundation
func getTime(timeType: String) -> Int {
    let now = Date()

    let formatter = DateFormatter()
    formatter.dateStyle = .none
    formatter.timeStyle = .medium
    
    let str = formatter.string(from: now)
    
    let start = str.index(str.startIndex, offsetBy: 6)
    let end = str.index(str.endIndex, offsetBy: -3)
    let range = start..<end
    
    let startMinute = str.index(str.startIndex, offsetBy: 3)
    let endMinute = str.index(str.endIndex, offsetBy: -6)
    let rangeMinute = startMinute..<endMinute
    
    let startHour = str.index(str.startIndex, offsetBy: 0)
    let endHour = str.index(str.endIndex, offsetBy: -9)
    let rangeHour = startHour..<endHour
    
    let second = String(str[range])
    let minute = String(str[rangeMinute])
    let Hour = String(str[rangeHour])
    
    if timeType == "minute" {
        return Int(minute) ?? 0
    }
    else if timeType == "second" {
        return Int(second) ?? 0
    }
    else if timeType == "hour" {
        return Int(Hour) ?? 0
    }
    else{
        return 0
    }
}
