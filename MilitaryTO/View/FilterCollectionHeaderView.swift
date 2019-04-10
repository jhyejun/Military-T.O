//
//  FilterCollectionHeaderView.swift
//  MilitaryTO
//
//  Created by 장혜준 on 10/04/2019.
//  Copyright © 2019 장혜준. All rights reserved.
//

import Foundation

class FilterCollectionHeaderView: UICollectionReusableView {
    private let titleLabel: UILabel = UILabel().then {
        $0.numberOfLines = 0
        $0.textColor = .darkGray
        $0.font = $0.font.withSize(15)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(20)
            make.leading.trailing.bottom.equalToSuperview().inset(10)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(title: String) {
        titleLabel.text = title
    }
}
