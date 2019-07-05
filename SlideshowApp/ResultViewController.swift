//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Yotaro Aranami on 2019/07/04.
//  Copyright © 2019 Yotaro Aranami. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultdispimage: UIImageView!
    
    var image : UIImage!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       resultdispimage.image =  image
        
        
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
