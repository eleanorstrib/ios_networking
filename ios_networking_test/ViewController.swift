//
//  ViewController.swift
//  ios_networking_test
//
//  Created by Eleanor Stribling on 2/11/16.
//  Copyright © 2016 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePlaceholder: UILabel!
    @IBOutlet weak var networkImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURL = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Golde33443.jpg")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(imageURL) { (data, response, error) in
            if error == nil {
                let displayImage = UIImage(data:data!)
                self.networkImage.image = displayImage
            }
        }
        task.resume()
    }

}

