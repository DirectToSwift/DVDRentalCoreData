//
//  ContentView.swift
//  DVDRental
//
//  Created by Helge Heß on 18.09.19.
//  Copyright © 2019 ZeeZide GmbH. All rights reserved.
//

import DirectToSwiftUI
import SwiftUI
import PostgreSQLAdaptor

let adaptor = PostgreSQLAdaptor(database: "dvdrental")

let ruleModel : RuleModel = [
]

struct ContentView: View {
    var body: some View {
        D2SMainView(adaptor   : adaptor,
                    ruleModel : ruleModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
