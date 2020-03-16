//
//  ContentView.swift
//  20020316_SwiftUIPractice
//
//  Created by Demian on 2020/03/16.
//  Copyright © 2020 Demian. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var count = 0
  
  var body: some View {
    print("Count Up")
    return VStack(spacing: 30) {
      Text("\(count)")
      
      Button("Count Up") {
        self.count += 1
      }
    }
    .font(.largeTitle)
				  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
      .previewDisplayName("SwiftUI")
      
      ContentView()
      .previewDevice(PreviewDevice(rawValue: "iPhone X"))
      .previewDisplayName("SwiftUI Preview")
      
    }
      
  }
}



