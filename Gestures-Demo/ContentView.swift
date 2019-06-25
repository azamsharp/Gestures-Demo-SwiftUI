//
//  ContentView.swift
//  Gestures-Demo
//
//  Created by Mohammad Azam on 6/23/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State private var tapped: Bool = false
    @State private var draggedOffset = CGSize.zero
    
    var body: some View {
        ZStack {
            
            VStack {
                CardBack()
                    .background(Color.red)
                    .offset(y: self.draggedOffset.height)
                    .gesture(DragGesture()
                        .onChanged { value in
                            self.draggedOffset = value.translation
                    }
                        .onEnded { value in
                            self.draggedOffset = CGSize.zero
                        }
                )
                
                Text("\(self.draggedOffset.height)")
                    .color(Color.white)
                    .offset(y: -100)
                
            }
            
            .background(Color.black)
        }
          

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
