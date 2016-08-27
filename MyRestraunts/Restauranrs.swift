//
//  Restauranrs.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 26.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import Foundation

class Restaurants {
  var name:String
  var location:String
  var isVisited:Bool = false
  var type:String
  var image:String
  
  init(name: String, type: String, location: String, image:String, isVisited: Bool) {
    self.name = name
    self.type = type
    self.location = location
    self.image = image
    self.isVisited = isVisited
  }
  
}
