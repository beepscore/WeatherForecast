//
//  WindViewModel.swift
//  WeatherForecast
//
//  Created by Steve Baker on 5/6/19.
//  Copyright © 2019 Batin. All rights reserved.
//

import Foundation

struct WindViewModel {

    let currentWeather: CurrentWeather

    init(currentWeather: CurrentWeather) {
        self.currentWeather = currentWeather
    }
}
