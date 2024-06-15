//
//  SignUpViewController.swift
//  MovieApp+
//
//  Created by NERO on 5/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet var appTitleLable: UILabel!
    @IBOutlet var signupFailureTextLabel: UILabel!
    
    @IBOutlet var emailOrPhoneNumberTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locationTextField: UITextField!
    @IBOutlet var RecommendationCodeTextField: UITextField!
    
    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var additionalInformationLabel: UILabel!
    @IBOutlet var additionalInformationSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupFailureTextLabel.textColor = .white
        signupFailureTextLabel.textAlignment = .center
        signupFailureTextLabel.numberOfLines = 0
        
        passwordTextField.isSecureTextEntry = true
        RecommendationCodeTextField.keyboardType = .numberPad
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        signUpButton.tintColor = .black
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 5
        
        additionalInformationSwitch.onTintColor = .pointRed
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
        checkSignupPossible()
    }
    
    func checkSignupPossible() {
        let textFields = [emailOrPhoneNumberTextField, passwordTextField, nicknameTextField, locationTextField, RecommendationCodeTextField]
        for textField in textFields {
            guard let text = textField?.text else {
                return
            }
            
            if textField == emailOrPhoneNumberTextField || textField == passwordTextField {
                if text.isEmpty {
                    signupFailureTextLabel.text = "⚠️ 이메일과 비밀번호는 필수로 입력되어야 합니다."
                    return
                }
            }
            if textField == passwordTextField {
                if text.count < 6 {
                    signupFailureTextLabel.text = "⚠️ 비밀번호는 최소 6자리 이상이어야 합니다."
                    return
                }
            }
            if textField == RecommendationCodeTextField {
                if !text.isEmpty && Int(text) == nil {
                    signupFailureTextLabel.text = "⚠️ 추천 코드는 숫자만 입력되어야 합니다."
                    return
                }
            }
            signupFailureTextLabel.text = "✅ 회원 가입 완료!"
        }
    }
}
