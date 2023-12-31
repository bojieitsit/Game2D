//
//  MenuViewController.swift
//  Game2D
//
//  Created by Andrei Bogoslovskii on 08.10.2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateScore()
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        guard let controller = storyboard?.instantiateViewController(
            withIdentifier: "GameViewController"
        ) as? GameViewController else { return }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func profileButtonPressed(_ sender: UIButton) {
        guard let controller = storyboard?.instantiateViewController(
            withIdentifier: "ProfileViewController"
        ) as? ProfileViewController else { return }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func playersButtonPressed(_ sender: UIButton) {
        guard let controller = storyboard?.instantiateViewController(
            withIdentifier: "TableViewController"
        ) as? TableViewController else { return }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    @IBAction func settingsButtonPressed(_ sender: UIButton) {
        guard let controller = storyboard?.instantiateViewController(
            withIdentifier: "SettingsViewController"
        ) as? SettingsViewController else { return }
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    func updateScore() {
        scoreLabel.text = "TOP Score: " + String (
            UserDefaults.standard.integer(forKey: "MaxScore")
        )
    }
    
}


