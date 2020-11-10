require 'rails_helper'

describe RoadTrip do
  before :each do
    @trip_params = {
      :origin=>"Denver,CO",
      :destination=>"Pueblo,CO",
      :api_key=>"9EjiyN2w8u1fETO20rWVDA=="
    }
    data = {
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
              :pop=>0}] }
    @forecast = data[:hourly].map do |day|
      HourlyForecast.new(day)
    end
    @route = {:hasTollRoad=>false,
               :hasBridge=>true,
               :boundingBox=>{:lr=>{:lng=>-104.605087, :lat=>38.265427}, :ul=>{:lng=>-104.98761, :lat=>39.738453}},
               :distance=>111.38,
               :hasTimedRestriction=>false,
               :hasTunnel=>false,
               :hasHighway=>true,
               :computedWaypoints=>[],
               :routeError=>{:errorCode=>-400, :message=>""},
               :formattedTime=>"01:43:57",
               :sessionId=>"5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
               :hasAccessRestriction=>false,
               :realTime=>6431,
               :hasSeasonalClosure=>false,
               :hasCountryCross=>false,
               :fuelUsed=>5.52,
               :legs=>
                [{:hasTollRoad=>false,
                  :hasBridge=>true,
                  :destNarrative=>"Proceed to PUEBLO, CO.",
                  :distance=>111.38,
                  :hasTimedRestriction=>false,
                  :hasTunnel=>false,
                  :hasHighway=>true,
                  :index=>0,
                  :formattedTime=>"01:43:57",
                  :origIndex=>2,
                  :hasAccessRestriction=>false,
                  :hasSeasonalClosure=>false,
                  :hasCountryCross=>false,
                  :roadGradeStrategy=>[[]],
                  :destIndex=>5,
                  :time=>6237,
                  :hasUnpaved=>false,
                  :origNarrative=>"Go south on N Broadway.",
                  :maneuvers=>
                   [{:distance=>0.109,
                     :streets=>["N Sherman St"],
                     :narrative=>"Start out going south on N Sherman St toward E 13th Ave.",
                     :turnType=>0,
                     :startPoint=>{:lng=>-104.984856, :lat=>39.738453},
                     :index=>0,
                     :formattedTime=>"00:00:33",
                     :directionName=>"South",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=39.73845291137695,-104.98485565185547|marker-1||39.73687744140625,-104.9848403930664|marker-2||&center=39.7376651763916,-104.98484802246094&defaultMarker=none&zoom=13&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>33,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif",
                     :direction=>4},
                    {:distance=>0.135,
                     :streets=>["E 13th Ave"],
                     :narrative=>"Turn right onto E 13th Ave.",
                     :turnType=>2,
                     :startPoint=>{:lng=>-104.98484, :lat=>39.736877},
                     :index=>1,
                     :formattedTime=>"00:00:22",
                     :directionName=>"West",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=39.73687744140625,-104.9848403930664|marker-2||39.73686981201172,-104.98737335205078|marker-3||&center=39.736873626708984,-104.9861068725586&defaultMarker=none&zoom=13&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>22,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                     :direction=>7},
                    {:distance=>2.485,
                     :streets=>["N Broadway"],
                     :narrative=>"Turn left onto N Broadway.",
                     :turnType=>6,
                     :startPoint=>{:lng=>-104.987373, :lat=>39.73687},
                     :index=>2,
                     :formattedTime=>"00:05:53",
                     :directionName=>"South",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=39.73686981201172,-104.98737335205078|marker-3||39.70085144042969,-104.98760986328125|marker-4||&center=39.7188606262207,-104.98749160766602&defaultMarker=none&zoom=8&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>1024,
                     :time=>353,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                     :direction=>4},
                    {:distance=>0.014,
                     :streets=>[],
                     :narrative=>"Turn left to take the I-25 S ramp toward Colo Spgs.",
                     :turnType=>13,
                     :startPoint=>{:lng=>-104.98761, :lat=>39.700851},
                     :index=>3,
                     :formattedTime=>"00:00:07",
                     :directionName=>"Southeast",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=39.70085144042969,-104.98760986328125|marker-4||39.70073318481445,-104.98739624023438|marker-5||&center=39.70079231262207,-104.98750305175781&defaultMarker=none&zoom=15&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>7,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_ramp_sm.gif",
                     :direction=>5},
                    {:distance=>108.048,
                     :streets=>["I-25 S"],
                     :narrative=>"Merge onto I-25 S.",
                     :turnType=>10,
                     :startPoint=>{:lng=>-104.987396, :lat=>39.700733},
                     :index=>4,
                     :formattedTime=>"01:35:38",
                     :directionName=>"South",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[{:extraText=>"", :text=>"25", :type=>1, :url=>"http://icons.mqcdn.com/icons/rs1.png?n=25&d=SOUTH", :direction=>4}],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=39.70073318481445,-104.98739624023438|marker-5||38.27111053466797,-104.60508728027344|marker-6||&center=38.98592185974121,-104.7962417602539&defaultMarker=none&zoom=3&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>1152,
                     :time=>5738,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_merge_right_sm.gif",
                     :direction=>4},
                    {:distance=>0.221,
                     :streets=>[],
                     :narrative=>"Take the 1st Street exit, EXIT 98B.",
                     :turnType=>14,
                     :startPoint=>{:lng=>-104.605087, :lat=>38.271111},
                     :index=>5,
                     :formattedTime=>"00:00:25",
                     :directionName=>"South",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[{:extraText=>"", :text=>"98B", :type=>1001, :url=>"http://icons.mqcdn.com/icons/rs1001.png?n=98B&d=RIGHT", :direction=>0}],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=38.27111053466797,-104.60508728027344|marker-6||38.26797103881836,-104.6056137084961|marker-7||&center=38.269540786743164,-104.60535049438477&defaultMarker=none&zoom=11&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>1024,
                     :time=>25,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_gr_exitright_sm.gif",
                     :direction=>4},
                    {:distance=>0.078,
                     :streets=>["E 1st St"],
                     :narrative=>"Turn right onto E 1st St.",
                     :turnType=>2,
                     :startPoint=>{:lng=>-104.605614, :lat=>38.267971},
                     :index=>6,
                     :formattedTime=>"00:00:17",
                     :directionName=>"West",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=38.26797103881836,-104.6056137084961|marker-7||38.267940521240234,-104.60704803466797|marker-8||&center=38.2679557800293,-104.60633087158203&defaultMarker=none&zoom=15&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>17,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                     :direction=>7},
                    {:distance=>0.079,
                     :streets=>["W City Center Dr"],
                     :narrative=>"E 1st St becomes W City Center Dr.",
                     :turnType=>0,
                     :startPoint=>{:lng=>-104.607048, :lat=>38.267941},
                     :index=>7,
                     :formattedTime=>"00:00:17",
                     :directionName=>"West",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=38.267940521240234,-104.60704803466797|marker-8||38.267913818359375,-104.60850524902344|marker-9||&center=38.267927169799805,-104.6077766418457&defaultMarker=none&zoom=15&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>17,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_straight_sm.gif",
                     :direction=>7},
                    {:distance=>0.211,
                     :streets=>["Central Main St"],
                     :narrative=>"Turn left onto Central Main St.",
                     :turnType=>6,
                     :startPoint=>{:lng=>-104.608505, :lat=>38.267914},
                     :index=>8,
                     :formattedTime=>"00:00:25",
                     :directionName=>"Southwest",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :mapUrl=>
                      "http://www.mapquestapi.com/staticmap/v5/map?key=6uG2DlX98k7eAGoLjbSCK5wkwiBebGJO&size=225,160&locations=38.267913818359375,-104.60850524902344|marker-9||38.26542663574219,-104.61041259765625|marker-10||&center=38.26667022705078,-104.60945892333984&defaultMarker=none&zoom=12&rand=715080654&session=5faae83b-0078-6750-02b4-3221-1246be6cf7e9",
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>25,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                     :direction=>6},
                    {:distance=>0,
                     :streets=>[],
                     :narrative=>"Welcome to PUEBLO, CO.",
                     :turnType=>-1,
                     :startPoint=>{:lng=>-104.610413, :lat=>38.265427},
                     :index=>9,
                     :formattedTime=>"00:00:00",
                     :directionName=>"",
                     :maneuverNotes=>[],
                     :linkIds=>[],
                     :signs=>[],
                     :transportMode=>"AUTO",
                     :attributes=>0,
                     :time=>0,
                     :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-end_sm.gif",
                     :direction=>0}],
                  :hasFerry=>false}],
               :options=>
                {:arteryWeights=>[],
                 :cyclingRoadFactor=>1,
                 :timeType=>0,
                 :useTraffic=>false,
                 :returnLinkDirections=>false,
                 :countryBoundaryDisplay=>true,
                 :enhancedNarrative=>false,
                 :locale=>"en_US",
                 :tryAvoidLinkIds=>[],
                 :drivingStyle=>2,
                 :doReverseGeocode=>true,
                 :generalize=>-1,
                 :mustAvoidLinkIds=>[],
                 :sideOfStreetDisplay=>true,
                 :routeType=>"FASTEST",
                 :avoidTimedConditions=>false,
                 :routeNumber=>0,
                 :shapeFormat=>"raw",
                 :maxWalkingDistance=>-1,
                 :destinationManeuverDisplay=>true,
                 :transferPenalty=>-1,
                 :narrativeType=>"text",
                 :walkingSpeed=>-1,
                 :urbanAvoidFactor=>-1,
                 :stateBoundaryDisplay=>true,
                 :unit=>"M",
                 :highwayEfficiency=>22,
                 :maxLinkId=>0,
                 :maneuverPenalty=>-1,
                 :avoidTripIds=>[],
                 :filterZoneFactor=>-1,
                 :manmaps=>"true"},
               :locations=>
                [{:dragPoint=>false,
                  :displayLatLng=>{:lng=>-104.984856, :lat=>39.738453},
                  :adminArea4=>"Denver County",
                  :adminArea5=>"Denver",
                  :postalCode=>"",
                  :adminArea1=>"US",
                  :adminArea3=>"CO",
                  :type=>"s",
                  :sideOfStreet=>"N",
                  :geocodeQualityCode=>"A5XAX",
                  :adminArea4Type=>"County",
                  :linkId=>35589410,
                  :street=>"",
                  :adminArea5Type=>"City",
                  :geocodeQuality=>"CITY",
                  :adminArea1Type=>"Country",
                  :adminArea3Type=>"State",
                  :latLng=>{:lng=>-104.984853, :lat=>39.738453}},
                 {:dragPoint=>false,
                  :displayLatLng=>{:lng=>-104.610413, :lat=>38.265427},
                  :adminArea4=>"Pueblo County",
                  :adminArea5=>"Pueblo",
                  :postalCode=>"",
                  :adminArea1=>"US",
                  :adminArea3=>"CO",
                  :type=>"s",
                  :sideOfStreet=>"N",
                  :geocodeQualityCode=>"A5XAX",
                  :adminArea4Type=>"County",
                  :linkId=>48374268,
                  :street=>"",
                  :adminArea5Type=>"City",
                  :geocodeQuality=>"CITY",
                  :adminArea1Type=>"Country",
                  :adminArea3Type=>"State",
                  :latLng=>{:lng=>-104.610415, :lat=>38.265425}}],
               :time=>6237,
               :hasUnpaved=>false,
               :locationSequence=>[0, 1],
               :hasFerry=>false
}
  end

  it "exists" do
    road_trip = RoadTrip.new(@trip_params, @forecast, @route)

    expect(road_trip).to be_a(RoadTrip)
    expect(road_trip.start_city).to be_a(String)
    expect(road_trip.end_city).to be_a(String)
    expect(road_trip.travel_time).to be_a(String)

    expect(road_trip.weather_at_eta).to be_a(Hash)
    expect(road_trip.weather_at_eta[:temperature]).to be_a(Numeric)
    expect(road_trip.weather_at_eta[:conditions]).to be_a(String)

  end
end