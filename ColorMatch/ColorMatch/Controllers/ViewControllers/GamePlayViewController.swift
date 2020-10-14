//
//  GamePlayViewController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import UIKit

class GamePlayViewController: UIViewController {
    

    //MARK: - Outlets
    
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var timeRemainingLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    
    
    
    //MARK: - Properties
    
    
    


    var gameInt = 60
    var gameTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        initalizeGameTimer()
    }
    
    
    func initalizeGameTimer() {
        gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GamePlayViewController.game), userInfo: nil, repeats: true)
        gameInt = 60
        //timerLabel.text = String(gameInt) Set to appropriate timer label outlet
    }
    
    @objc func game() {
         gameInt -= 1
         //timerLabel.text = String(gameInt) Set to appropriate timer label outlet
        
        if gameInt == 0 {
            
            gameTimer.invalidate()
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(GamePlayViewController.gameEnds), userInfo: nil, repeats: false)
            
        }
    }
    
    @objc func gameEnds() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "postGameScreen") as!  PostGameViewController //Need to set the appropriate storyboard identifier for the postgamescreen.
        self.present(vc, animated: false, completion: nil)
    }


    }
    
    //MARK: - Actions
    
    @IBAction func buttonOneTapped(_ sender: Any) {
    }
    
    @IBAction func buttonTwoTapped(_ sender: Any) {
    }
    
    @IBAction func buttonThreeTapped(_ sender: Any) {
    }
    
    @IBAction func buttonFourTapped(_ sender: Any) {
    }
    
    @IBAction func buttonFiveTapped(_ sender: Any) {
    }
    
    @IBAction func buttonSixTapped(_ sender: Any) {
    }
    
    @IBAction func buttonSevenTapped(_ sender: Any) {
    }
    
    @IBAction func buttonEightTapped(_ sender: Any) {
    }
    
    @IBAction func buttonNineTapped(_ sender: Any) {
    }
    
    
    
    
 
}

    
