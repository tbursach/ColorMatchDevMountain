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

    let colors = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.black, UIColor.white, UIColor.green, UIColor.purple, UIColor.brown, UIColor.orange]
    var gameInt = 60
    var gameTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLabel()
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

    func setUpLabel() {
        colorLabel.textColor = getRandomColor()
    }

    func getRandomColor() -> UIColor {
       let colors = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.black, UIColor.white, UIColor.green, UIColor.purple, UIColor.brown, UIColor.orange]
       let randomNumber = arc4random_uniform(UInt32(colors.count))
       
       return colors[Int(randomNumber)]
   }
    
    func checkIfButtonValid(sender: Int) {
        var indexNumber = colors.firstIndex(of: colorLabel.textColor)
        if sender == indexNumber {
            
            setUpLabel()
        }
    }
    
    //MARK: - Actions
    
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        checkIfButtonValid(sender: sender.tag)
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

    
