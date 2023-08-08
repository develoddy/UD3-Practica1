//
//  ViewController.swift
//  UD3_Practica1
//
//  Created by Eddy Donald Chinchay Lujan on 7/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var buttonChanged: UIButton!
    private let primaryColor = UIColor(red: 0.25, green: 0.41, blue: 0.88, alpha: 1.00)
    private let secondaryColor = UIColor(red: 173/255, green: 202/255, blue: 250/255, alpha: 1)
    private let tertiaryColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    private let whiteColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
    private let blackColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
    private let greenColor = UIColor(red: 0.00, green: 1.00, blue: 0.50, alpha: 1.00)
    private let ligtgrayColor = UIColor(red: 0.83, green: 0.83, blue: 0.83, alpha: 1.00)
    private let infoTextLabel = "Práctica 1 – Eddy Lujan Software Developer"
    private let infoTextButton = "Botón"
    private var pressed : Bool = false
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    // MARK: - Helpers
    private func setupView() {
        view.backgroundColor = primaryColor
        configureLabelButton()
    }
    func configureLabelButton() {
        buttonChanged.backgroundColor = ligtgrayColor
        buttonChanged.setTitleColor(blackColor, for: .normal)
        buttonChanged.layer.cornerRadius = 5
        buttonChanged.clipsToBounds = true
        buttonChanged.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        
        textLabel.text = infoTextLabel
        buttonChanged.setTitle(infoTextButton, for: .normal)
    }
    
    // MARK: - Actions
    @objc func didTap() {
        if !pressed {
            self.textLabel.text = "Práctica 1 – Introducción al Interface Builder"
            self.buttonChanged.setTitle("Botón texto cambiado", for: .normal)
            pressed = true
        } else {
            configureLabelButton()
            pressed = false
        }
    }
}
