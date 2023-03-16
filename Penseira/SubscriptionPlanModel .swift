//
//  SubscriptionPlanModel .swift
//  Penseira
//
//  Created by Kevin Silva on 16/03/23.
//

import Foundation

class SubscriptionPlan {
    var name: String
    var price: Double
    var duration: Int
    var description: String
    var isRecommended: Bool

    init(name: String, price: Double, duration: Int, description: String, isRecommended: Bool) {
        self.name = name
        self.price = price
        self.duration = duration
        self.description = description
        self.isRecommended = isRecommended
    }
}
