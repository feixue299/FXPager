//
//  ViewController.swift
//  FXPager
//
//  Created by feixue299 on 12/31/2020.
//  Copyright (c) 2020 feixue299. All rights reserved.
//

import UIKit
import FXPager

class MyPager: PagerProtocol {
    var title: String = ""
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pagerView = PagerView()
        pagerView.delegate = self
        
        view.addSubview(pagerView)
        
        pagerView.translatesAutoresizingMaskIntoConstraints = false
        pagerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pagerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pagerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        pagerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: PagerViewProtocol {
    func numberOfPages() -> Int {
        return 20
    }
    
    func categoryPager(page: Int) -> PagerProtocol {
        let pager = MyPager()
        pager.title = "index:\(page)"
        return pager
    }
    
    func contentPager(page: Int) -> PagerProtocol {
        return MyPager()
    }
    
}
