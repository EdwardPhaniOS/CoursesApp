//
//  PlayerViewController.swift
//  Courses
//
//  Created by Tan Vinh Phan on 10/25/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController
{
   
    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURl: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if videoURl != nil {
            youtubePlayerView.loadVideoURL(videoURl)
        }
        
        youtubePlayerView.layer.cornerRadius = 10.0
        youtubePlayerView.layer.masksToBounds = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if videoURl != nil {
            youtubePlayerView.loadVideoURL(videoURl)
        } else {
            let alertController = UIAlertController(title: "Something wrong with this video", message: "We apologize for any inconvenience caused", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func closeButtonDidTap(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
}
