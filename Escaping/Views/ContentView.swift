//
//  ContentView.swift
//  Escaping
//
//  Created by Fred Javalera on 6/9/21.
//

import SwiftUI

struct ContentView: View {
  @StateObject var vm = ContentViewModel()
  
  var body: some View {
    
    Text(vm.text)
      .font(.largeTitle)
      .fontWeight(.semibold)
      .foregroundColor(.blue)
      .onTapGesture {
        vm.getData()
      }
  
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
