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
    }
}
