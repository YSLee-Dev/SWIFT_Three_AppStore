//
//  ListCell.swift
//  Three_AppStore
//
//  Created by 이윤수 on 2022/08/04.
//

import UIKit

import Then
import SnapKit

class ListCell : UICollectionViewCell{
    
    let cellId = "ListCell"
    
    var appName = UILabel().then{
        $0.font = UIFont.boldSystemFont(ofSize: 20)
        $0.textColor = .black
    }
    
    var subTitle = UILabel().then{
        $0.font = UIFont.boldSystemFont(ofSize: 15)
        $0.textColor = .gray
    }
    
    var installBtn = UIButton().then{
        $0.setTitle("받기", for: .normal)
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 15
        $0.backgroundColor = .secondarySystemBackground
        $0.setTitleColor(UIColor.systemBlue, for: .normal)
    }
    
    var inAppInfo = UILabel().then{
        $0.text = "앱 내 구입"
        $0.font = UIFont.systemFont(ofSize: 10)
        $0.textColor = .secondaryLabel
    }
    
    var icon = UIImageView().then{
        $0.layer.masksToBounds = true
        $0.layer.cornerRadius = 10
    }
    
    
    override func layoutSubviews() {
        [self.appName, self.subTitle, self.installBtn, self.inAppInfo,self.icon].forEach{
            self.addSubview($0)
        }
        
        self.icon.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.width.equalTo(70)
            $0.height.equalTo(70)
            $0.centerY.equalToSuperview()
        }
        
        self.appName.snp.makeConstraints{
            $0.bottom.equalTo(self.icon.snp.centerY).offset(-5)
            $0.leading.equalTo(self.icon.snp.trailing).offset(10)
        }
        
        self.subTitle.snp.makeConstraints{
            $0.top.equalTo(self.icon.snp.centerY).offset(5)
            $0.leading.equalTo(appName)
        }
        
        self.installBtn.snp.makeConstraints{
            $0.width.equalTo(50)
            $0.height.equalTo(30)
            $0.trailing.equalTo(self.snp.trailing).offset(-5)
            $0.centerY.equalToSuperview()
        }
        
        self.inAppInfo.snp.makeConstraints{
            $0.top.equalTo(self.installBtn.snp.bottom).offset(5)
            $0.centerX.equalTo(self.installBtn)
        }
    }
}
