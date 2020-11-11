# Sweater Weather[.](https://www.youtube.com/watch?v=Nc6f9llfs0w)

Sweater Weather is a `rails` server which allows users to make API calls to:
- `GET` forecast information for a specific city
- `GET` information about an image related to a specific city and its current weather
- `POST`, or 'register', a new user and assign them an API Key
- `POST`, or 'login', a registered user
- `POST`, or 'search for', details regarding a road trip between two specific cities, including travel time and weather at the location

## Installation

Follow these easy steps, and you'll be running this app in no time[:](https://www.youtube.com/watch?v=7pzOBI3PD8E)

```bash
git clone https://github.com/LHJE/sweater_weather.git
cd sweater_weather
bundle install
bundle update
bundle exec figaro install
rails db:create
rails db:migrate
```
You will also need to get API Keys from the following sites:

[Open Weather API](https://api.openweathermap.org)  
[MapQuest API](http://www.mapquestapi.com)  
[Hiking Project API](https://www.hikingproject.com)  
[Upsplash API](https://api.unsplash.com/)  

And add your keys to your `application.yml` file in `config/` like this:
```
WEATHER_API_KEY: "your key"
WEATHER_URL: "https://api.openweathermap.org"

MAP_API_KEY:  "your key"
MAP_URL: "http://www.mapquestapi.com"

TRAILS_API_KEY:  "your key"
TRAILS_URL: "https://www.hikingproject.com/data"

WEATHER_IMAGE_KEY:  "your key"
WEATHER_IMAGE_URL: "https://api.unsplash.com/"
```

You can delete the commented out code in there if you please.  Up to you.


## Usage
Okay[!](https://www.youtube.com/watch?v=wCXyKmQ4dMc)  Now let's get to using this thing! First things first run in your console/terminal:
```
rails s
```

Now that that's going, open up your [Postman app](https://www.postman.com/downloads/).  Each call will have the url `localhost:3000`, like with `localhost:3000/api/v1/forecast?location=denver,co`.  Heck, let's dive in with that one:

### `GET` Responses
#### `GET /api/v1/forecast?location=denver,co`
This is an example of what the forecast response would look like.  I've shortened up the `daily_weather` and `hourly_weather`, which should have 5 and 8 objects in them respectively.
```python
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "id": null,
            "current_weather": {
                "datetime": "2020-11-10 20:50:15 -0700",
                "sunrise": "2020-11-10 06:39:30 -0700",
                "sunset": "2020-11-10 16:48:25 -0700",
                "temperature": 34.27,
                "feels_like": 27.61,
                "humidity": 80,
                "uvi": 2.47,
                "visibility": 6213.71192237334,
                "conditions": "scattered clouds",
                "icon": "01d"
            },
            "daily_weather": [
                {
                    "date": "2020-11-10",
                    "sunrise": "2020-11-10 06:39:30 -0700",
                    "sunset": "2020-11-10 16:48:25 -0700",
                    "max_temp": 47.86,
                    "min_temp": 33.13,
                    "conditions": "clear sky",
                    "icon": "01d"
                },
                ...
            ],
            "hourly_weather": [
                {
                    "hour": "2020-11-10 20:00:00",
                    "temperature": 34.27,
                    "wind_speed": "2.75 mph",
                    "wind_direction": "S 69° W",
                    "conditions": "scattered clouds",
                    "icon": "03n"
                },
                 ...
            ]
        }
    }
}
```

### `GET /api/v1/backgrounds?location=denver,co`
This is an example of what the image response would look like:
```python
{
    "data": {
        "id": null,
        "type": "image",
        "attributes": {
            "location": "denver,co",
            "image_url": "https://images.unsplash.com/photo-1580408597610-51b1ad419857?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE4MTMxN30",
            "dimensions": {
                "width": 4240,
                "height": 2832
            },
            "credit": {
                "author": "Payson Wick",
                "author_profile": "https://api.unsplash.com/users/paysonwick"
            }
        }
    }
}
```
### POST Responses
The thing with POST responses is you're going to need to give Postman a little more information.  

To do that, in Postman:
- click on where it says `GET`, and change it to `POST`.
- Underneath the bar where you type in the url you're `POST`ing, click the tab 'Body'
- Select `raw` from the dots below the Body tab.
- Click on the far right of this row where it says `Text`, and select       `JSON`

This is where we will be posting our `body`, which is needed to make the call.  Let's continue:

#### `POST /api/v1/users`
Our first `POST` example! The body for this one will look like this:
```
{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

Here is what the register response would look like:
```
{
  "data": {
    "type": "users",
    "id": "1",
    "attributes": {
      "email": "whatever@example.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```

#### `POST /api/v1/sessions`
The body for log in will look like this:
```
{
  "email": "whatever@example.com",
  "password": "password"
}
```

Here is what the login response would look like:
```
{
  "data": {
    "type": "users",
    "id": "1",
    "attributes": {
      "email": "whatever@example.com",
      "api_key": "jgn983hy48thw9begh98h4539h4"
    }
  }
}
```

#### `POST /api/v1/road_trip`
And finally, the body for road trip will look like this:
```
{
  "origin": "Denver,CO",
  "destination": "Pueblo,CO",
  "api_key": "jgn983hy48thw9begh98h4539h4"
}
```

And here is what the road trip response would look like:
```
{
    "data": {
        "id": null,
        "type": "road_trip",
        "attributes": {
            "start_city": "Denver,CO",
            "end_city": "New York, NY",
            "travel_time": "1 day",
            "weather_at_eta": {
                "temperature": 63.5,
                "conditions": "clear sky"
            }
        }
    }
}
```

For fun, here is an example of the road trip response for a destination that doesn't exist:
```
{
    "data": {
        "id": null,
        "type": "road_trip",
        "attributes": {
            "start_city": "Denver,CO",
            "end_city": "4h54543gska",
            "travel_time": "This destination is not reachable",
            "weather_at_eta": "There wasn't enough information to tell you the forecast."
        }
    }
}
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

### Contributors:

[Luke Hunter James-Erickson](https://www.linkedin.com/in/luke-hunter-james-erickson-b65682143/)

## Gems Being Utilized
Here are the more relevant gems we've added to the base rails gems to make this app really sing:

```
gem 'faraday'
gem 'webmock'
gem 'vcr'
gem "figaro"
gem 'travis'
```  

We're using `faraday` to allow for API calls.  
We're using `figaro` to abstract the API Keys we're using.  
We're using `webmock` and `vcr`  to stub out API calls for testing.  
We're using `travis` to ensure that new changes to the build merge successfully.  

## Versions

- Ruby 2.5.3

- Rails 5.2.4.3

2020-11-11: v 1.0

## License
Copyright 2020 Philip DeFraties, Luke Hunter James-Erickson

Permission is hereby granted to any person obtaining a copy of this software and associated materials to make use of the software and associated materials according to the terms of the MIT License (see included file `LICENSE_MIT`) IF AND ONLY IF they have not read any portion of this file.

Any person who has read any portion of this file may not make any use of the software and associated materials for any purpose whatsoever. Any permissions previously granted to any person to use this software and associated materials terminate and are revoked with immediate effect upon their reading of any portion of this file.
