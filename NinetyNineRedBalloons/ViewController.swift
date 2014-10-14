//
//  ViewController.swift
//  NinetyNineRedBalloons
//
//  Created by Andrew Affolter on 10/13/14.
//  Copyright (c) 2014 andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var balloonLabel: UILabel!
    
    var myBalloons:[Balloon] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        balloonLabel.hidden = true
        self.createBalloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createBalloons()
    {
        for var balloonCount = 0; balloonCount < 99; balloonCount++ {
            var myBalloon = Balloon()
            myBalloon.number = balloonCount
            
            let randomImageNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomImageNumber {
            case 1:
                myBalloon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
                myBalloon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                myBalloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                myBalloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            self.myBalloons.append(myBalloon)
        }
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        
        
            let myBalloon = myBalloons[currentIndex]
        
            self.myImageView.image = myBalloon.image
            self.balloonLabel.text = "\(myBalloon.number) balloon"
            self.balloonLabel.hidden = false
        
            currentIndex += 1
        }
    }



