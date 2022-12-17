//
//  ViewController.swift
//  HYOAlgorithm
//
//  Created by hyo on 2022/12/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        handler()
    }
    
    func handler() {
        let firstIndex = searchSubString(originStr: "aabcaabaaca", handlerStr: "aabaa")
        print(firstIndex)
    }

}

