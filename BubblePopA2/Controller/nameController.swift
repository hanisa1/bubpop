//
//  nameController.swift
//  BubblePopA2
//
//  Created by Hanisa Hersi Mohamed Hilole on 28/4/2023.
//

import UIKit

class NameController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()

        // Do any additional setup after loading the view.
    }

    private func setupView() {
        let nameLabel = UILabel()
        nameLabel.text = "Please Enter Name: "
        nameLabel.font = .systemFont(ofSize: 16)
        nameLabel.textAlignment = .center

        let nameTextField = UITextField()
        nameTextField.placeholder = "First Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.font = .systemFont(ofSize: 16)

        let startButton = UIButton()
        startButton.setTitle("Start", for: .normal)
        startButton.setTitleColor(.systemBlue, for: .normal)
        startButton.titleLabel?.font = .systemFont(ofSize: 16)
        startButton.addTarget(self, action: #selector(handleStartGame), for: .touchUpInside)

        let nameView  = UIStackView(arrangedSubviews: [nameLabel, nameTextField, startButton])
        nameView.axis = .vertical
        nameView.spacing = 12

        view.addSubview(nameView)

        nameView.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: nameView, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view.safeAreaLayoutGuide, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: nameView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view.safeAreaLayoutGuide, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: -50)
        let widthConstraint = NSLayoutConstraint(item: nameView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 300)
        let heightConstraint = NSLayoutConstraint(item: nameView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 150)
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }

    @objc private func handleStartGame() {
        navigationController?.pushViewController(GamePlayController(), animated: true)
    }


}
