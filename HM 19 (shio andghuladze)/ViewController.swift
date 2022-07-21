//
//  ViewController.swift
//  HM 19 (shio andghuladze)
//
//  Created by shio andghuladze on 21.07.22.
//

import UIKit

class ViewController: UIViewController {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        view.addSubview(label)
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        view.addSubview(imageView)
        return imageView
    }()
    
    private lazy var circleView: UIView = {
        let circleView = UIView()
        view.addSubview(circleView)
        return circleView
    }()
    
    private lazy var emailTextField: CustomTextField = {
        let emailTextField = CustomTextField()
        view.addSubview(emailTextField)
        return emailTextField
    }()
    
    private lazy var passwordTextField: CustomTextField = {
        let passwordTextField = CustomTextField()
        view.addSubview(passwordTextField)
        return passwordTextField
    }()
    
    private lazy var signInButton: UIButton = {
        let signInButton = UIButton()
        view.addSubview(signInButton)
        return signInButton
    }()
    
    private lazy var signUpLabel: UILabel = {
        let signUpLabel = UILabel()
        view.addSubview(signUpLabel)
        return signUpLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundGradient()
        configureTitleLabel()
        configureCircleView()
        configureImageView()
        configureTextField(textField: emailTextField, topView: circleView, marginFromTop: 30, placeHolder: "Email")
        configureTextField(textField: passwordTextField, topView: emailTextField, marginFromTop: 10, placeHolder: "Password")
        configureSignInButton()
        configureSignUpLabel()
    }
    
    private func configureSignUpLabel(){
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.text = "Don't have an account? Sign Up"
        signUpLabel.font = UIFont(name: "HelveticaNeue", size: 13.0)!
        
        // bottom
        NSLayoutConstraint(item: signUpLabel, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: -10).isActive = true
        // center x
        signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func configureSignInButton(){
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = .systemGreen
        signInButton.layer.cornerRadius = 10
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 12.0)!
        signInButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        signInButton.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        signInButton.layer.shadowRadius = 15
        signInButton.layer.shadowOpacity = 0.7
                
        // top
        NSLayoutConstraint(item: signInButton, attribute: .top, relatedBy: .equal, toItem: passwordTextField, attribute: .bottom, multiplier: 1, constant: 40).isActive = true
        // width
        NSLayoutConstraint(item: signInButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 0).isActive = true
        // height
        NSLayoutConstraint(item: signInButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30).isActive = true
        // centerX
        signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func configureTextField(textField: UITextField, topView: UIView, marginFromTop: CGFloat, placeHolder: String){
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        textField.layer.shadowOffset = CGSize(width: 5, height: 5)
        textField.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        textField.layer.shadowRadius = 15
        textField.layer.shadowOpacity = 0.4
        textField.placeholder = placeHolder
        
        // top
        NSLayoutConstraint(item: textField, attribute: .top, relatedBy: .equal, toItem: topView, attribute: .bottom, multiplier: 1, constant: marginFromTop).isActive = true
        // width
        NSLayoutConstraint(item: textField, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.8, constant: 0).isActive = true
        // height
        NSLayoutConstraint(item: textField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40).isActive = true
        // center x
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func configureCircleView(){
        circleView.translatesAutoresizingMaskIntoConstraints = false
        circleView.layer.cornerRadius = view.frame.width * 0.6 / 2
        circleView.layer.borderWidth = 5
        circleView.layer.borderColor = CGColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1)
        circleView.layer.shadowOffset = CGSize(width: 10, height: 0)
        circleView.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        circleView.layer.shadowRadius = 15
        circleView.layer.shadowOpacity = 1
        
        //top
        NSLayoutConstraint(item: circleView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 30).isActive = true
        // width
        NSLayoutConstraint(item: circleView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.6, constant: 0).isActive = true
        // height
        NSLayoutConstraint(item: circleView, attribute: .height, relatedBy: .equal, toItem: circleView, attribute: .width, multiplier: 1, constant: 0).isActive = true
        // center x
        NSLayoutConstraint(item: circleView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
    }
    
    private func configureImageView(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "rocket")
        imageView.contentMode = .scaleAspectFit
        imageView.centerXAnchor.constraint(equalTo: circleView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: circleView.centerYAnchor).isActive = true
        
        // width
        NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: circleView, attribute: .width, multiplier: 0.6, constant: 0).isActive = true
        // height
        NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: imageView, attribute: .width, multiplier: 1, constant: 0).isActive = true
    }
    
    private func configureTitleLabel(){
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "IOS App Templates"
        let font = UIFont(name: "HelveticaNeue", size: 26.0)
        titleLabel.textAlignment = .center
        titleLabel.font = font
        titleLabel.textColor = .white
        
        // top
        NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 20).isActive = true
        // left
        NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0).isActive = true
        // width
        NSLayoutConstraint(item: titleLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0).isActive = true
    }
        
    private func setBackgroundGradient(){
        let colorTop =  UIColor(red: 148.0/255.0, green: 0.0/255.0, blue: 211.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 255.0/255.0, alpha: 1.0).cgColor
        let gradient = getGradientColor(topColor: colorTop, bottomColor: colorBottom)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }

    private func getGradientColor(topColor: CGColor, bottomColor: CGColor)-> CAGradientLayer{
        var gl:CAGradientLayer!
        gl = CAGradientLayer()
        gl.colors = [topColor, bottomColor]
        gl.locations = [0.0, 1.0]
        return gl
    }

}
