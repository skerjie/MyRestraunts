//
//  ShareViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 01.09.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
  
  @IBOutlet weak var backgrounImageView: UIImageView!
  @IBOutlet weak var topLeft : UIView!
  @IBOutlet weak var topRight : UIView!
  @IBOutlet weak var bottomLeft : UIView!
  @IBOutlet weak var bottomRight : UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Вся анимация как в QuickReviewViewController
    // Прячем все кнопки за главное View
    topLeft.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    topRight.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    bottomRight.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    bottomLeft.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
  }
  
  // Отдельно для каждой кнопки  делаем анимацию появления с задержкой от 0..0.2..0.5..0.7
  override func viewDidAppear(_ animated: Bool) {
    UIView.animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.topLeft.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
    
    UIView.animate(withDuration: 0.6, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.topRight.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
    
    UIView.animate(withDuration: 0.6, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.bottomRight.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
    
    UIView.animate(withDuration: 0.6, delay: 0.7, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      
      self.bottomLeft.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
      
      }, completion: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
