//
//  HighScoreTableViewController.swift
//  ColorMatch
//
//  Created by Owen Barrott on 10/15/20.
//

import UIKit

class HighScoreTableViewController: UITableViewController {

    // MARK: - Lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return UserScoreController.shared.scores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "highScoreCell", for: indexPath)
        let name = UserScoreController.shared.scores[indexPath.row].name
        let score = UserScoreController.shared.scores[indexPath.row].score
        cell.textLabel?.text = name
        cell.detailTextLabel?.text = String(score)
        return cell
    }
}
