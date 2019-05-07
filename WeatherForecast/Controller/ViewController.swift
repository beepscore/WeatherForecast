//
//  ViewController.swift
//  WeatherForecast
//
//  Created by Batin, Christopher on 13/04/2018.
//  Copyright © 2018 Batin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let apiManager = APIManager()

    private(set) var windViewModel: WindViewModel?

    // IBOutlets
    // other authors suggest encapsulate these view properties within a custom view
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var windDirectionLabel: UILabel!
    @IBOutlet weak var coordLabel: UILabel!

    /// if getWeather sets property searchResult to a non-nil value,
    /// set property windViewModel to a new WindViewModel using searchResult
    var searchResult: CurrentWeather? {
        didSet {
            guard let searchResult = searchResult else { return }

            windViewModel = WindViewModel.init(currentWeather: searchResult)
            DispatchQueue.main.async {
                // update UI on main queue
                self.updateLabels()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getDataButtonPressed(_ sender: Any) {
        getWeather()
    }


}

extension ViewController {

    private func getWeather() {
        apiManager.getWeather() { (weather, error) in
            if let error = error {
                print("Get weather error: \(error.localizedDescription)")
                return
            }
            guard let weather = weather  else { return }

            // set searchResult, which can use didSet to update the view model.
            self.searchResult = weather

            print("Current Weather Object:")
            print(weather)
        }
    }

    private func updateLabels() {
        guard let windViewModel = windViewModel else { return }
        locationLabel.text = windViewModel.locationString
        windSpeedLabel.text = windViewModel.windSpeedString
        windDirectionLabel.text = windViewModel.windDegString
        coordLabel.text = windViewModel.coordString
    }

}
