//
//  ViewController.swift
//  Login
//
//  Created by Арайлым Сермагамбет on 26.02.2024.
//


import UIKit
import SnapKit

    final class ViewController: UIViewController, ConstraintRelatableTarget {
        // MARK: - UI
        
        
        private let vectorView: UIImageView = {
            let vectorView = UIImageView()
            vectorView.image = .vector2
            
            return vectorView
        }()
        
        private let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = .vector1
            
            return imageView
        }()
        
        private let label: UILabel = {
            let label = UILabel()
            label.text = "Login"
            label.font = UIFont.boldSystemFont(ofSize: 24)
            label.textColor = .white
            
            return label
        }()
        
        private let emailtextField : UITextField = {
            let textField = UITextField()
            textField.layer.cornerRadius = 16
            textField.font = UIFont.systemFont(ofSize: 20)
            textField.placeholder = "Email "
            textField.font = UIFont.boldSystemFont(ofSize: 12)
            textField.backgroundColor = .white
            
            let iconView = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 40))
            let imageView = UIImageView()
            imageView.image = .group2
            imageView.frame = CGRect(x: 12, y: 12, width: 15, height: 15)
            
            let imagegreenView = UIImageView()
            imagegreenView.image = .group3
            imagegreenView.frame = CGRect(x: 235, y: 12, width: 15, height: 15)

            iconView.addSubview(imagegreenView)
            iconView.addSubview(imageView)
            textField.leftView = iconView
            textField.leftViewMode = .always

            return textField
            
        }()
        
        private let passwordtextField : UITextField = {
            let textField = UITextField()
            textField.layer.cornerRadius = 16
            textField.font = UIFont.systemFont(ofSize: 20)
            textField.placeholder = "Password"
            textField.font = UIFont.boldSystemFont(ofSize: 12)
            textField.backgroundColor = .white
            textField.isSecureTextEntry = true
            
            let iconView = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 40))
            let imageView = UIImageView()
            imageView.image = .group1
            imageView.frame = CGRect(x: 12, y: 12, width: 15, height: 15)
            iconView.addSubview(imageView)
            textField.leftView = iconView
            textField.leftViewMode = .always
            
            return textField
            
        }()
        
        private let signInBtn: UIButton = {
            let btn = UIButton(primaryAction: UIAction { _ in
                
            })
            btn.layer.cornerRadius = 16
            btn.backgroundColor =  UIColor(red: 106/255, green: 116/255, blue: 207/255, alpha: 1.0)
            btn.setTitle("Login", for: .normal)
            btn.setTitleColor(.white, for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            return btn
        }()
        
        private let forgotPassword: UIButton = {
            let btn = UIButton(primaryAction: UIAction { _ in
                
            })
            btn.setTitle("Forgot your password?", for: .normal)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            btn.setTitleColor(.white, for: .normal)
            
            return btn
        }()
        
        private let textLable: UILabel = {
            let label = UILabel()
            label.text = "or connect with"
            label.font = UIFont.boldSystemFont(ofSize:  10)
            label.textColor = .gray
            
            return label
        }()
        
        private let facebookInBtn: UIButton = {
            let btn = UIButton(primaryAction: UIAction { _ in
                
            })
            btn.setTitle("Facebook", for: .normal)
            btn.backgroundColor = UIColor(red: 0x35/255, green: 0xA6/255, blue: 0xEF/255, alpha: 1.0)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            btn.setTitleColor(.white, for: .normal)
            btn.layer.cornerRadius = 16
            
            let iconView = UIView(frame: CGRect(x: 20, y: 0, width: 50, height: 40))
            let imageView = UIImageView()
            imageView.image = .group4
            imageView.frame = CGRect(x: 15, y: 12, width: 20, height: 20)
            btn.addSubview(imageView)
            
            return btn
        }()
        
        private let twitterInBtn: UIButton = {
            let btn = UIButton(primaryAction: UIAction { _ in
                
            })
            btn.setTitle("Twitter", for: .normal)
            btn.backgroundColor = UIColor(red: 0x50/255, green: 0x73/255, blue: 0xB5/255, alpha: 1.0)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            btn.setTitleColor(.white, for: .normal)
            btn.layer.cornerRadius = 16
            
            let iconView = UIView(frame: CGRect(x: 20, y: 0, width: 50, height: 40))
            let imageView = UIImageView()
            imageView.image = .pngegg1
            imageView.frame = CGRect(x: 15, y: 12, width: 20, height: 20)
            btn.addSubview(imageView)
            
            return btn
        }()
        
        lazy var singUpText: UIStackView = {
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.spacing = 2
            stack.alignment = .center
            
            var text: UILabel {
                let text = UILabel()
                text.text = "Don’t have account?"
                text.font = UIFont.systemFont(ofSize: 10)
                
                return text
            }
            
            var btn: UIButton {
                let btn = UIButton(primaryAction: UIAction { _ in
                    
                })
                btn.setTitle("Sign Up", for: .normal)
                btn.titleLabel?.font = UIFont.systemFont(ofSize: 10, weight: .bold)
                btn.setTitleColor(.purple, for: .normal)
                return btn
            }
            
            stack.addArrangedSubview(text)
            stack.addArrangedSubview(btn)

            return stack

        }()
        
        // MARK: - Lifecycle
        override func viewDidLoad() {
            super.viewDidLoad()
            setupViews()
            setupConstraints()
        }
        
        // MARK: - Setup Views
        
        private func setupViews() {
            view.backgroundColor = .white
            view.addSubview(vectorView)
            view.addSubview(imageView)
            view.addSubview(emailtextField)
            view.addSubview(label)
            view.addSubview(passwordtextField)
            view.addSubview(signInBtn)
            view.addSubview(forgotPassword)
            view.addSubview(textLable)
            view.addSubview(facebookInBtn)
            view.addSubview(twitterInBtn)
            view.addSubview(singUpText)
        }
        
        // MARK: - Setup Constraints
        
        private func setupConstraints() {
            
            label.snp.makeConstraints { make in
                make.top.equalToSuperview().offset(120)
                make.centerX.equalToSuperview()
            }
            
            emailtextField.snp.makeConstraints { make in
                make.top.equalTo(label.snp.bottom).offset(68)
                make.left.equalToSuperview().offset(60)
                make.right.equalToSuperview().offset(-60)
                make.height.equalTo(40)
            }
            
            passwordtextField.snp.makeConstraints { make in
                make.top.equalTo(emailtextField.snp.bottom).offset(20)
                make.left.right.equalTo(emailtextField)
                make.height.equalTo(40)
                
            }
            
            imageView.snp.makeConstraints { make in
                make.leading.equalToSuperview()
                make.trailing.equalToSuperview()
                make.top.equalToSuperview()
            }
            
            vectorView.snp.makeConstraints { make in
                make.bottom.equalToSuperview().offset(-330)
                make.leading.equalToSuperview()
                make.trailing.equalToSuperview()
            }
            
            signInBtn.snp.makeConstraints { make in
                make.top.equalTo(passwordtextField.snp.bottom).offset(40)
                make.left.right.equalTo(emailtextField)
                make.height.equalTo(40)
                
            }
            
            forgotPassword.snp.makeConstraints { make in
                make.top.equalTo(signInBtn.snp.bottom).offset(20)
                make.centerX.equalToSuperview()
            }
            
            textLable.snp.makeConstraints { make in
                make.bottom.equalTo(vectorView.snp.top).offset(182)
                make.centerX.equalToSuperview()
            }
            facebookInBtn.snp.makeConstraints { make in
                make.bottom.equalToSuperview().offset(-161)
                make.left.equalToSuperview().offset(30)
                make.right.equalToSuperview().offset(-205)
                make.height.equalTo(40)
            }
            
            twitterInBtn.snp.makeConstraints { make in
                make.bottom.equalToSuperview().offset(-161)
                make.left.equalToSuperview().offset(205)
                make.right.equalToSuperview().offset(-30)
                make.height.equalTo(40)
            }
            
            singUpText.snp.makeConstraints { make in
                make.top.equalTo(twitterInBtn.snp.bottom).offset(40)
                make.centerX.equalToSuperview()
                
            }
        }
}

