//
//  ViewController.swift
//  Xylophone
//  Sophie Herbert on 07/05/2020.
//
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var playerC:AVAudioPlayer = AVAudioPlayer()
    var playerD:AVAudioPlayer = AVAudioPlayer()
    var playerE:AVAudioPlayer = AVAudioPlayer()
    var playerF:AVAudioPlayer = AVAudioPlayer()
    var playerG:AVAudioPlayer = AVAudioPlayer()
    var playerA:AVAudioPlayer = AVAudioPlayer()
    var playerB:AVAudioPlayer = AVAudioPlayer()


    override func viewDidLoad() {
            super.viewDidLoad()
        
        do  {
            let audioPlayer = Bundle.main.path(forResource: "C", ofType: "wav")
            
            try playerC = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayer!) as URL)
        }
        catch {
            //ERROR
        }

    do  {
            let audioPlayerTwo = Bundle.main.path(forResource: "D", ofType: "wav")
            
            try playerD = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayerTwo!) as URL)
        }
        catch {
            //ERROR
        }
        
    do  {
            let audioPlayerThree = Bundle.main.path(forResource: "E", ofType: "wav")
            
            try playerE = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayerThree!) as URL)
        }
        catch {
            //ERROR
        }
        
    do  {
                let audioPlayerFour = Bundle.main.path(forResource: "F", ofType: "wav")
                
                try playerF = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayerFour!) as URL)
            }
            catch {
                //ERROR
            }
    
    do  {
                let audioPlayerFive = Bundle.main.path(forResource: "G", ofType: "wav")
                    
                try playerG = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayerFive!) as URL)
            }
            catch {
                    //ERROR
            }

    do  {
        let audioPlayerSix = Bundle.main.path(forResource: "A", ofType: "wav")
        
        try playerA = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayerSix!) as URL)
    }
    catch {
        //ERROR
    }
        
        do  {
            let audioPlayerSeven = Bundle.main.path(forResource: "B", ofType: "wav")
            
            try playerB = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPlayerSeven!) as URL)
        }
        catch {
            //ERROR
        }
    
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playerC.play()
        
    }
    
    @IBAction func keyDPressed(_ sender: UIButton) {
        
        playerD.play()
    }
    
    @IBAction func keyEPressed(_ sender: UIButton) {
        
        playerE.play()
    }
    
    @IBAction func keyFPressed(_ sender: UIButton) {
        
        playerF.play()
    }
    
    @IBAction func keyGPressed(_ sender: UIButton) {
        playerG.play()
    }
    
    @IBAction func keyAPressed(_ sender: UIButton) {
        playerA.play()
    }
    
    @IBAction func keyBPressed(_ sender: UIButton) {
        playerB.play()
    }
    
    
}

