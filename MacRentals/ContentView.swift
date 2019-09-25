//
//  ContentView.swift
//  MacRentals
//
//  Created by Helge Heß on 18.09.19.
//  Copyright © 2019 ZeeZide GmbH. All rights reserved.
//

import struct DirectToSwiftUI.D2SMainView
import SwiftUI

struct ContentView: View {
    var body: some View {
        D2SMainView(managedObjectContext : managedObjectContext,
                    ruleModel            : ruleModel)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
