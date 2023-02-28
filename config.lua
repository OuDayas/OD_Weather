--[[
                       ____            _____                                 
                      / __ \          |  __ \                                
                     | |  | |  _   _  | |  | |   __ _   _   _    __ _   ___  
                     | |  | | | | | | | |  | |  / _` | | | | |  / _` | / __| 
                     | |__| | | |_| | | |__| | | (_| | | |_| | | (_| | \__ \ 
                      \____/   \__,_| |_____/   \__,_|  \__, |  \__,_| |___/ 
                                                         __/ |               
                                                        |___/                

                             _     _                                           _                      
                            | |   | |                                         | |                     
  __      __   ___    __ _  | |_  | |__     ___   _ __     ___   _   _   ___  | |_    ___   _ __ ___  
  \ \ /\ / /  / _ \  / _` | | __| | '_ \   / _ \ | '__|   / __| | | | | / __| | __|  / _ \ | '_ ` _ \ 
   \ V  V /  |  __/ | (_| | | |_  | | | | |  __/ | |      \__ \ | |_| | \__ \ | |_  |  __/ | | | | | |
    \_/\_/    \___|  \__,_|  \__| |_| |_|  \___| |_|      |___/  \__, | |___/  \__|  \___| |_| |_| |_|
                                                                  __/ |                               
                                                                 |___/                                
                                            __        ___  
                                           /_ |      / _ \ 
                                 __   __    | |     | | | |
                                 \ \ / /    | |     | | | |
                                  \ V /     | |  _  | |_| |
                                   \_/      |_| (_)  \___/ 

Discord: https://discord.gg/Wmfn3ePntg
]]

Config = {}
Cache = {}
Config.Debug = true


Config.Enabled          = true
Config.CityID           = 3169070 -- https://openweathermap.org/
Config.API              = "chiave api"
Config.Language         = "IT"
Config.MeasureSystem    = "metric" -- disponibili: metric/imperial
Config.Measurements =
{
    ["metric"] =
    {
        temperature = "°C",
        speed = "m/s"
    },
    ["imperial"] =
    {
        temperature = "°F",
        speed = "mph"
    }
}
Config.SetWeather   = 
{
    enabled = true,
    -- secondi della transazione nel cambio del tempo atmosferico
    -- raccomandato: 60-80
    TransitionTime = 70,
    Trails =
    {
        Vehicles = true,
        Footsteps = true
    --  Se le impronte/i veicoli devono lasciare traccie
    }

}
Config.AutoCheckTime =
{
    enabled = true,
    time = 1,
    type = "hours"-- seconds/minutes/hours
}
Config.DiscordMessage =
{
    enabled         = true,
    webhook         = "link discord webhook",
    avatar          = "link file png",
    nickname        = "nome bot",
    UpdateOnSame    = false
}


-- Comando
Config.cmd =
{
    enabled = true,
    cmdname = "cambiameteo",
    cmdautosync = "AUTOMATICO",
    DiscordUpdate = true,
    -- tempi metereologici disponibili di default
    AvailableWeatherTypes =
    {
        'EXTRASUNNY',
        'CLEAR',
        'NEUTRAL',
        'SMOG',
        'FOGGY',
        'OVERCAST',
        'CLOUDS',
        'CLEARING',
        'RAIN',
        'THUNDER',
        'SNOW',
        'BLIZZARD',
        'SNOWLIGHT',
        'XMAS',
        'HALLOWEEN',
    },
    -- user license key
    -- esempio: license:2r9v0570bn20mcur08u2v586n29876b29nr24vv428
    PlayersAllowed =
    {
        "license:2r9v0570bn20mcur08u2v586n29876b29nr24vv428",
    }
}
Config.Languages =
{
    ["IT"] =
    {
        ["DISCORD"] =
        {
            ["UPDATE"] = "AGGIORNAMENTO METEO",
            ["THEREIS"] = "c'è",
            ["TEMPERATURE"] = "Temperatura",
            ["ACTUALTEMP"] = "Temperatura attuale:",
            ["TEMPMIN"] = "Temperatura minima:",
            ["TEMPMAX"] = "Temperatura massima:",
            ["WIND"] = "Velocità dei venti:"
        },
        ["WEATHERTYPE"] =
        {
            ["EXTRASUNNY"] = "Molto soleggiato",
            ["CLEAR"] = "Limpido",
            ["NEUTRAL"] = "Clima mite",
            ["SMOG"] = "Nebbia",
            ["FOGGY"] = "Leggera nebbia",
            ["CLOUDS"] = "Nuvole sparse",
            ["CLEARING"] = "Schiarimento",
            ["OVERCAST"] = "Nubi sparse",
            ["RAIN"] = "Pioggia",
            ["THUNDER"] = "Tempesta",
            ["SNOW"] = "Neve sparsa",
            ["BLIZZARD"] = "Bufera di neve",
            ["SNOWLIGHT"] = "Nevicata leggera",
            ["XMAS"] = "Clima natalizio",
            ["HALLOWEEN"] = "Halloween nell'aria"
        },
        ["CMDHELP"] = 
        {
            ["DESCRIPTION"] = "Cambia il tempo metereologico",
            ["PARAGRAPH"] = "Tempo metereologico",
            ["AVAILABLE"] = "Tipi disponibili",
            ["UPDATING"] = "Il meteo si aggiornerà",
            ["AUTOUPDATING"] = "Il meteo si aggiornera' in automatico",
            ["WRONGTYPE"] = "Tipo meteo errato, disponibili:",
            ["NOTALLOWED"] = "Non sei autorizzato ad usare questo comando",
            ["INVALIDSYNTAX"] = "Sintassi del comando errata"
        }
    },
    ["EN"] =
    {
        ["DISCORD"] =
        {
            ["UPDATE"] = "METEO UPDATE",
            ["THEREIS"] = "There is",
            ["TEMPERATURE"] = "There is",
            ["ACTUALTEMP"] = "Actual temperature:",
            ["TEMPMIN"] = "Minimal temperature:",
            ["TEMPMAX"] = "Max temperature:",
            ["WIND"] = "Wind force:"
        },
        ["WEATHERTYPE"] =
        {
            ["EXTRASUNNY"] = "is extra sunny",
            ["CLEAR"] = "clear time",
            ["NEUTRAL"] = "mild climate",
            ["SMOG"] = "Some smog",
            ["FOGGY"] = "Light fog",
            ["CLOUDS"] = "Some clouds",
            ["CLEARING"] = "Clearing",
            ["OVERCAST"] = "Scattered clouds",
            ["RAIN"] = "Raining",
            ["THUNDER"] = "Thunderstorm",
            ["SNOW"] = "Scattered snow",
            ["BLIZZARD"] = "Blizzard",
            ["SNOWLIGHT"] = "Light snowfall",
            ["XMAS"] = "Christmas atmosphere",
            ["HALLOWEEN"] = "Halloween in the air"
        },
        ["CMDHELP"] = 
        {
            ["DESCRIPTION"] = "Change the weather type",
            ["PARAGRAPH"] = "Weather type",
            ["AVAILABLE"] = "Weather available",
            ["UPDATING"] = "The weather will update soon",
            ["AUTOUPDATING"] = "The weather will auto-update",
            ["WRONGTYPE"] = "Invalid weather type, valid weather types are:",
            ["NOTALLOWED"] = "1You do not have access to that command"
        }
    }
}
