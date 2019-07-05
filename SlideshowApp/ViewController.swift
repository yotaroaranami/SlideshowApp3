//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Yotaro Aranami on 2019/07/03.
//  Copyright © 2019 Yotaro Aranami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dispimageNo = 0
    
    var timer : Timer!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func didiTapNextButton(_ sender: UIButton) {
        
        dispimageNo += 1
        
        displayImage()
        
    }
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func didiTapBackButton(_ sender: UIButton) {
        
        dispimageNo -= 1
        
        displayImage()
        
    }
    
    func displayImage()  {
        
        let imageNameArray = [
            "dolphin-Illust.png",
            "Unknown.png",
            "Unknown-2.jpeg"
            
        ]
        
        if dispimageNo > 2 {
            
            dispimageNo = 0
            
        }
        
        
        if dispimageNo < 0 {
            
            dispimageNo = 2
            
        }
        
    
        
        let name = imageNameArray[dispimageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
        
    }
        
    
    
    @IBAction func play(_ sender: UIButton) {
        
        if self.timer == nil {
            
            sender.setTitle("停止", for: .normal)
            
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
            
            startButton.isEnabled = false
            
            backButton.isEnabled = false
            
        }else{
            
            sender.setTitle("再生", for: .normal)
            
            self.timer.invalidate()
            self.timer = nil
            
            startButton.isEnabled = true
            
            backButton.isEnabled = true
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        
        let image = UIImage(named: "dolphin-Illust.png")
        
        imageView.image = image
        
    }
    
    
    @objc func onTimer( _ timer : Timer) {
        
        print("onTimer")
        
        dispimageNo += 1
        
        displayImage()
    }
    
    @IBAction func segue(_ sender: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       let  resultViewController : ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.image = imageView.image!
        
        
    }
    
    @IBAction func unwind(_ sender: UIButton) {
    }
    
    
    
    
    
}
