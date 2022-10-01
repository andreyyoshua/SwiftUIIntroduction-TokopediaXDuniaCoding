//
//  String+Date.swift
//  DuniaCoding-SwiftUI
//
//  Created by gilang.bhagawadita on 23/09/22.
//

import Foundation

extension String {
    func formattedDateFeedX(currentDate: Date = Date()) -> String {
        let dateFormatter = DateFormatter()
        let timeStampFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        dateFormatter.dateFormat = timeStampFormat
        dateFormatter.locale = Locale(identifier: "id_ID")
        guard let date = dateFormatter.date(from: self) else { return self }

        let now = currentDate
        let years = date.yearsTo(now)
        let days = date.daysTo(now)
        let hours = date.hoursTo(now)
        let minutes = date.minutesTo(now)

        if years >= 1 {
            dateFormatter.dateFormat = "MMM yyyy"
            return dateFormatter.string(from: date)
        } else if days >= 7 {
            dateFormatter.dateFormat = "d MMM"
            return dateFormatter.string(from: date)
        } else if days >= 1 {
            return "\(days) hari"
        } else if hours >= 1 {
            return "\(hours) jam"
        } else if minutes >= 1 {
            return "\(minutes) menit"
        } else {
            return "Beberapa detik yang lalu"
        }
    }
}

extension Date {
    public func hoursTo(_ date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: self, to: date).hour!
    }

    public func daysTo(_ date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: startOfDay, to: date.startOfDay)

        return components.day!
    }

    public func minutesTo(_ date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: self, to: date).minute!
    }

    public func yearsTo(_ date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: date).year!
    }
    
    public var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
}
