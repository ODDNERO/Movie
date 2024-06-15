//
//  homeViewController.swift
//  MovieApp+
//
//  Created by NERO on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var homeView: UIView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var loginButton: UIButton!
    
    @IBOutlet var homeMovieImage: UIImageView!
    @IBOutlet var homeMovieBackgroundImage: UIImageView!
    @IBOutlet var MovieKeywordLabel: UILabel!
    @IBOutlet var playMovieButton: UIButton!
    @IBOutlet var wishMovieListButton: UIButton!
    
    @IBOutlet var todayContentsLabel: UILabel!
    @IBOutlet var firstTodaysMovieImage: UIImageView!
    @IBOutlet var secondTodaysMovieImage: UIImageView!
    @IBOutlet var thirdTodaysMovieImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.backgroundColor = .black
        userNameLabel.text = "시네필 님"
        userNameLabel.textColor = .white
        userNameLabel.textAlignment = .center
        userNameLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        loginButton.setTitle("로그인", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        
        homeMovieImage.image = .init(named: "비질란테")
        homeMovieImage.contentMode = .scaleAspectFill
        homeMovieBackgroundImage.contentMode = .scaleToFill
        homeMovieImage.layer.cornerRadius = 6
        
        MovieKeywordLabel.text = "액션 · 범죄 · 느와르 · 추적 · 경찰"
        MovieKeywordLabel.textColor = .white
        MovieKeywordLabel.textAlignment = .center
        
        playMovieButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playMovieButton.setTitle("재생", for: .normal)
        playMovieButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        playMovieButton.tintColor = .black
        playMovieButton.imageEdgeInsets.right = 15
        playMovieButton.backgroundColor = .white
        playMovieButton.layer.cornerRadius = 4
        
        wishMovieListButton.setImage(UIImage(systemName: "plus"), for: .normal)
        wishMovieListButton.setTitle("내가 찜한 리스트", for: .normal)
        wishMovieListButton.titleLabel?.numberOfLines = 0
        wishMovieListButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        wishMovieListButton.tintColor = .white
        wishMovieListButton.imageEdgeInsets.left = 5
        wishMovieListButton.imageEdgeInsets.right = 15
        wishMovieListButton.backgroundColor = .deepDarkGray
        wishMovieListButton.layer.cornerRadius = 4
        
        todayContentsLabel.textColor = .white
        todayContentsLabel.textAlignment = .left
        
        firstTodaysMovieImage.layer.cornerRadius = 4
        firstTodaysMovieImage.image = .init(named: "소년시대")
        firstTodaysMovieImage.contentMode = .scaleAspectFill
        
        secondTodaysMovieImage.layer.cornerRadius = 4
        secondTodaysMovieImage.image = .init(named: "무빙")
        secondTodaysMovieImage.contentMode = .scaleAspectFill
        
        thirdTodaysMovieImage.layer.cornerRadius = 4
        thirdTodaysMovieImage.image = .init(named: "마스크걸")
        thirdTodaysMovieImage.contentMode = .scaleAspectFill
    }
    
    @IBAction func tappedPlayButton(_ sender: UIButton) {
        randomMovieImage()
    }
    
    func randomMovieImage() {
        var movieTitle = ["비질란테", "소년시대", "무빙", "마스크걸", "스즈메의문단속", "서울의봄", "태극기휘날리며", "아바타", "암살", "오펜하이머", "어벤져스엔드게임", "알라딘", "2"]
        
        var movieImageView = [homeMovieImage, firstTodaysMovieImage, secondTodaysMovieImage, thirdTodaysMovieImage]
        
        for imageView in movieImageView {
            guard let randomMovieTitle = movieTitle.randomElement() else {
                continue
            }
            if let resultImage = UIImage(named: randomMovieTitle) {
                imageView?.image = resultImage
                if let index = movieTitle.firstIndex(of: randomMovieTitle) {
                    movieTitle.remove(at: index)
                }
            }
        }
    }
}
