//
//  PostGameViewController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import UIKit

class PostGameViewController: UIViewController {

    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
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
