//
//  PostGameViewController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import UIKit

class PostGameViewController: UIViewController {

    // MARK: - Outlets
    // Need to drag out the label from the storyboard to display the user's score.
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    // Need to drag out actions from the buttons on the storyboard
    
    // Need a textField to add a name to the score.
    
    
    // MARK: - Class Functions
    func sendToMenu() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier:"menuScreen") as! MainScreenViewController
        self.present(vc, animated: false, completion: nil)
    }
    
    func replayGame() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "gameScreen") as! GamePlayViewController
        self.present(vc, animated: false, completion: nil)
    }
  
}// End of Class

// MARK: - Extensions
extension PostGameViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "highScoreCell", for: indexPath)
        let name = UserScoreController.shared.scores[indexPath.row].name
        let score = UserScoreController.shared.scores[indexPath.row].score
        cell.textLabel?.text = name
        cell.detailTextLabel?.text = String(score)
        return cell
    }
}
