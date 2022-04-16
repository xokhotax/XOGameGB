//
//  LogCommand.swift
//  XO-game
//
//  Created by Alexander Rubtsov on 31.03.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class LogCommand {
    let action: LogAction
    
    var logMessage: String {
        switch action {
        case .playerInput(let player, let position):
            return "\(player) placed mark at \(position)"
        case .gameFinished(let winner):
            if let winner = winner {
                return "\(winner) win game"
            } else {
                return "game finished with no winners"
            }
        case .restart:
            return "game restarted"
        }
    }
    
    init(action: LogAction) {
        self.action = action
    }
}
