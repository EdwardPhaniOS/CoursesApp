//
//  CourseViewController.swift
//  Courses
//
//  Created by Tan Vinh Phan on 10/20/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet weak var chefCourseButton: UIButton!
    
    @IBOutlet weak var developerCourseButton: UIButton!
    
    @IBOutlet weak var popCourseButton: UIButton!
    
    let courses = CourseStore.downloadNewCourse()
    var selectedCourse: Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() -> Void {
        let chefCourse = courses[0]
        chefCourseButton.setImage(chefCourse.buttonImage, for: [])
        
        let devloperCourse = courses[1]
        developerCourseButton.setImage(devloperCourse.buttonImage, for: [])
        
        let popCourse = courses[2]
        popCourseButton.setImage(popCourse.buttonImage, for: [])
    }
    
    @IBAction func chefCourseButtonDidTap(_ sender: Any)
    {
        let chefCourse = self.courses[0]
        self.selectedCourse = chefCourse
        print("\(selectedCourse.title)")
        
        self.performSegue(withIdentifier: StoryBoard.ShowCourseDetail, sender: nil)
    }
    
    @IBAction func developerCourseDidTap(_ sender: Any)
    {
        let developerCourse = self.courses[1]
        self.selectedCourse = developerCourse
         print("\(selectedCourse.title)")
        
        self.performSegue(withIdentifier: StoryBoard.ShowCourseDetail, sender: nil)
    }
    
    @IBAction func popCourseDidTap(_ sender: Any)
    {
        let popCourse = self.courses[2]
        self.selectedCourse = popCourse
         print("\(selectedCourse.title)")
        
        self.performSegue(withIdentifier: StoryBoard.ShowCourseDetail, sender: nil)
    }
    
    struct StoryBoard {
        //identifier of the segue
        static let ShowCourseDetail = "ShowCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.ShowCourseDetail {
            if let courseDetailViewController = segue.destination as? CourseDetailViewController {
                courseDetailViewController.course = selectedCourse
            }
            
        }
    }
}
