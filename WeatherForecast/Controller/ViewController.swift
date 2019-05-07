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

    @IBOutlet weak var windView: WindView!

    /// if getWeather sets property searchResult to a non-nil value,
    /// set property windViewModel to a new WindViewModel using searchResult
    var searchResult: CurrentWeather? {
        didSet {
            guard let searchResult = searchResult else { return }

            let windViewModel = WindViewModel(currentWeather: searchResult)
            DispatchQueue.main.async {
                // update UI on main queue
                self.windView.windViewModel = windViewModel
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        windView.windViewModel = WindViewModel()
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



}
