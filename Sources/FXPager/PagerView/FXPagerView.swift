//
//  File.swift
//  
//
//  Created by Mr.wu on 2020/12/31.
//

import UIKit

public protocol PagerViewProtocol {
    func numberOfPages() -> Int
    func categoryPager(pages: Int) -> PagerProtocol
    func contentPager(pages: Int) -> PagerProtocol
}

open class PagerView: UIView {
    
    open weak var delegate: PagerViewProtocol?
    
    private let categoryScrollView = UIScrollView()
    private let categoryStackView = UIStackView()
    private let contentScrollView = UIScrollView()
    private let contentStackView = UIStackView()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(categoryScrollView)
        categoryScrollView.addSubview(categoryStackView)
        addSubview(contentScrollView)
        contentScrollView.addSubview(contentStackView)
        
        categoryScrollView.translatesAutoresizingMaskIntoConstraints = false
        contentScrollView.translatesAutoresizingMaskIntoConstraints = false
        
        categoryScrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        categoryScrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        categoryScrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        categoryScrollView.bottomAnchor.constraint(equalTo: contentScrollView.topAnchor).isActive = true
        contentScrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentScrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    open func reloadData() {
        guard let delegate = self.delegate else { return }
        buildCategory(delegate: delegate)
        buildContent(delegate: delegate)
    }
    
    private func buildCategory(delegate: PagerViewProtocol) {
        
    }
    
    private func buildContent(delegate: PagerViewProtocol) {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UITableViewDelegate {
    
}
