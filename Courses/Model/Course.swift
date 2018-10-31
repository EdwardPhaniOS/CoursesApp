//
//  Course.swift
//  Courses
//
//  Created by Tan Vinh Phan on 10/19/18.
//  Copyright © 2018 PTV. All rights reserved.
/*
 Function ve ban chat chinh la cac dong code, ta dung func de code gon gang, de hieu hon, tranh bi trung lap
 Step 1: Import all images, all the resources to our assets
 Step 2: Design UI (View) and test
 Step 3: Create our course data structure and create a Store of Courses (Data Model) and test
 Step 4: Create Controller and test
*/
import UIKit

struct Course
{
    var buttonImage: UIImage
    var title: String
    var instructor: String
    var featureImage: UIImage
    var description: String
    var introductionVideoURL: URL
}


