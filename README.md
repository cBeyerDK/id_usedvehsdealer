
██╗██████╗░███████╗███╗░░██╗████████╗██╗████████╗██╗░░░██╗
██║██╔══██╗██╔════╝████╗░██║╚══██╔══╝██║╚══██╔══╝╚██╗░██╔╝
██║██║░░██║█████╗░░██╔██╗██║░░░██║░░░██║░░░██║░░░░╚████╔╝░
██║██║░░██║██╔══╝░░██║╚████║░░░██║░░░██║░░░██║░░░░░╚██╔╝░░
██║██████╔╝███████╗██║░╚███║░░░██║░░░██║░░░██║░░░░░░██║░░░
╚═╝╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░░╚═╝░░░░░░╚═╝░░░
░██████╗████████╗░█████╗░██████╗░███████╗
██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝
╚█████╗░░░░██║░░░██║░░██║██████╔╝█████╗░░
░╚═══██╗░░░██║░░░██║░░██║██╔══██╗██╔══╝░░
██████╔╝░░░██║░░░╚█████╔╝██║░░██║███████╗
╚═════╝░░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝

# Brugtvogn
Sælg brugte køretøjer til andre spillere.
Der er et job med i, så brugtvognen kan blive administeret af andre spillere.

Du kan ændre beskeder under `shared/langs/da.lua`
Du kan indstille scriptet efter dine behov i `config.lua`
Du kan ændre de forskellige funktioner der bliver brugt i scriptet i hhv. `shared/utils.lua`, `server/utils.lua` og `client/utils.lua`

# VIGTIGT
Gå ind i `server/main.lua` og `client/main.lua` og ændre variablen "serverEventCode" til det **PRÆCIS** samme i begge filer.
Gøres dette ikke, kan hackere bruge koden til at trigger events og snyde med ting. Kender de ikke koden, så bliver de banned med det samme.

# SQL
Alle `.sql` filer ligger under `SQL` mappen.
Kør `id_usedvehsdealer_ESX.sql` - Hvis din server bruger ESX
Kør `id_usedvehsdealer_QB.sql` - Hvis din server bruger QBCore

# Dependencies
Alle dependencies kan hentes på vores discord under "kunde"-kategorien.
  - [id_core](https://github.com/cBeyerDK/id_core/releases)
  - [id_notify](https://github.com/cBeyerDK/skeexsNotify/archive/refs/heads/main.zip)
  - [id_helpnotify](https://github.com/cBeyerDK/cd_drawtextui/archive/refs/heads/main.zip)
  - [mythic_notify](https://github.com/JayMontana36/mythic_notify/archive/refs/heads/master.zip)
  - [oxmysql](https://github.com/overextended/oxmysql/releases)

# QBCore
[JOB]:
Tilføj jobbet inde i `qb-core/shared/jobs.lua`
```LUA
['brugtvogn'] = {
    label = 'Brugtvogn',
    defaultDuty = true,
    grades = {
        ['0'] = {
            name = 'Elev',
            payment = 350
        },
        ['1'] = {
            name = 'Ansat',
            payment = 500
        },
        ['2'] = {
            name = 'Chef',
            isboss = true,
            payment = 1000
        },
    },
},
```
Husk og tilføj sted til management i `qb-management/client/cl_config.lua`

# Support
Der er ingen support at hente. Scriptet står som det er.

Scriptet er beskyttet under GNU General Public License v3.0 <br />
Scriptet er skrevet og udgivet af **cBeyer** som er med ejer af Identity Store
