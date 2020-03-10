//
//  cardError.swift
//  DeckOfOneCard32
//
//  Created by Ben Brandau Brandau on 3/10/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation
import UIKit


enum CardError: LocalizedError {
  case invalidURL
  case thrown(Error)
  case noData
  case unableToDecode
    
   var errorDescription: String? {
    switch self{
        
     case .invalidURL:
        return " the Url didnt work"
     case .thrown(let error):
        return error.localizedDescription
     case .noData:
        return "There is no data"
     case .unableToDecode:
        return "sorry we cant do that cant decode"
     }
   }
   
}

