//
//  ViewController.swift
//  Penseira
//
//  Created by Kevin Silva on 15/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let subscriptionPlans = [
        SubscriptionPlan(name: "Plano Anual", price: 60.000, duration: 30, description: "Acesso Anual a todos os recursos", isRecommended: true),
        SubscriptionPlan(name: "Plano Mensal", price: 9.99, duration: 30, description: "Acesso mensal a todos os recursos", isRecommended: false),
        SubscriptionPlan(name: "Plano Trimestral", price: 19.99, duration: 30, description: "Acesso Trimestral a todos os recursos", isRecommended: false),
        SubscriptionPlan(name: "Plano Semestral", price: 99.99, duration: 365, description: "Acesso Semestral", isRecommended: false)
    ]
    
    func jsonExibidas(_ index: Int) -> String {
        let selectedPlan = subscriptionPlans[index]
        let json = """
                    {
                        "name": "\(selectedPlan.name)",
                        "price": "\(selectedPlan.price)"
                        "duration": "\(selectedPlan.duration)"
                        "description": "\(selectedPlan.description)"
                        "isRecommended": "\(selectedPlan.isRecommended)"
                        
                    }
                    """
        return json
    }

    
    
    
    @IBAction func ExperimenteAgoraButton(_ sender: UIButton) {
        print("teste")
        let index = 1
        let json = jsonExibidas(index)
        let alert = UIAlertController(title: "Plano selecionado", message: json, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    
}

@IBDesignable extension UIView {

@IBInspectable var borderColor:UIColor? {
    set {
        layer.borderColor = newValue!.cgColor
    }
    get {
        if let color = layer.borderColor {
            return UIColor(cgColor:color)
        }
        else {
            return nil
        }
    }
}
@IBInspectable var borderWidth:CGFloat {
    set {
        layer.borderWidth = newValue
    }
    get {
        return layer.borderWidth
    }
}
@IBInspectable var cornerRadius:CGFloat {
    set {
        layer.cornerRadius = newValue
        clipsToBounds = newValue > 0
    }
    get {
        return layer.cornerRadius
    }
}
}

