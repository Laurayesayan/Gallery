//
//  ViewController.swift
//  Gallery
//
//  Created by Лаура Есаян on 08/11/2019.
//  Copyright © 2019 LY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // I am writing this mindless message just for git test.

    var images = [UIImage]()
    var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...10 {
            images.append(UIImage(imageLiteralResourceName: "cat_\(i)"))
        }
    }

    @IBOutlet weak var picImageView: UIImageView!
    
    @IBAction func backButton(_ sender: Any) {
        currentIndex = currentIndex == 0 ? images.count - 1 : currentIndex - 1
        picImageView.image = images[currentIndex % images.count]
    }
    
    @IBAction func nextButton(_ sender: Any) {
        currentIndex += 1
        picImageView.image = images[currentIndex % images.count]
    }
}

