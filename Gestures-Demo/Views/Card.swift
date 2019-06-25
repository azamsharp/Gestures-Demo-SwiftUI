//
//  Card.swift
//  Gestures-Demo
//
//  Created by Mohammad Azam on 6/23/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI

struct Card: View {           
    
    @Binding var tapped: Bool

    // Something got changed...
    
    var body: some View {
        
        ZStack {
            self.tapped ? Color.orange : Color.purple
            Text("Pokemon")
                .font(.title)
                .color(Color.white)
        }.cornerRadius(30)
        
    }
    
}


