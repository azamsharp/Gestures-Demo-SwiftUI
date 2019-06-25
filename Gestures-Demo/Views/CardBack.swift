//
//  CardBack.swift
//  Gestures-Demo
//
//  Created by Mohammad Azam on 6/23/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import SwiftUI

struct CardBack: View {
    
    var body: some View {
        
        VStack {
            Text("Pokemon")
                .font(.title)
                .color(Color.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
           // .background(Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1)))
            .cornerRadius(30)
    }
    
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
