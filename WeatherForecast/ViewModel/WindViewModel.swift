//
//  WindViewModel.swift
//  WeatherForecast
//
//  Created by Steve Baker on 5/6/19.
//  Copyright © 2019 Batin. All rights reserved.
//

import Foundation

struct WindViewModel {

    let coordString: String
    let windSpeedString: String
    let windDegString: String
    let locationString: String

    init() {
        coordString = "Lat: -, Lon: -"
        windSpeedString = "Wind Speed: - m/s"
        windDegString = "Wind Deg: -"
        locationString = "Location: -"
    }

    init(currentWeather: CurrentWeather) {
        coordString = "Lat: \(currentWeather.coord.lat), Lon: \(currentWeather.coord.lon)"
        windSpeedString = "Wind Speed: \(currentWeather.wind.speed) m/s"
        windDegString = "Wind Deg: \(currentWeather.wind.deg)"
        locationString = "Location: \(currentWeather.name)"
    }

}

