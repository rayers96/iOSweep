//
//  GamePresenter.swift
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

protocol GamePresentationLogic {
  func presentAction(response: Game.Action.Response)
}

class GamePresenter: GamePresentationLogic {
  weak var viewController: GameDisplayLogic?
  
  // MARK: Do something
  
  func presentAction(response: Game.Action.Response) {
    let size = response.board.size
    var map = Array(repeating: Array(repeating: 9, count: size), count: size)
    for i in 0...size-1 {
      for j in 0...size-1 {
        let t = response.board.b[i][j]
        if (t.flipped || response.status != 0) {
          if (t.mine) {
            map[i][j] = 11
          } else {
            map[i][j] = t.adj
          }
        } else if (t.flagged){
          map[i][j] = 10
        }
      }
    }
    let viewModel = Game.Action.ViewModel(textureMap: map, status: response.status)
    viewController?.displayAction(viewModel: viewModel)
  }
}
