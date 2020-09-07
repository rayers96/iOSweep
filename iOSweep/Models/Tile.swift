//
//  Tile.swift
//  iOSweep
//
//  Created by Ryan Ayers on 9/6/20.
//  Copyright © 2020 Ryan Ayers. All rights reserved.
//

import Foundation

struct Tile {
  var mine : Bool = false
  var flipped : Bool = false
  var flagged : Bool = false
  var adj : Int = 0
}
