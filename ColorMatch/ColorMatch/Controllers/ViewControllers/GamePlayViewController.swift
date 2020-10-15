//
//  GamePlayViewController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import UIKit

class GamePlayViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var currentScoreLabel: UILabel!
    @IBOutlet weak var timeRemainingLabel: UILabel!

    // MARK: - Properties
    let colors = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.black, UIColor.white, UIColor.green, UIColor.purple, UIColor.brown, UIColor.orange]
    var gameInt = 60
    var gameTimer = Timer()
    static var currentScore: Int = 0
    
    // MARK: - Lifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpColorStrings()
        setUpLabel()
        initalizeGameTimer()
        setUpScore()
    }
    
    //MARK: - Actions
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonFiveTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonSixTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonSevenTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonEightTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    @IBAction func buttonNineTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
    }
    
    
    // MARK: - Class Functions
    // Starts the game timer
    func initalizeGameTimer() {
         gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(GamePlayViewController.game), userInfo: nil, repeats: true)
         gameInt = 10
         timeRemainingLabel.text = String(gameInt)
     }
     // Updates the game timer.
     @objc func game() {
          gameInt -= 1
          timeRemainingLabel.text = String(gameInt)
         
         if gameInt == 0 {
             
             gameTimer.invalidate()
             Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(GamePlayViewController.gameEnds), userInfo: nil, repeats: false)
         }
     }
     
    // Goes to endscreen when gameends.
     @objc func gameEnds() {
         let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "postGameScreen") as!  PostGameViewController //Need to set the appropriate storyboard identifier for the postgamescreen.
         self.present(vc, animated: false, completion: nil)
     }

     func setUpLabel() {
         colorLabel.textColor = getRandomColor()
     }
    
    func setUpScore() {
        GamePlayViewController.currentScore = 0
        currentScoreLabel.text = "\(GamePlayViewController.currentScore)"
    }
    
    // Returns a random color from an array of colors
     func getRandomColor() -> UIColor {
        let colors = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.black, UIColor.white, UIColor.green, UIColor.purple, UIColor.brown, UIColor.orange]
        let randomNumber = arc4random_uniform(UInt32(colors.count))
        
        return colors[Int(randomNumber)]
    }
     
    // Checks if the button pressed matches the color displayed by the label. If a match, it adds a point to the score and makes the label change to a different color.
     func checkIfButtonValid(sender: Int) {
         let indexNumber = colors.firstIndex(of: colorLabel.textColor)
         if sender == indexNumber {
             addPointToScore()
            currentScoreLabel.text = "\(GamePlayViewController.currentScore)"
             setUpLabel()
            setUpColorStrings()
         }
     }
    
    func addPointToScore() {
        GamePlayViewController.currentScore += 5
    }
    
    func setUpColorStrings() {
        colorLabel.text = changeColorLabel()
    }
    
    func changeColorLabel() -> String {
        let colorLabels = ["Red", "Blue", "Yellow", "Black", "White", "Green", "Purple", "Brown", "Orange"]
        let randomLabel = arc4random_uniform(UInt32(colorLabels.count))
        
        return colorLabels[Int(randomLabel)]
    }
}

    
