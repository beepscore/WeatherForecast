//
//  WindView.swift
//  WeatherForecast
//
//  Created by Steve Baker on 5/6/19.
//  Copyright © 2019 Batin. All rights reserved.
//

import UIKit

@IBDesignable class WindView: UIView, NibLoadable {

    // WindView encapsulates its subviews
    // https://matteomanferdini.com/mvvm-pattern-ios-swift/
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDirectionLabel: UILabel!
    @IBOutlet weak var coordLabel: UILabel!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupFromNib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFromNib()
    }

    /// windViewModel is a MVVM ViewModel
    /// whenever property windView.windViewModel is set, windView updates its views
    var windViewModel: WindViewModel = WindViewModel() {
        didSet {
            locationLabel.text = windViewModel.locationString
            windSpeedLabel.text = windViewModel.windSpeedString
            windDirectionLabel.text = windViewModel.windDegString
            coordLabel.text = windViewModel.coordString
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
