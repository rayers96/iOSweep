//
//  GameModels.swift
//  iOSweep
//
//  Created by Ryan Ayers on 9/11/20.
//  Copyright (c) 2020 Ryan Ayers. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Game {
  struct Request {
    var x: Int?
    var y: Int?
    var type: Int // 0 = get, 1 = flip, 2 = toggleFlag
  }
  struct Response {
    var board: Board
    var status: Int // -1 = loss, 0 = continue, 1 = win
  }
  struct ViewModel {
    var textureMap: [[Int]]
    var status: Int
  }
}