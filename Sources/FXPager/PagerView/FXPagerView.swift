//
//  File.swift
//  
//
//  Created by Mr.wu on 2020/12/31.
//

import UIKit

public protocol PagerViewProtocol: class {
    func numberOfPages() -> Int
    func categoryPager(page: Int) -> PagerProtocol
    func contentPager(page: Int) -> PagerProtocol
}

open class PagerView: UIView {
    
    open weak var delegate: PagerViewProtocol? {
        didSet {
            reloadData()
        }
    }
    
    private let categoryStackView = UIStackView()
    private let contentStackView = UIStackView()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        categoryStackView.spacing = 10
        categoryStackView.alignment = .center
        categoryStackView.axis = .horizontal
        categoryStackView.distribution = .fillProportionally
        
        let categoryScrollView = UIScrollView()
        let contentScrollView = UIScrollView()
        
        addSubview(categoryScrollView)
        categoryScrollView.addSubview(categoryStackView)
        addSubview(contentScrollView)
        contentScrollView.addSubview(contentStackView)
        
        categoryScrollView.translatesAutoresizingMaskIntoConstraints = false
        contentScrollView.translatesAutoresizingMaskIntoConstraints = false
        categoryStackView.translatesAutoresizingMaskIntoConstraints = false
        
        categoryScrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        categoryScrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        categoryScrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        categoryScrollView.bottomAnchor.constraint(equalTo: contentScrollView.topAnchor).isActive = true
        contentScrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentScrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        categoryStackView.leadingAnchor.constraint(equalTo: categoryScrollView.leadingAnchor).isActive = true
        categoryStackView.topAnchor.constraint(equalTo: categoryScrollView.topAnchor).isActive = true
        categoryStackView.trailingAnchor.constraint(equalTo: categoryScrollView.trailingAnchor).isActive = true
        categoryStackView.bottomAnchor.constraint(equalTo: categoryScrollView.bottomAnchor).isActive = true
        categoryStackView.heightAnchor.constraint(equalTo: categoryScrollView.heightAnchor).isActive = true
    }
    
    open func reloadData() {
        guard let delegate = self.delegate else { return }
        buildCategory(delegate: delegate)
        buildContent(delegate: delegate)
    }
    
    private func buildCategory(delegate: PagerViewProtocol) {
        for subView in categoryStackView.subviews {
            subView.removeFromSuperview()
        }
        for index in 0..<delegate.numberOfPages() {
            let label = UILabel()
            label.heightAnchor.constraint(equalToConstant: 30).isActive = true
            label.text = delegate.categoryPager(page: index).title
            categoryStackView.addArrangedSubview(label)
        }
    }
    
    private func buildContent(delegate: PagerViewProtocol) {
        
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UITableViewDelegate {
    
}
