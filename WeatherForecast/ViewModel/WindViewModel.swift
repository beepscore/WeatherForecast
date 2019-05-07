//
//  WindViewModel.swift
//  WeatherForecast
//
//  Created by Steve Baker on 5/6/19.
//  Copyright © 2019 Batin. All rights reserved.
//

import Foundation

struct WindViewModel {

    // private set ==> only WindViewModel can set property. get is public.
    private(set) var coordString = ""
    private(set) var windSpeedString = ""
    private(set) var windDegString = ""
    private(set) var locationString = ""

    let currentWeather: CurrentWeather

    init(currentWeather: CurrentWeather) {
        self.currentWeather = currentWeather
        updateProperties()
    }

    // mutating function enables changing struct properties
    private mutating func updateProperties() {
        coordString = setCoordString(currentWeather: currentWeather)
        windSpeedString = setWindSpeedString(currentWeather: currentWeather)
        windDegString = setWindDirectionString(currentWeather: currentWeather)
        locationString = setLocationString(currentWeather: currentWeather)
    }

}

extension WindViewModel {

    // separate set functions for each property

    private func setCoordString(currentWeather: CurrentWeather) -> String {
        return "Lat: \(currentWeather.coord.lat), Lon: \(currentWeather.coord.lon)"
    }

    private func setWindSpeedString(currentWeather: CurrentWeather) -> String {
        return "Wind Speed: \(currentWeather.wind.speed) m/s"
    }

    private func setWindDirectionString(currentWeather: CurrentWeather) -> String {
        return "Wind Deg: \(currentWeather.wind.deg)"
    }

    private func setLocationString(currentWeather: CurrentWeather) -> String {
        return "Location: \(currentWeather.name)"
    }
}
