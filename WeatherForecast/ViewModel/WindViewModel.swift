//
//  WindViewModel.swift
//  WeatherForecast
//
//  Created by Steve Baker on 5/6/19.
//  Copyright © 2019 Batin. All rights reserved.
//

import Foundation

/// WindViewModel is a MVVM ViewModel.
/// WindViewModel properties contain strings ready for use in WindView
struct WindViewModel {

    let coordString: String
    let windSpeedString: String
    let windDegString: String
    let locationString: String

    /// initializer without parameters may be used when currentWeather is unknown or nil
    init() {
        coordString = "Lat: -, Lon: -"
        windSpeedString = "Wind Speed: - m/s"
        windDegString = "Wind Deg: -"
        locationString = "Location: -"
    }

    /// - Parameter currentWeather: a MVVM Model object
    /// The ViewModel initializer parses the Model object into strings directly ready for use in View.
    /// In MVVM pattern this simplifies iOS ViewControllers
    init(currentWeather: CurrentWeather) {
        coordString = "Lat: \(currentWeather.coord.lat), Lon: \(currentWeather.coord.lon)"
        windSpeedString = "Wind Speed: \(currentWeather.wind.speed) m/s"
        windDegString = "Wind Deg: \(currentWeather.wind.deg)"
        locationString = "Location: \(currentWeather.name)"
    }

}

