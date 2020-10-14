//
//  MainScreenViewController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import UIKit

class MainScreenViewController: UIViewController {
 
    
    //MARK: - Outlets
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //MARK: - Lifecycle Functions


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //MARK: - Actions
    
    @IBAction func playGameButtonTapped(_ sender: Any) {
    }
    
    @IBAction func highScoresButtonTapped(_ sender: Any) {
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

