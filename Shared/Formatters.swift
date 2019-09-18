//
//  Formatters.swift
//  DVDRental
//
//  Created by Helge Heß on 18.09.19.
//  Copyright © 2019 ZeeZide GmbH. All rights reserved.
//

import Foundation
import class DirectToSwiftUI.D2STransformingFormatter

/// Format numbers as currency, e.g. $0.99 for the rental rate.
let currencyFormatter : NumberFormatter = {
  let formatter = NumberFormatter()
  formatter.numberStyle             = .currency
  formatter.generatesDecimalNumbers = true
  return formatter
}()

/// Format numbers representing a duration in minutes in the database as
/// a nice string, e.g. 1:30h. Used for movie durations.
let minutesDurationFormatter: Formatter = {
  let mf = DateComponentsFormatter(unitsStyle   : .short,
                                   allowedUnits : [ .hour, .minute ])
  return D2STransformingFormatter(mf) { ( minutes : Int ) in
    DateComponents(minute: minutes)
  }
}()

/// Format numbers representing a duration in days in the database. As such :-)
let daysDurationFormatter: Formatter = {
  let mf = DateComponentsFormatter(unitsStyle: .short, allowedUnits: [ .day ])
  return D2STransformingFormatter(mf) { ( days : Int ) in
    DateComponents(day: days)
  }
}()


// support: \.object.rentalDate.string

private let dateFormatter : DateFormatter = {
  let df = DateFormatter()
  df.dateStyle = .medium
  df.timeStyle = .short
  df.doesRelativeDateFormatting = true // today, tomorrow
  return df
}()
extension Optional where Wrapped == Any {
  var string : String { // hack :-)
    guard case .some(let value) = self else { return "-" }
    if let date = value as? Date {
      return dateFormatter.string(from: date)
    }
    return String(describing: value)
  }
}

