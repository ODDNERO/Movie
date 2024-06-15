//
//  saveListViewController.swift
//  MovieApp+
//
//  Created by NERO on 5/16/24.
//

import UIKit

class SaveListViewController: UIViewController {
    @IBOutlet var saveListView: UIView!
    @IBOutlet var saveListNavigationBar: UINavigationItem!
    
    @IBOutlet var saveListTitleLabel: UILabel!
    @IBOutlet var saveListDesceriptionLabel: UILabel!
    @IBOutlet var saveListImageView: UIImageView!
    
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var checkSaveableContentsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveListView.backgroundColor = .black
        saveListNavigationBar.title = "저장한 콘텐츠 목록"
        
        saveListTitleLabel.textColor = .white
        saveListTitleLabel.textAlignment = .center
        saveListTitleLabel.text = "'나만의 자동 저장' 기능"
        saveListTitleLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        
        saveListDesceriptionLabel.textColor = .gray
        saveListDesceriptionLabel.textAlignment = .center
        saveListDesceriptionLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. \n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        saveListDesceriptionLabel.font = .systemFont(ofSize: 13, weight: .regular)
        saveListDesceriptionLabel.numberOfLines = 0
        
        saveListImageView.image = .init(named: "dummy")
        saveListImageView.contentMode = .scaleAspectFill
        
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        settingButton.tintColor = .white
        settingButton.backgroundColor = .customBlue
        settingButton.layer.cornerRadius = 4
        
        checkSaveableContentsButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        checkSaveableContentsButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        checkSaveableContentsButton.tintColor = .black
        checkSaveableContentsButton.backgroundColor = .white
        checkSaveableContentsButton.layer.cornerRadius = 4
    }
}
