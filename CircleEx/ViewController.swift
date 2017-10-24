//
//  ViewController.swift
//  CircleEx
//
//  Created by Rajesh Kommana on 24/10/17.
//  Copyright © 2017 Rajesh Kommana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let centerPoint = view.center
        print(centerPoint.x)
        print(centerPoint.y)
        createViewsAlongCircle(offSetX: centerPoint.x, offSetY: centerPoint.y, viewColor: UIColor.orange)
    }
    func createCenterView(radius:CGFloat,offSetX:CGFloat,offSetY:CGFloat,viewColor:UIColor){
        let frame = CGRect(x:0, y: 0, width: 35, height: 35)
        let singleViewForCircle = UIView(frame: frame)
        singleViewForCircle.backgroundColor = UIColor.red
        singleViewForCircle.layer.cornerRadius = 14
        singleViewForCircle.layer.opacity = 0
        singleViewForCircle.layer.opacity = 1
        singleViewForCircle.backgroundColor = UIColor.orange
        self.view.addSubview(singleViewForCircle)
        singleViewForCircle.center.x = offSetX
        singleViewForCircle.center.y = offSetY
        
    }
    func createCircleView(i:Int,radius:CGFloat,offSetX:CGFloat,offSetY:CGFloat,viewColor:UIColor){
        let singleView = .pi / 12 * CGFloat(i) * CGFloat(2)
        let sinValue:CGFloat = sin(singleView)
        let cosValue:CGFloat = cos(singleView)
        let x = sinValue * radius + offSetX
        let y = cosValue * radius + offSetY
        let frame = CGRect(x: x, y: y, width: 35, height: 35)
        let singleViewForCircle = UIView(frame: frame)
        singleViewForCircle.backgroundColor = viewColor
        singleViewForCircle.layer.cornerRadius = 14
        singleViewForCircle.layer.opacity = 0
        singleViewForCircle.layer.opacity = 1
        singleViewForCircle.backgroundColor = UIColor.purple
        self.view.addSubview(singleViewForCircle)
        singleViewForCircle.center.x = x
        singleViewForCircle.center.y = y
        print("single view created \(i)")
        
    }
    func createViewsAlongCircle(offSetX:CGFloat,offSetY:CGFloat,viewColor: UIColor) {
        let radius:CGFloat = 120.0
        
        for i in 0 ... 12 {
            UIView.animate(withDuration: 5, animations: {
                if i == 0{
                    
                    self.createCenterView(radius:radius,offSetX:offSetX,offSetY:offSetY,viewColor:viewColor)
                    
                    
                }
            })
            UIView.animate(withDuration: 5, animations: {
                self.createCircleView(i: i, radius:radius,offSetX:offSetX,offSetY:offSetY,viewColor:viewColor)
            })
            
            
        }
        
        
        
        
        
    }

}

