//
//  searchViewController.swift
//  MovieApp+
//
//  Created by NERO on 5/16/24.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet var searchView: UIView!
    @IBOutlet var searchViewNavigationBar: UINavigationItem!
    @IBOutlet var searchbarView: UIImageView!
    @IBOutlet var searchIconView: UIImageView!
    @IBOutlet var searchTextField: UITextField!
    
    @IBOutlet var comingSoonButton: UIButton!
    @IBOutlet var PopularContentButton: UIButton!
    @IBOutlet var top10MovieButton: UIButton!
    
    @IBOutlet var searchResultLabel: UILabel!
    @IBOutlet var tipTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchView.backgroundColor = .black
        searchViewNavigationBar.title = "NEW & HOT 검색"
        searchbarView.backgroundColor = .deepDarkGray
        searchbarView.layer.cornerRadius = 4
        
        searchIconView.image = .init(systemName: "magnifyingglass")
        searchIconView.tintColor = .gray
        
        searchTextField.backgroundColor = .clear
        searchTextField.textColor = .white
        searchTextField.tintColor = .white
        searchTextField.font = .systemFont(ofSize: 17)
        
        comingSoonButton.layer.cornerRadius = 15
        comingSoonButton.setTitle("공개 예정", for: .normal)
        comingSoonButton.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        comingSoonButton.backgroundColor = .white
        comingSoonButton.setTitleColor(.black, for: .normal)
        comingSoonButton.setImage(.init(named: "blue"), for: .normal)
        comingSoonButton.imageEdgeInsets.right = 5
        
        PopularContentButton.layer.cornerRadius = 15
        PopularContentButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        PopularContentButton.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        PopularContentButton.setTitleColor(.white, for: .normal)
        PopularContentButton.titleLabel?.numberOfLines = 0
        PopularContentButton.setImage(.init(named: "turquoise"), for: .normal)
        PopularContentButton.imageEdgeInsets.right = 5
        
        top10MovieButton.layer.cornerRadius = 15
        top10MovieButton.setTitle("TOP 10 시리즈", for: .normal)
        top10MovieButton.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        top10MovieButton.setTitleColor(.white, for: .normal)
        top10MovieButton.setImage(.init(named: "pink"), for: .normal)
        top10MovieButton.imageEdgeInsets.right = 5
        
        searchResultLabel.textColor = .white
        searchResultLabel.textAlignment = .center
        searchResultLabel.text = #""인사이드 아웃 2""#
        searchResultLabel.font = .systemFont(ofSize: 25, weight: .heavy)
        
        tipTextLabel.textColor = .gray
        tipTextLabel.textAlignment = .center
        tipTextLabel.text = "두근두근! 공개되면 알림을 드릴게요. 💌"
        tipTextLabel.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    @IBAction func setComingSoonButtonColor(_ sender: UIButton) {
        setTappedButtonColor(sender)
        setTappedButtonContent(sender)
    }
    @IBAction func setPopularContentButtonColor(_ sender: UIButton) {
        setTappedButtonColor(sender)
        setTappedButtonContent(sender)
    }
    @IBAction func setTop10MovieButtonColor(_ sender: UIButton) {
        setTappedButtonColor(sender)
        setTappedButtonContent(sender)
    }
    
    func setTappedButtonColor(_ sender: UIButton) {
        comingSoonButton.backgroundColor = .clear
        PopularContentButton.backgroundColor = .clear
        top10MovieButton.backgroundColor = .clear
        
        comingSoonButton.setTitleColor(.white, for: .normal)
        PopularContentButton.setTitleColor(.white, for: .normal)
        top10MovieButton.setTitleColor(.white, for: .normal)

        sender.backgroundColor = .white
        sender.setTitleColor(.black, for: .normal)
    }
    
    func setTappedButtonContent(_ sender: UIButton) {
        switch sender {
        case comingSoonButton:
            searchResultLabel.text = #""인사이드 아웃 2""#
            tipTextLabel.text = "두근두근! 공개되면 알림을 드릴게요. 💌"
        case PopularContentButton:
            searchResultLabel.text = #""선재 업고 튀어""#
            tipTextLabel.text = "현재 콘텐츠 1위! 서둘러 시청해 보세요~ 🍿"
        case top10MovieButton:
            searchResultLabel.text = "아이쿠! 아직 준비 중입니다"
            tipTextLabel.text = "보고 싶은 영화, 배우, 감독 또는 장르를 검색해 보세요. ✨"
            tipTextLabel.numberOfLines = 0
        default:
            return
        }
    }
}
