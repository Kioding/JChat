//
//  ViewController.swift
//  JChat
//
//  Created by kio on 2023/02/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var signInFacebookButton: UIButton!
    @IBOutlet weak var signInGoogleButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var termsOfServiceLabel: UILabel!
    @IBOutlet weak var orLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        
        let title = "Create a new account"
        let subTitle = "\n\nLorem ipsum dolor sit amet conse ctetur adipisicing elit sed do."
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!,
                NSAttributedString.Key.foregroundColor : UIColor.black,
                ])
        let attributedSubTitle = NSMutableAttributedString(string: subTitle, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),
                NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)
                ])
        attributedText.append(attributedSubTitle)
        
        let paragrapStyle = NSMutableParagraphStyle()
        paragrapStyle.lineSpacing = 10

        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragrapStyle, range: NSMakeRange(0, attributedText.length))
        titleLabel.numberOfLines = 0
        
        titleLabel.attributedText = attributedText
        
        orLabel.text = "Or"
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        orLabel.textColor = UIColor(white: 0, alpha: 0.45)
        orLabel.textAlignment = .center
        
        let attributedTermsText = NSMutableAttributedString(string:
                """
                By clicking "Create a new account" you agree to our
                """,
                attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14),
                NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65),
                ])
        let attributedSubTermsText = NSMutableAttributedString(string: "Terms of Service.",      attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 14),
                NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65),
                ])
        attributedTermsText.append(attributedSubTermsText)
        
        termsOfServiceLabel.attributedText = attributedTermsText
        termsOfServiceLabel.numberOfLines = 0
        
    }
}

