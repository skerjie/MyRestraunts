//
//  QuickReviewViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 31.08.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit

class QuickReviewViewController: UIViewController {
  
  @IBOutlet weak var backgrounImageView: UIImageView!
  @IBOutlet weak var windowView : UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // создание brur эффекта
    var darkBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
    var darkBlurEffectView = UIVisualEffectView(effect: darkBlurEffect)
    darkBlurEffectView.frame = view.bounds
    backgrounImageView.addSubview(darkBlurEffectView)
    
    // создание анимации для вьюшки с кнопками
    
    windowView.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //  анимация для вьюшки с кнопками
  override func viewDidAppear(_ animated: Bool) {
    UIView.animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
      self.windowView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)

      }, completion: nil)
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
