# WeatherSpeaker

**WeatherSpeaker** is a command-line weather forecast speaker. It allows the user to hear the weather forecast of a particular location for a particular date.

## Dependencies

* **espeak** for the speech synthesis. You can download it [here](http://www.espeak.sourceforce.net).

* **OpenWeatherMap** for the weather data. You must get an API key [here](http://openweathermap.org/API).

* **jq** is a lightweight command-line JSON processor. You can download it [here](http://stedolan.github.io/jq/download) depending on your Linux distro.

## Getting and using an API key from OpenWeatherMap

1. You need to sign up with a valid username and email: http://home.openweathermap.org/users/sign_up

2. Get an API key from [this](http://openweathermap.org/api) link, the basic free API works. You might want to chose another existing offer.
The API key might take several minutes before it becomes valid. To test it, check that you get weather information for Marrakesh when visiting this link:
`http://api.openweathermap.org/data/2.5/forecast/city?id=2542997&APPID=<YOUR_API_KEY_HERE>`

### Setting environment

You must export these environment variables:

`export OPENWEATHERMAP_APIKEY=<YOUR_API_KEY>`

`export WTSPEAK_DEFAULT_CITY_ID=<DEFAULT_CITY_ID>` 

The list of city IDs can be found [here](http://www.openweathermap.org/help/city_list.txt).

## Usage 

`wtspeak <arguments to be defined>`

## Cron

You can cron this job to run periodically, e.g.:

```sh
# Runs weatherspeaker every day at 10 p.m.
0 22 * * * /path/to/weatherspeaker.sh >> /path/to/weatherspeaker.log 2>&1
```

## Licence

**WeatherSpeaker** ~~is~~  will be released  under the MIT licence, see `LICENCE` file for more details.
