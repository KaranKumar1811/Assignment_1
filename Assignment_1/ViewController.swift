//
//  ViewController.swift
//  Assignment_1
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var space: UIView!
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var flag = 1
        self.imgView.frame.origin.y = self.space.bounds.minY
        self.imgView.frame.origin.x = self.space.bounds.minX
        if flag == 1{
            print(flag)
        UIView.animate(withDuration: 5, animations: {
            let aa = self.space.bounds.height - self.imgView.bounds.height
            if self.imgView.frame.origin.y == self.space.bounds.minY && self.imgView.frame.origin.x == self.space.bounds.minX
            {
//            print(self.space.bounds.minX)
//            print(self.space.bounds.minY)
            self.imgView.frame.origin.y += aa
                print(self.space.bounds.height - self.imgView.bounds.height)
                print(self.imgView.frame.origin.y)
                print("\n")
                print( self.imgView.frame.origin.x)
                
            }
          
        
        
        },completion:{ (true) in
            UIView.animate(withDuration: 5, animations: {
                if self.imgView.frame.origin.y == self.space.bounds.height - self.imgView.bounds.height && self.imgView.frame.origin.x == self.space.bounds.minX
                          {
                                        self.imgView.frame.origin.x += 200
                                    }
            },completion: nil)
        })
      
        }
        
      
        
        
    }


}

