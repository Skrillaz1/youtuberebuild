//
//  ViewController.swift
//  YoutubeRebuild
//
//  Created by Naysean Smith on 8/22/23.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

