//
//  ViewController.swift
//  lab4.1
//
//  Created by Toni Kontio on 17/09/2019.
//  Copyright © 2019 Toni Kontio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    var segmentState = 0
    
    @IBOutlet weak var Image1: UIImageView!
    
    @IBOutlet weak var Image2: UIImageView!
    
    @IBOutlet weak var Image3: UIImageView!
    
    @IBOutlet weak var Image4: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            segmentState = 0
            self.Image1.image = UIImage(named: "bear.jpg")
            self.Image2.image = UIImage(named: "elephant.jpg")
            self.Image3.image = UIImage(named: "wolf.jpg")
            self.Image4.image = UIImage(named: "lamb.jpg")
        case 1:
            segmentState = 1
            self.Image1.image = UIImage(named: "punatulkku.jpg")
            self.Image2.image = UIImage(named: "peippo.jpg")
            self.Image3.image = UIImage(named: "huuhkaja.jpg")
            self.Image4.image = UIImage(named: "peukaloinen.jpg")
            
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let singleTap1 = UITapGestureRecognizer(target: self, action: #selector(tapDetected1))
        singleTap1.numberOfTapsRequired = 1
        let singleTap2 = UITapGestureRecognizer(target: self, action: #selector(tapDetected2))
        singleTap2.numberOfTapsRequired = 1
        let singleTap3 = UITapGestureRecognizer(target: self, action: #selector(tapDetected3))
        singleTap3.numberOfTapsRequired = 1
        let singleTap4 = UITapGestureRecognizer(target: self, action: #selector(tapDetected4))
        singleTap4.numberOfTapsRequired = 1
        Image1.isUserInteractionEnabled = true
        Image1.addGestureRecognizer(singleTap1)
        Image2.isUserInteractionEnabled = true
        Image2.addGestureRecognizer(singleTap2)
        Image3.isUserInteractionEnabled = true
        Image3.addGestureRecognizer(singleTap3)
        Image4.isUserInteractionEnabled = true
        Image4.addGestureRecognizer(singleTap4)
        self.Image1.image = UIImage(named: "bear.jpg")
        self.Image2.image = UIImage(named: "elephant.jpg")
        self.Image3.image = UIImage(named: "wolf.jpg")
        self.Image4.image = UIImage(named: "lamb.jpg")
        
       
        // Do any additional setup after loading the view.
    }
    
    @objc func tapDetected1(sender: UITapGestureRecognizer) {
        if segmentState == 0{
        do {
            if let fileURL = Bundle.main.path(forResource: "bear", ofType: "wav") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
        audioPlayer?.play()
        }
        else if segmentState == 1{
            do {
                if let fileURL = Bundle.main.path(forResource: "punatulkku_northern_bullfinch", ofType: "mp3") {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
                } else {
                    print("No file with specified name exists")
                }
            } catch let error {
                print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()
        }
    }
    
    @objc func tapDetected2(sender: UITapGestureRecognizer) {
        if segmentState == 0{ do {
            if let fileURL = Bundle.main.path(forResource: "elephant", ofType: "wav") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()}
        else if segmentState == 1{
            do {
                if let fileURL = Bundle.main.path(forResource: "peippo_chaffinch", ofType: "mp3") {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
                } else {
                    print("No file with specified name exists")
                }
            } catch let error {
                print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()
        }
       
    }
    
    @objc func tapDetected3(sender: UITapGestureRecognizer) {
        if segmentState == 0{
            do {
                if let fileURL = Bundle.main.path(forResource: "wolf", ofType: "wav") {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
                } else {
                    print("No file with specified name exists")
                }
            } catch let error {
                print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()
        }
        else if segmentState == 1 {
            do {
                if let fileURL = Bundle.main.path(forResource: "huuhkaja_norther_eagle_owl", ofType: "mp3") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()
            
        }
       
    }
    
    @objc func tapDetected4(sender: UITapGestureRecognizer) {
        if segmentState == 0 {
            do {
            if let fileURL = Bundle.main.path(forResource: "lamb", ofType: "wav") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()
            
        }
        else if segmentState == 1 {
            
            do {
                if let fileURL = Bundle.main.path(forResource: "peukaloinen_wren", ofType: "mp3") {
                    audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
                } else {
                    print("No file with specified name exists")
                }
            } catch let error {
                print("Can't play the audio file failed with an error \(error.localizedDescription)")
            }
            audioPlayer?.play()
        }
        
    }
    // sender.view will hold the sender view (ImageVIew) of the event.
    


}

