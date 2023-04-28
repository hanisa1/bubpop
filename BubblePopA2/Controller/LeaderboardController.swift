//
//  LeaderboardController.swift
//  BubblePopA2
//
//  Created by Hanisa Hersi Mohamed Hilole on 28/4/2023.
//

import UIKit
import GameKit

class LeaderboardController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let vc = GKGameCenterViewController()
        vc.gameCenterDelegate = self
        vc.viewState = .leaderboards
        vc.leaderboardIdentifier = ""
        present(vc, animated: true)

    }


}

extension LeaderboardController: GKGameCenterControllerDelegate {
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
        gameCenterViewController.dismiss(animated: true)
    }
}
