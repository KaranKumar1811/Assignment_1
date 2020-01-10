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
                              
                            
                            
                            },completion: nil)
        
          let swipeRight=UISwipeGestureRecognizer(target: self, action: #selector(swiped))
              swipeRight.direction=UISwipeGestureRecognizer.Direction.right
              view.addGestureRecognizer(swipeRight)
              
              let swipeLeft=UISwipeGestureRecognizer(target: self, action: #selector(swiped))
              swipeLeft.direction=UISwipeGestureRecognizer.Direction.left
              view.addGestureRecognizer(swipeLeft)
        
        
      
        
        
    }
     @objc func swiped(gesture:UISwipeGestureRecognizer)
       {
          self.imgView.frame.origin.y = self.space.bounds.minY
          self.imgView.frame.origin.x = self.space.bounds.minX
          
          let swipeGesture=gesture as? UISwipeGestureRecognizer
           switch swipeGesture?.direction {
            
               case UISwipeGestureRecognizer.Direction.right:
                   moveclockwise()
               break
                   case UISwipeGestureRecognizer.Direction.left:
                  moveCounterClockwise()
               break
               default:
                   break
               }
           
       }
    
    
  func moveCounterClockwise()
        {
            self.imgView.frame.origin.y = self.space.bounds.minY
                    self.imgView.frame.origin.x = self.space.bounds.minX
                    
                       
            UIView.animate(withDuration: 1, animations: {
                       
                        if self.imgView.frame.origin.y == self.space.bounds.minY && self.imgView.frame.origin.x == self.space.bounds.minX
                        {
                            print(self.imgView.isAnimating)
            //            print(self.space.bounds.minX)
            //            print(self.space.bounds.minY)
                             self.imgView.frame.origin.x += self.space.bounds.width - self.imgView.bounds.width
                      //  self.imageView.frame.origin.y += self.space.bounds.height - self.imageView.bounds.height
                            
                            
                        }
                      
                    
                    
                    },completion:{ (true) in
                        UIView.animate(withDuration: 1, animations: {
                            if self.imgView.frame.origin.y == self.space.bounds.minY && self.imgView.frame.origin.x == self.space.bounds.width - self.imgView.bounds.width
    //
                                      {
                                         self.imgView.frame.origin.y += self.space.bounds.height - self.imgView.bounds.height
                                        
                                       
                                                }
                        },completion: {
                            (true) in
                            UIView.animate(withDuration: 1, animations: {
                                if self.imgView.frame.origin.y == self.space.bounds.height - self.imgView.bounds.height && self.imgView.frame.origin.x == self.space.bounds.width - self.imgView.bounds.width
                                          {
                                            self.imgView.frame.origin.x -= self.space.bounds.width - self.imgView.bounds.width
                                                    }
                            },completion:{
                                (true) in
                                UIView.animate(withDuration: 1, animations: {
                                   if  self.imgView.frame.origin.y == self.space.bounds.height - self.imgView.bounds.height && self.imgView.frame.origin.x == self.space.bounds.minX
                                   
                                              {
                                                    
                                                self.imgView.frame.origin.y -= self.space.bounds.height - self.imgView.bounds.height
                                               
                                                        }
                                },completion:nil)
                            })
                            
                        })
                    })
        }
    
    func moveclockwise() -> Void {
       
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
                                        },completion: nil)
                                        
                                    })
                                    
                                })
                            })
                
    }


}

