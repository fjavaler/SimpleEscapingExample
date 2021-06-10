//
//  ContentViewModel.swift
//  Escaping
//
//  Created by Fred Javalera on 6/9/21.
//

import Foundation

class ContentViewModel: ObservableObject {
  
  // MARK: Properties
  @Published var text: String = "Hello, World!"
  
  // MARK: Methods
  func getData() {
    downloadData { [weak self] returnedData in
      self?.text = returnedData
    }
  }
  
  func downloadData(completionHandler: @escaping (_ data: String) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
      let dataDownloaded = "New data!"
      completionHandler(dataDownloaded)
    }
  }
}
