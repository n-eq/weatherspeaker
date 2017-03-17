# WeatherSpeaker
[![version](https://img.shields.io/badge/version-v1.0.1-red.svg)](https://github.com/marrakchino/weatherspeaker/releases)
[![license](http://img.shields.io/badge/license-mit-blue.svg)](https://opensource.org/licenses/MIT)

**WeatherSpeaker** | a command-line weather forecast speaker. It allows the user to hear the weather forecast of a particular location for a particular date


## Dependencies

* **espeak** is a compact opensource software speech synthesizer for English and other languages. You can download it [here](http://www.espeak.sourceforce.net).

* **OpenWeatherMap** is an online service that provides weather data. You must get an API key [here](http://openweathermap.org/API).

* **jq** is an opensource lightweight command line JSON processor. You can download it [here](http://stedolan.github.io/jq/download) depending on your Linux distro.

## Getting and using an API key from OpenWeatherMap

1. You need to sign up with a valid username and email: http://home.openweathermap.org/users/sign_up

2. Get an API key from [this](http://openweathermap.org/api) link, the basic free API works. You might want to chose another existing offer.
The API key might take several minutes before it becomes valid. To test it, check that you get weather information for Marrakesh when visiting this link:
`http://api.openweathermap.org/data/2.5/forecast/city?id=2542997&APPID=<YOUR_API_KEY_HERE>`

# Configuration

## Via init

```sh
$ weatherspeaker init
```

## Setting environment

- You may want export these environment variables (adding them to your ~/.bashrc file for example):

`export OPENWEATHERMAP_APIKEY=<YOUR_API_KEY>`

`export WTSPEAK_DEFAULT_CITY_ID=<DEFAULT_CITY_ID>` 

- One other possibility (recommended) is to create two files: `config/.openweathermap_apikey` and `config/.default_city_id` with the following contents:
```sh
$ cat config/.openweathermap_apikey
<YOUR_API_KEY>

$ cat config/.default_city_id
<YOUR_CITY_ID>
```

# Usage 

```sh
$ weatherspeaker --help 
Weatherspeaker - Command line weather forecast speaker
Options:
    [--trace | --verbose]     Activate tracing.
    [--help | -h]             Show this help and exit.
    [--version | -v]          Display the version of the program and exit.
    [init]                    Initialize and configure your personal parameters (API Key and city ID).
Github repository: 	      http://gihthub.com/marrakchino/weatherspeaker
```

# Cron

You can `cron` this job to run periodically, e.g.:

```sh
# Runs weatherspeaker every day at 10 p.m.
0 22 * * * weatherspeaker >> /path/to/weatherspeaker.log 2>&1
```

# TODO

All contributions are welcome. The project is still relatively small, therefore feel free to fork the repository and send pull requests.
A non-exhaustive list of suggested unsolved bugs/improvement ideas is given hereafter:

* Check if there are any open [issues](http://github.com/marrakchino/weatherspeaker/issues) and see whether you can contribute by fixing them.

* Use the functions `get_coordinates_from_ip` and `get_city_country_from_ip` to allow the user to use the program without explicitly specifying a city. See for example how you can extract the city ID number by knowing its name from: http://www.openweathermap.org/help/city_list.txt as the API is not performing well when only providing a city name.

* Add a `-d` option to specify the 'day delay' of the forecast, e.g. invoking `weatherspeaker -d 3` returns the weather forecast of 3 days later.

* Improve weather forecast script.

* Eventually extend the project to other platforms (Windows, MacOS, ...).

* Add new languages for the forecast.

# Licence

**WeatherSpeaker** is released under the MIT licence, see `LICENCE` file for more details.

