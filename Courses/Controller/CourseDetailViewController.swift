//
//  CourseDetailViewController.swift
//  Courses
//
//  Created by Tan Vinh Phan on 10/23/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController
{
    
    @IBOutlet weak var courseTitileLabel: UILabel!
    
    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    
    @IBOutlet weak var courseFeatureImageView: UIImageView!
    
    var course: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseFeatureImageView.image = course.featureImage
        courseTitileLabel.text = course.title
        courseDescriptionTextView.text = course.description
        
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
        joinCourseButton.layer.cornerRadius = 3.0
        joinCourseButton.layer.masksToBounds = true
        
        self.navigationItem.title = course.instructor
    }
    
    @IBAction func playButtonDidTap(_ sender: Any)
    {
    }
    @IBAction func joinButtonDidTap(_ sender: Any)
    {
        let alertController = UIAlertController(title: "Congratulation!", message: "You just enrolled in \(course.instructor) course successfully", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    struct StoryBoard {
        static let PresentPlayer = "PresentPlayer"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.PresentPlayer {
            if let playerVC = segue.destination as? PlayerViewController {
               playerVC.videoURl = course.introductionVideoURL
            }            
        }
    }

}
