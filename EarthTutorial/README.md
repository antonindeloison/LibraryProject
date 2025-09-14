# Lancer le projet

Lancer les pays (dans le playground)

```
(EarthCountryBrowser on:
(EarthMap new importCountriesFrom: (FileSystem workingDirectory /'world.svg' )))
open
````

Lancer la carte (dans le playground)

```
EarthMap new
	importCountriesFrom:
		FileSystem workingDirectory / 'world.svg';
	openPopulatedCanvas;
	yourself
````
