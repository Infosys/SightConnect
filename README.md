# SightConnect

flutter pub run build_runner build --delete-conflicting-outputs

flutter pub run flutter_launcher_icons:main

flutter pub run flutter_native_splash:create --path=splash.yaml

flutter run -d chrome --web-browser-flag "--disable-web-security"

flutter gen-l10n

dart run script.dart

#Remove comment
(?://.*$|/\*[\s\S]*?\*/)  

### Localization

To generate arb files and app_localizations dart files, You need to run a javascript file.

> [!NOTE]
> To run javascript files from the terminal, you need to install node in your machine. Node enables us to run javascript outside of the browser environment.

Go to `scripts/` folder in the project root.

run the following command

```shell
npm i
```

After running the command all the dependencies will be downloaded for you. You only need to do this once.

The arb files are generated from the `App_Translations.xlsx` file. So make sure to move that file inside the scripts folder. before moving further

To generate localization files, run the following command

```shell
npm run app-translations
```

This will create all the files needed for the app localization inside `lib/l10n/`


Branches with their Description

app_api_v1 : it has the ui till release 1.216.0, but the api's are v1
equipment_selection(any branch with equipment in it) : it has the code for equipment selection
iPleadge_dev : added code for iPleadge
distance_acuity : old code for long distance acuity, not used anymore
dev_backup : backup of development branch before the introduction of new design and long distance visual acuity.



             