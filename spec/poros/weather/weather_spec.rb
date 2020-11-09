require 'rails_helper'

describe Weather do
  before :each do
    @data = {
      "lat": 39.74,
      "lon": -104.98,
      "timezone": "America/Denver",
      "timezone_offset": -25200,
      "current": {
          "dt": 1604356053,
          "sunrise": 1604323817,
          "sunset": 1604361396,
          "temp": 75.31,
          "feels_like": 66.88,
          "pressure": 1026,
          "humidity": 8,
          "dew_point": 12.36,
          "uvi": 3.43,
          "clouds": 20,
          "visibility": 10000,
          "wind_speed": 4.7,
          "wind_deg": 110,
          "weather": [
              {
                  "id": 801,
                  "main": "Clouds",
                  "description": "few clouds",
                  "icon": "02d"
              }
          ]
      },
      "daily": [
          {
              "dt": 1604340000,
              "sunrise": 1604323817,
              "sunset": 1604361396,
              "temp": {
                  "day": 64.58,
                  "min": 49.3,
                  "max": 75.31,
                  "night": 56.82,
                  "eve": 69.53,
                  "morn": 49.3
              },
              "feels_like": {
                  "day": 58.87,
                  "night": 50.76,
                  "eve": 63.18,
                  "morn": 42.85
              },
              "pressure": 1026,
              "humidity": 23,
              "dew_point": 10.81,
              "wind_speed": 2.37,
              "wind_deg": 159,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 3.43
          },
          {
              "dt": 1604426400,
              "sunrise": 1604410285,
              "sunset": 1604447729,
              "temp": {
                  "day": 67.01,
                  "min": 52.32,
                  "max": 71.4,
                  "night": 58.14,
                  "eve": 65.05,
                  "morn": 52.32
              },
              "feels_like": {
                  "day": 62.53,
                  "night": 51.87,
                  "eve": 59.31,
                  "morn": 45.91
              },
              "pressure": 1018,
              "humidity": 23,
              "dew_point": 17.49,
              "wind_speed": 0.65,
              "wind_deg": 127,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 8,
              "pop": 0,
              "uvi": 3.22
          },
          {
              "dt": 1604512800,
              "sunrise": 1604496754,
              "sunset": 1604534064,
              "temp": {
                  "day": 68.77,
                  "min": 55.06,
                  "max": 73,
                  "night": 58.71,
                  "eve": 66.83,
                  "morn": 55.06
              },
              "feels_like": {
                  "day": 63.97,
                  "night": 51.35,
                  "eve": 56.66,
                  "morn": 48.45
              },
              "pressure": 1020,
              "humidity": 24,
              "dew_point": 29.21,
              "wind_speed": 1.81,
              "wind_deg": 209,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 3.24
          },
          {
              "dt": 1604599200,
              "sunrise": 1604583223,
              "sunset": 1604620400,
              "temp": {
                  "day": 67.06,
                  "min": 54.12,
                  "max": 72.45,
                  "night": 57.97,
                  "eve": 66.85,
                  "morn": 54.12
              },
              "feels_like": {
                  "day": 61.11,
                  "night": 52,
                  "eve": 61.2,
                  "morn": 48.33
              },
              "pressure": 1022,
              "humidity": 25,
              "dew_point": 26.1,
              "wind_speed": 3.74,
              "wind_deg": 182,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0,
              "uvi": 3.33
          },
          {
              "dt": 1604685600,
              "sunrise": 1604669693,
              "sunset": 1604706738,
              "temp": {
                  "day": 68.77,
                  "min": 53.46,
                  "max": 73.15,
                  "night": 61.11,
                  "eve": 67.82,
                  "morn": 53.46
              },
              "feels_like": {
                  "day": 57.7,
                  "night": 47.73,
                  "eve": 58.05,
                  "morn": 47.26
              },
              "pressure": 1002,
              "humidity": 23,
              "dew_point": 22.89,
              "wind_speed": 12.68,
              "wind_deg": 182,
              "weather": [
                  {
                      "id": 801,
                      "main": "Clouds",
                      "description": "few clouds",
                      "icon": "02d"
                  }
              ],
              "clouds": 14,
              "pop": 0,
              "uvi": 3.1
          },
          {
              "dt": 1604772000,
              "sunrise": 1604756162,
              "sunset": 1604793077,
              "temp": {
                  "day": 66.06,
                  "min": 40.91,
                  "max": 67.46,
                  "night": 40.91,
                  "eve": 59.05,
                  "morn": 55.96
              },
              "feels_like": {
                  "day": 48.11,
                  "night": 29.71,
                  "eve": 43.3,
                  "morn": 45.45
              },
              "pressure": 988,
              "humidity": 24,
              "dew_point": 20.23,
              "wind_speed": 24.58,
              "wind_deg": 193,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 0,
              "pop": 0.15,
              "uvi": 3.11
          },
          {
              "dt": 1604858400,
              "sunrise": 1604842631,
              "sunset": 1604879418,
              "temp": {
                  "day": 43.99,
                  "min": 22.98,
                  "max": 49.41,
                  "night": 22.98,
                  "eve": 46.67,
                  "morn": 37.44
              },
              "feels_like": {
                  "day": 36,
                  "night": 11.61,
                  "eve": 37,
                  "morn": 27.86
              },
              "pressure": 1012,
              "humidity": 36,
              "dew_point": -7.98,
              "wind_speed": 5.12,
              "wind_deg": 116,
              "weather": [
                  {
                      "id": 800,
                      "main": "Clear",
                      "description": "clear sky",
                      "icon": "01d"
                  }
              ],
              "clouds": 1,
              "pop": 0,
              "uvi": 3.01
          },
          {
              "dt": 1604944800,
              "sunrise": 1604929101,
              "sunset": 1604965761,
              "temp": {
                  "day": 20.62,
                  "min": 16.63,
                  "max": 22.68,
                  "night": 19.45,
                  "eve": 21.22,
                  "morn": 17.04
              },
              "feels_like": {
                  "day": 12.13,
                  "night": 11.16,
                  "eve": 12.88,
                  "morn": 7.18
              },
              "pressure": 1027,
              "humidity": 85,
              "dew_point": 8.8,
              "wind_speed": 5.7,
              "wind_deg": 70,
              "weather": [
                  {
                      "id": 601,
                      "main": "Snow",
                      "description": "snow",
                      "icon": "13d"
                  }
              ],
              "clouds": 100,
              "pop": 0.96,
              "snow": 3,
              "uvi": 2.34
          }
      ],
      "hourly": [{:dt=>1604876400,
                    :temp=>55.58,
                    :feels_like=>40.01,
                    :pressure=>1003,
                    :humidity=>11,
                    :dew_point=>5.07,
                    :clouds=>20,
                    :visibility=>10000,
                    :wind_speed=>16.6,
                    :wind_deg=>209,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02d"}],
                    :pop=>0},
                   {:dt=>1604880000,
                    :temp=>54.91,
                    :feels_like=>39.78,
                    :pressure=>1003,
                    :humidity=>22,
                    :dew_point=>18.5,
                    :clouds=>10,
                    :visibility=>10000,
                    :wind_speed=>17.52,
                    :wind_deg=>216,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0},
                   {:dt=>1604883600,
                    :temp=>53.49,
                    :feels_like=>40.1,
                    :pressure=>1004,
                    :humidity=>30,
                    :dew_point=>23.9,
                    :clouds=>4,
                    :visibility=>10000,
                    :wind_speed=>15.41,
                    :wind_deg=>215,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0},
                   {:dt=>1604887200,
                    :temp=>51.76,
                    :feels_like=>41.29,
                    :pressure=>1004,
                    :humidity=>36,
                    :dew_point=>26.42,
                    :clouds=>1,
                    :visibility=>10000,
                    :wind_speed=>10.78,
                    :wind_deg=>208,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0},
                   {:dt=>1604890800,
                    :temp=>50.83,
                    :feels_like=>41.34,
                    :pressure=>1004,
                    :humidity=>38,
                    :dew_point=>26.83,
                    :clouds=>0,
                    :visibility=>10000,
                    :wind_speed=>9.13,
                    :wind_deg=>211,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0},
                   {:dt=>1604894400,
                    :temp=>50.16,
                    :feels_like=>40.32,
                    :pressure=>1004,
                    :humidity=>41,
                    :dew_point=>15.31,
                    :clouds=>0,
                    :visibility=>10000,
                    :wind_speed=>10.04,
                    :wind_deg=>211,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0},
                   {:dt=>1604898000,
                    :temp=>49.01,
                    :feels_like=>39.67,
                    :pressure=>1004,
                    :humidity=>44,
                    :dew_point=>17.89,
                    :clouds=>6,
                    :visibility=>10000,
                    :wind_speed=>9.28,
                    :wind_deg=>213,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0},
                   {:dt=>1604901600,
                    :temp=>48.54,
                    :feels_like=>40.42,
                    :pressure=>1004,
                    :humidity=>45,
                    :dew_point=>18.95,
                    :clouds=>18,
                    :visibility=>10000,
                    :wind_speed=>7.14,
                    :wind_deg=>207,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02n"}],
                    :pop=>0},
                   {:dt=>1604905200,
                    :temp=>47.7,
                    :feels_like=>39.29,
                    :pressure=>1004,
                    :humidity=>47,
                    :dew_point=>19.53,
                    :clouds=>0,
                    :visibility=>10000,
                    :wind_speed=>7.72,
                    :wind_deg=>193,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
                    :pop=>0.07},
                   {:dt=>1604908800,
                    :temp=>46.94,
                    :feels_like=>41.27,
                    :pressure=>1004,
                    :humidity=>49,
                    :dew_point=>20.34,
                    :clouds=>40,
                    :visibility=>10000,
                    :wind_speed=>2.93,
                    :wind_deg=>192,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03n"}],
                    :pop=>0},
                   {:dt=>1604912400,
                    :temp=>43.63,
                    :feels_like=>34.65,
                    :pressure=>1004,
                    :humidity=>53,
                    :dew_point=>15.91,
                    :clouds=>27,
                    :visibility=>10000,
                    :wind_speed=>8.55,
                    :wind_deg=>7,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03n"}],
                    :pop=>0.04},
                   {:dt=>1604916000,
                    :temp=>42.82,
                    :feels_like=>30.63,
                    :pressure=>1005,
                    :humidity=>52,
                    :dew_point=>13.19,
                    :clouds=>20,
                    :visibility=>10000,
                    :wind_speed=>13.98,
                    :wind_deg=>7,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02n"}],
                    :pop=>0},
                   {:dt=>1604919600,
                    :temp=>41.38,
                    :feels_like=>28.44,
                    :pressure=>1006,
                    :humidity=>57,
                    :dew_point=>15.57,
                    :clouds=>17,
                    :visibility=>10000,
                    :wind_speed=>15.52,
                    :wind_deg=>355,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02n"}],
                    :pop=>0},
                   {:dt=>1604923200,
                    :temp=>40.06,
                    :feels_like=>28.42,
                    :pressure=>1007,
                    :humidity=>60,
                    :dew_point=>15.35,
                    :clouds=>27,
                    :visibility=>10000,
                    :wind_speed=>13.2,
                    :wind_deg=>19,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03n"}],
                    :pop=>0},
                   {:dt=>1604926800,
                    :temp=>36.99,
                    :feels_like=>27.93,
                    :pressure=>1009,
                    :humidity=>72,
                    :dew_point=>20.79,
                    :clouds=>74,
                    :visibility=>10000,
                    :wind_speed=>8.95,
                    :wind_deg=>24,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04n"}],
                    :pop=>0.04},
                   {:dt=>1604930400,
                    :temp=>35.65,
                    :feels_like=>27.91,
                    :pressure=>1010,
                    :humidity=>79,
                    :dew_point=>23.9,
                    :clouds=>83,
                    :visibility=>10000,
                    :wind_speed=>6.85,
                    :wind_deg=>26,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
                    :pop=>0.04},
                   {:dt=>1604934000,
                    :temp=>36.09,
                    :feels_like=>28.29,
                    :pressure=>1009,
                    :humidity=>78,
                    :dew_point=>24.51,
                    :clouds=>89,
                    :visibility=>10000,
                    :wind_speed=>6.96,
                    :wind_deg=>28,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
                    :pop=>0.11},
                   {:dt=>1604937600,
                    :temp=>37.09,
                    :feels_like=>29.35,
                    :pressure=>1009,
                    :humidity=>75,
                    :dew_point=>24.33,
                    :clouds=>67,
                    :visibility=>10000,
                    :wind_speed=>6.87,
                    :wind_deg=>23,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
                    :pop=>0.04},
                   {:dt=>1604941200,
                    :temp=>37.85,
                    :feels_like=>30.31,
                    :pressure=>1008,
                    :humidity=>73,
                    :dew_point=>23.97,
                    :clouds=>74,
                    :visibility=>10000,
                    :wind_speed=>6.55,
                    :wind_deg=>43,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
                    :pop=>0.04},
                   {:dt=>1604944800,
                    :temp=>38.82,
                    :feels_like=>31.66,
                    :pressure=>1008,
                    :humidity=>70,
                    :dew_point=>23.61,
                    :clouds=>76,
                    :visibility=>10000,
                    :wind_speed=>5.86,
                    :wind_deg=>48,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
                    :pop=>0.04},
                   {:dt=>1604948400,
                    :temp=>39.94,
                    :feels_like=>32.9,
                    :pressure=>1007,
                    :humidity=>66,
                    :dew_point=>23.27,
                    :clouds=>94,
                    :visibility=>10000,
                    :wind_speed=>5.55,
                    :wind_deg=>58,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
                    :pop=>0.27},
                   {:dt=>1604952000,
                    :temp=>40.95,
                    :feels_like=>33.35,
                    :pressure=>1007,
                    :humidity=>64,
                    :dew_point=>23.04,
                    :clouds=>97,
                    :visibility=>10000,
                    :wind_speed=>6.58,
                    :wind_deg=>74,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
                    :pop=>0.39},
                   {:dt=>1604955600,
                    :temp=>40.93,
                    :feels_like=>33.08,
                    :pressure=>1007,
                    :humidity=>65,
                    :dew_point=>24.35,
                    :clouds=>98,
                    :visibility=>10000,
                    :wind_speed=>7.09,
                    :wind_deg=>69,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
                    :pop=>0.43},
                   {:dt=>1604959200,
                    :temp=>37.65,
                    :feels_like=>29.5,
                    :pressure=>1007,
                    :humidity=>77,
                    :dew_point=>28.31,
                    :clouds=>98,
                    :visibility=>10000,
                    :wind_speed=>7.9,
                    :wind_deg=>52,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
                    :pop=>0.59},
                   {:dt=>1604962800,
                    :temp=>34.39,
                    :feels_like=>27.77,
                    :pressure=>1008,
                    :humidity=>90,
                    :dew_point=>31.41,
                    :clouds=>98,
                    :visibility=>64,
                    :wind_speed=>5.35,
                    :wind_deg=>52,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
                    :pop=>0.67},
                   {:dt=>1604966400,
                    :temp=>33.4,
                    :feels_like=>25.65,
                    :pressure=>1010,
                    :humidity=>94,
                    :dew_point=>32.05,
                    :clouds=>99,
                    :visibility=>145,
                    :wind_speed=>7.38,
                    :wind_deg=>63,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.87},
                   {:dt=>1604970000,
                    :temp=>33.03,
                    :feels_like=>26.08,
                    :pressure=>1011,
                    :humidity=>95,
                    :dew_point=>31.26,
                    :clouds=>100,
                    :visibility=>2040,
                    :wind_speed=>5.93,
                    :wind_deg=>84,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.76},
                   {:dt=>1604973600,
                    :temp=>32.41,
                    :feels_like=>25.36,
                    :pressure=>1013,
                    :humidity=>96,
                    :dew_point=>30.52,
                    :clouds=>100,
                    :visibility=>472,
                    :wind_speed=>6.02,
                    :wind_deg=>50,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.76},
                   {:dt=>1604977200,
                    :temp=>32.52,
                    :feels_like=>26.44,
                    :pressure=>1014,
                    :humidity=>96,
                    :dew_point=>29.98,
                    :clouds=>100,
                    :visibility=>7172,
                    :wind_speed=>4.34,
                    :wind_deg=>106,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.72},
                   {:dt=>1604980800,
                    :temp=>32.74,
                    :feels_like=>26.42,
                    :pressure=>1015,
                    :humidity=>94,
                    :dew_point=>29.3,
                    :clouds=>100,
                    :visibility=>4239,
                    :wind_speed=>4.68,
                    :wind_deg=>75,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.72},
                   {:dt=>1604984400,
                    :temp=>32.77,
                    :feels_like=>26.78,
                    :pressure=>1016,
                    :humidity=>94,
                    :dew_point=>29.17,
                    :clouds=>100,
                    :visibility=>3144,
                    :wind_speed=>4.12,
                    :wind_deg=>52,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.88},
                   {:dt=>1604988000,
                    :temp=>33.04,
                    :feels_like=>27.59,
                    :pressure=>1016,
                    :humidity=>93,
                    :dew_point=>28.87,
                    :clouds=>100,
                    :visibility=>10000,
                    :wind_speed=>3.15,
                    :wind_deg=>64,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0.88},
                   {:dt=>1604991600,
                    :temp=>32.92,
                    :feels_like=>27.54,
                    :pressure=>1017,
                    :humidity=>93,
                    :dew_point=>28.44,
                    :clouds=>97,
                    :visibility=>10000,
                    :wind_speed=>2.98,
                    :wind_deg=>153,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0},
                   {:dt=>1604995200,
                    :temp=>32.81,
                    :feels_like=>27.05,
                    :pressure=>1017,
                    :humidity=>93,
                    :dew_point=>28.06,
                    :clouds=>59,
                    :visibility=>10000,
                    :wind_speed=>3.62,
                    :wind_deg=>174,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04n"}],
                    :pop=>0},
                   {:dt=>1604998800,
                    :temp=>32.61,
                    :feels_like=>26.29,
                    :pressure=>1017,
                    :humidity=>92,
                    :dew_point=>26.33,
                    :clouds=>39,
                    :visibility=>10000,
                    :wind_speed=>4.52,
                    :wind_deg=>184,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03n"}],
                    :pop=>0},
                   {:dt=>1605002400,
                    :temp=>31.96,
                    :feels_like=>25.12,
                    :pressure=>1017,
                    :humidity=>90,
                    :dew_point=>22.37,
                    :clouds=>29,
                    :visibility=>10000,
                    :wind_speed=>5.14,
                    :wind_deg=>203,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03n"}],
                    :pop=>0},
                   {:dt=>1605006000,
                    :temp=>31.5,
                    :feels_like=>24.87,
                    :pressure=>1017,
                    :humidity=>88,
                    :dew_point=>19.65,
                    :clouds=>23,
                    :visibility=>10000,
                    :wind_speed=>4.54,
                    :wind_deg=>200,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02n"}],
                    :pop=>0},
                   {:dt=>1605009600,
                    :temp=>30.97,
                    :feels_like=>24.03,
                    :pressure=>1018,
                    :humidity=>87,
                    :dew_point=>18.21,
                    :clouds=>20,
                    :visibility=>10000,
                    :wind_speed=>4.92,
                    :wind_deg=>192,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02n"}],
                    :pop=>0},
                   {:dt=>1605013200,
                    :temp=>31.32,
                    :feels_like=>23.56,
                    :pressure=>1018,
                    :humidity=>85,
                    :dew_point=>17.06,
                    :clouds=>91,
                    :visibility=>10000,
                    :wind_speed=>6.31,
                    :wind_deg=>193,
                    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
                    :pop=>0},
                   {:dt=>1605016800,
                    :temp=>31.44,
                    :feels_like=>23.63,
                    :pressure=>1019,
                    :humidity=>84,
                    :dew_point=>16.27,
                    :clouds=>46,
                    :visibility=>10000,
                    :wind_speed=>6.38,
                    :wind_deg=>203,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
                    :pop=>0},
                   {:dt=>1605020400,
                    :temp=>32.92,
                    :feels_like=>25.9,
                    :pressure=>1018,
                    :humidity=>81,
                    :dew_point=>16.05,
                    :clouds=>30,
                    :visibility=>10000,
                    :wind_speed=>5.08,
                    :wind_deg=>200,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
                    :pop=>0},
                   {:dt=>1605024000,
                    :temp=>35.26,
                    :feels_like=>27.63,
                    :pressure=>1016,
                    :humidity=>73,
                    :dew_point=>16.21,
                    :clouds=>23,
                    :visibility=>10000,
                    :wind_speed=>6.11,
                    :wind_deg=>198,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02d"}],
                    :pop=>0},
                   {:dt=>1605027600,
                    :temp=>38.17,
                    :feels_like=>30.47,
                    :pressure=>1015,
                    :humidity=>64,
                    :dew_point=>14.94,
                    :clouds=>18,
                    :visibility=>10000,
                    :wind_speed=>6.15,
                    :wind_deg=>195,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02d"}],
                    :pop=>0},
                   {:dt=>1605031200,
                    :temp=>40.71,
                    :feels_like=>33.12,
                    :pressure=>1014,
                    :humidity=>57,
                    :dew_point=>13.1,
                    :clouds=>16,
                    :visibility=>10000,
                    :wind_speed=>5.88,
                    :wind_deg=>197,
                    :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02d"}],
                    :pop=>0},
                   {:dt=>1605034800,
                    :temp=>42.89,
                    :feels_like=>36.59,
                    :pressure=>1012,
                    :humidity=>52,
                    :dew_point=>12.24,
                    :clouds=>1,
                    :visibility=>10000,
                    :wind_speed=>3.56,
                    :wind_deg=>196,
                    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
                    :pop=>0},
                   {:dt=>1605038400,
                    :temp=>44.44,
                    :feels_like=>39.42,
                    :pressure=>1011,
                    :humidity=>48,
                    :dew_point=>11.52,
                    :clouds=>50,
                    :visibility=>10000,
                    :wind_speed=>1.16,
                    :wind_deg=>127,
                    :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
                    :pop=>0},
                   {:dt=>1605042000,
                    :temp=>45.19,
                    :feels_like=>38.7,
                    :pressure=>1011,
                    :humidity=>46,
                    :dew_point=>9.72,
                    :clouds=>67,
                    :visibility=>10000,
                    :wind_speed=>3.71,
                    :wind_deg=>23,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
                    :pop=>0},
                   {:dt=>1605045600,
                    :temp=>45.36,
                    :feels_like=>38.68,
                    :pressure=>1012,
                    :humidity=>45,
                    :dew_point=>9.77,
                    :clouds=>75,
                    :visibility=>10000,
                    :wind_speed=>3.96,
                    :wind_deg=>6,
                    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
                    :pop=>0}]

  }

  end
  it "exists" do
    weather = Weather.new(@data)

    expect(weather).to be_a(Weather)
    expect(weather.temperature).to be_a(Numeric)
    expect(weather.humidity).to be_a(Numeric)
    expect(weather.description).to be_a(String)
    expect(weather.daily).to be_an(Array)
    expect(weather.daily.first).to be_an(DailyForecast)
    expect(weather.daily.first.description).to be_a(String)
    expect(weather.daily.first.humidity).to be_a(Numeric)
    expect(weather.daily.first.temperature).to be_a(Numeric)
  end

  xit "calculates seven_day_forecast" do
    require "pry"; binding.pry
    seven_day = seven_day_forecast(@data[:daily])

  end

  xit "calculates hourly_forecast" do
    hourly = hourly_forecast(@data[:hourly])

    require "pry"; binding.pry

  end

  xit "calculates visibility" do
    vis = visibility_forecast(@data[:current][:visibility])
    require "pry"; binding.pry
  end

end
