//
//  ViewController.swift
//  BubblePopA2
//
//  Created by Hanisa Hersi Mohamed Hilole on 28/4/2023.
//

import UIKit
import GameKit

class GamePlayController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()

    }


    private func setupView() {
        let timeLeftLabel = UILabel()
        timeLeftLabel.text = "Time Left"

        let timeLabel = UILabel()
        let time = 7
        timeLabel.text = "\(time)"

        let scoreTextLabel = UILabel()
        scoreTextLabel.text = "Score"

        let scoreLabel = UILabel()
        let score = 13
        scoreLabel.text = "\(score)"

        let highScoreTextLabel = UILabel()
        highScoreTextLabel.text = "High Score"

        let highScoreLabel = UILabel()
        let highScore = 14
        highScoreLabel.text = "\(highScore)"


        let timeView = UIStackView(arrangedSubviews: [timeLeftLabel, timeLabel])
        timeView.axis = .vertical
        timeView.alignment = .center
        let scoreView = UIStackView(arrangedSubviews: [scoreTextLabel, scoreLabel])
        scoreView.axis = .vertical
        scoreView.alignment = .center
        let highScoreView = UIStackView(arrangedSubviews: [highScoreTextLabel, highScoreLabel])
        highScoreView.axis = .vertical
        highScoreView.alignment = .center
        let dashView = UIStackView(arrangedSubviews: [timeView, scoreView, highScoreView])
        dashView.axis = .horizontal
        dashView.distribution = .fillEqually
        let gameView = UIView()
        gameView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        gameView.backgroundColor = .red
        let gamePlayView  = UIStackView(arrangedSubviews: [dashView, gameView])
        gamePlayView.axis = .vertical

        view.addSubview(gamePlayView)

        gamePlayView.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: gamePlayView, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view.safeAreaLayoutGuide, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: gamePlayView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view.safeAreaLayoutGuide, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: gamePlayView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view.safeAreaLayoutGuide, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1, constant: 0)
        let heightConstraint = NSLayoutConstraint(item: gamePlayView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view.safeAreaLayoutGuide, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1, constant: 0)
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])

    }


}

