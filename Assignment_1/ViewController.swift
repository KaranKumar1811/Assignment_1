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
        
        self.imgView.frame.origin.y = self.space.bounds.minY
        self.imgView.frame.origin.x = self.space.bounds.minX
        
        move()
        
       
      
        
        
      
        
        
    }
    
    func move() -> Void {
       
                     UIView.animate(withDuration: 2, animations: {
                               
                                if self.imgView.frame.origin.y == self.space.bounds.minY && self.imgView.frame.origin.x == self.space.bounds.minX
                                {
                    //            print(self.space.bounds.minX)
                    //            print(self.space.bounds.minY)
                                self.imgView.frame.origin.y += self.space.bounds.height - self.imgView.bounds.height
        //                            print(self.space.bounds.height - self.imgView.bounds.height)
        //                            print(self.imgView.frame.origin.y)
        //                            print("\n")
        //                            print( self.imgView.frame.origin.x)
                                    
                                }
                              
                            
                            
                            },completion:{ (true) in
                                UIView.animate(withDuration: 2, animations: {
                                    if self.imgView.frame.origin.y == self.space.bounds.height - self.imgView.bounds.height && self.imgView.frame.origin.x == self.space.bounds.minX
                                              {
                                                            self.imgView.frame.origin.x += self.space.bounds.width - self.imgView.bounds.width
                                                        }
                                },completion: {
                                    (true) in
                                    UIView.animate(withDuration: 2, animations: {
                                        if self.imgView.frame.origin.y == self.space.bounds.height - self.imgView.bounds.height && self.imgView.frame.origin.x == self.space.bounds.width - self.imgView.bounds.width
                                                  {
                                                    self.imgView.frame.origin.y -= self.space.bounds.height - self.imgView.bounds.height
                                                            }
                                    },completion:{
                                        (true) in
                                        UIView.animate(withDuration: 2, animations: {
                                            if self.imgView.frame.origin.y == self.space.bounds.minY && self.imgView.frame.origin.x == self.space.bounds.width - self.imgView.bounds.width
                                                      {
                                                                    self.imgView.frame.origin.x -= self.space.bounds.width - self.imgView.bounds.width
//                                                        print(self.space.bounds.minY)
//                                                        print(self.space.bounds.minX)
                                                                }
                                        },completion: {(true) in
                                            self.move()
                                        })
                                    })
                                    
                                })
                            })
                
    }


}

