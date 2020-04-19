//
//  ViewController.swift
//  EasySkeletonView
//
//  Created by avijitmobi on 04/19/2020.
//  Copyright (c) 2020 avijitmobi. All rights reserved.
//

import UIKit
import EasySkeletonView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Start"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClick(_ sender : UIButton){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SkViewController") as! SkViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

class SkViewController  : UIViewController{
    
    @IBOutlet weak var skView : UIView!
    //Decleare a variable where you want to show.
    var skeletonView : EasySkeletonView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Skeleton View"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //init with view where you want to show this skeleton and set the style of the skeleton.
        skeletonView = EasySkeletonView(on: self.skView, style: .listWithCircularImage)
        
        //What would be height of each list. Default value is 90
        skeletonView?.eachItemHeight = 90
        
        //What would be the spped of gradient movement. Default value is 1
        skeletonView?.gradientSpeed = 0.7
        
        //What will be the gap of each list. Default value is 0.
        skeletonView?.gapOfList = 0
        
        //when you show line right side of circle or box then how many lines you want to show.Default value is 3
        skeletonView?.numberOfLines = 3
        
        //Number of list you want to show. Default is max number base your providing item height.
        skeletonView?.numOfList = 10
        
        //Show your animation
        skeletonView?.startAnimating()
    }
    
    @IBAction func btnStop(_ sender : UIButton){
        //Stop showing your skeleton
        self.skeletonView?.stopAnimating()
        self.navigationController?.popViewController(animated: true)
    }
    
}

