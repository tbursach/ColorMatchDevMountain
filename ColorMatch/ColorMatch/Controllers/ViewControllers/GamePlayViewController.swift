//
//  GamePlayViewController.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/14/20.
//

import UIKit

class GamePlayViewController: UIViewController {
    

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

    
