//
//  MapRestaurantViewViewController.swift
//  MyRestraunts
//
//  Created by Andrei Palonski on 06.09.16.
//  Copyright © 2016 Andrei Palonski. All rights reserved.
//

import UIKit
import MapKit

class MapRestaurantViewViewController: UIViewController, MKMapViewDelegate {
  
  @IBOutlet var mapVew: MKMapView!
  var resturant: Restaurants!
  

    override func viewDidLoad() {
        super.viewDidLoad()
      
      mapVew.delegate = self

      let geocoder = CLGeocoder()
      
      geocoder.geocodeAddressString(resturant.location, completionHandler: {
          (placemarks, error) in
        //проверка на наличие ошибок
        if error != nil {
        print(error)
        }
        // проверка массива placemarks
        if placemarks != nil && (placemarks?.count)! > 0 {
        
        let placemark = placemarks![0] 
        // добавляем аннотации
          let annotation = MKPointAnnotation()
          annotation.title = self.resturant.name
          annotation.subtitle = self.resturant.type
          annotation.coordinate = (placemark.location?.coordinate)!
          
          self.mapVew.showAnnotations([annotation], animated: true)
          self.mapVew.selectAnnotation(annotation, animated: true)
        }
        
      })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    // создаем аннотацию
    // идентификатор
    
    let identifier = "CurrentPin"
    
    if annotation.isKind(of: MKUserLocation.self) {
    return nil
    }
    
    // ищем свободные аннотации
    
    var annotationView = mapVew.dequeueReusableAnnotationView(withIdentifier: identifier)
    if annotationView == nil {
    annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
      annotationView?.canShowCallout = true
    }
    
    
    // добавляем изображение к аннотации
    let leftSideAnnotationView = UIImageView(frame: CGRect(x: 0, y: 0, width: 52, height: 52))
    leftSideAnnotationView.image = UIImage(named: resturant.image)
    annotationView?.leftCalloutAccessoryView = leftSideAnnotationView
    
    return annotationView
    
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
