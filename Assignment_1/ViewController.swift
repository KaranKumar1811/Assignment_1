//
//  ViewController.swift
//  Assignment_1
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 5, animations: {
            self.imgView.frame.origin.y+=770
        },completion: nil)
    }


}

