//
//  CourseStore.swift
//  Courses
//
//  Created by Tan Vinh Phan on 10/19/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class CourseStore
{
    //A type func or static func
    class func downloadNewCourse() -> [Course] {

        let chefCourse = Course(buttonImage: UIImage(named: "cover_chef")!, title: "Become a Masterchef", instructor: "Gordon Ramsay", featureImage: UIImage(named: "chef")!, description: "Learn how to cook like a masterchef", introductionVideoURL: URL(string: "https://www.youtube.com/watch?v=QBULK-w-i90")!)
        let devCourse = Course(buttonImage: UIImage(named: "cover_developer")!, title: "Become a Swift Developer", instructor: "Duc Tran", featureImage: UIImage(named: "developer")!, description: "Learn how to build App like a pro", introductionVideoURL: URL(string: "https://www.youtube.com/watch?v=HtSuA80QTyo&t=2s&list=PLUl4u3cNGP61Oq3tWYp6V_F-5jb5L2iHb&index=2!")!)
        let popCourse = Course(buttonImage: UIImage(named: "cover_pop")!, title: "Become a Pop Star", instructor: "Taylor Swift", featureImage: UIImage(named: "pop")!, description: "Learn how to become a Pop Star", introductionVideoURL: URL(string: "https://www.youtube.com/watch?v=P-TFhUq3otQ")!)
        
        return [chefCourse, devCourse, popCourse]
    }
}
