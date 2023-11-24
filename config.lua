Config = {}

--===================
--==    General    ==
--===================
--[[
    Distancen på hvor tæt på du skal være på en marker før den vises
    OBS: Skal være et decimal tal
    f.eks 25.0 - for 25
]]
Config.DrawDistance = 25.0

Config.EnableJob = true -- Skal brugtvogn bruges som et job | Standard: true

Config.Blip = {
    Enable = true,
    Coords = vector3(-47.6807, -1668.3435, 29.4914),
    Sprite = 147,
    Color = 25,
    Display = 2,
    Scale = 0.7
}

--================
--==    Logs    ==
--================
Config.Logs = {}

--[[
    Den farve der skal være på discord embed, ud fra log kategori
    OBS: Det skal være en HEX farve kode
    Liste over forskellige farver:
        Farve       Hex Code
        Rød         #F44336
        Grøn	    #4CAF50
        Gul 	    #FFEB3B
        Blå 	    #42A5F5
        Lyse Blå	#03A9F4
        Lilla	    #9C27B0
        Hvid	    #F0F0F0
        Orange	    #FF5722
        Grå 	    #9E9E9E
]]
Config.Logs.Colors = {
    Dealer = '#03A9F4',
}

--[[
    Discord logs
    Indsæet weebhook URL til de forskellige logs, for at de virker
    Det samme URL kan godt bruges til flere logs
]]

Config.Logs.Dealer = {
    SellVehicle = 'WEBHOOK_URL',
    BuyVehicle = 'WEBHOOK_URL',
}

--===================
--==    Society    ==
--===================
Config.Society = {}

Config.Society.Enable = true
Config.Society.Name = 'society_brugtvogn'
Config.Society.Label = 'Brugtvogn'
Config.Society.Type = 'private' -- private or public

--===============
--==    Job    ==
--===============
Config.Job = {}

Config.Job.Name = 'brugtvogn' -- Navnet på jobbet i databasen. | Standard: brugtvogn
Config.Job.DealerSellOnly = true -- Er det kun dealerne der må sætte køretøjer til salg. | Standard: true
Config.Job.DealerOnline = false -- Skal der være en på job, før du kan købe en bil. | Standard: false
Config.Job.DealerCut = 0.10 -- Hvor meget af salgs prisen skal jobbet få. Skrevet i procent | Standard: 0.15

--===============
--==    NPC    ==
--===============
Config.NPC = {}

Config.NPC.Model = 'a_m_y_business_02' -- Model navn på den npc der skal bruges
Config.NPC.Pos = vector4(-40.8331, -1674.7441, 28.4672, 138.4429) -- Lokation på npc.

--==================
--==    Dealer    ==
--==================
Config.Dealer = {}

Config.Dealer.Loc = { -- De steder bilerne skal stå.
    vector4(-52.2498, -1676.6747, 28.8426, 205.7088),
    vector4(-54.3553, -1678.8915, 28.9195, 203.9554),
    vector4(-56.1094, -1681.4545, 29.0514, 201.3535)
}

Config.Dealer.Menu = { -- Menu til medarbejdere
    pos = vector3(-34.6400, -1676.5078, 29.4917),
    type = 21,
    scale = vector3(0.5, 0.5, 0.5),
    rgba = {255,0,255,200},
    bobUpAndDown = false,
    faceCamera = true,
    rotate = false
}

Config.Dealer.BossMenu = vector3(-26.7716, -1672.4243, 29.4917) -- Lokation på boss menu.

Config.Dealer.MaxPrice = -1 -- Maks pris du kan sætte salgs prisen til. | -1 = unlimited. | Standard: 6,7 mil
Config.Dealer.MinPrice = 25000 -- Minimums pris du kan sætte salgs prisen til | Standard: 1

--=====================
--==    Showroom     ==
--=====================
Config.Showroom = {}

Config.Showroom.Marker = { -- Menu til at prøve kører biler.
    pos = vector3(-19.3956, -1674.3882, 29.4917),
    type = 36,
    scale = vector3(0.6, 0.6, 0.6),
    rgba = {255,0,255,200},
    bobUpAndDown = false,
    faceCamera = true,
    rotate = false
}

Config.Showroom.Spawner = vector4(-23.4168, -1677.9956, 29.4719, 110.6327) -- Der hvor prøve bilerne spawner.

Config.Showroom.Deleter = { -- Der hvor du sletter prøve bilerne.
    pos = vector3(-23.4168, -1677.9956, 28.4719),
    type = 25,
    scale = vector3(1.7, 1.7, 1.0),
    rgba = {255,0,255,200},
    bobUpAndDown = false,
    faceCamera = true,
    rotate = false
}