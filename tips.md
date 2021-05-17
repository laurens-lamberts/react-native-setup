# Tips & tricks

## Android

- Voordat je deze voor het eerst start;
  - Eén keer starten m.b.v. Android Studio. Deze zorgt dat de Android SDK wordt gevonden
- Fysiek toestel; mocht deze aangeven 'cannot reach development server', geef deze dan toegang tot bundler via USB;
  - USB debugging aanzetten op toestel
  - command line: `adb reverse tcp:8081 tcp:8081`

## iOS

- Voordat je deze voor het eerst start;
  - vanuit de ios folder `pod install`
  - de .xcworkspace map openen met XCode
  - In XCode bij Signing & Capabilities als Team 'Personal Team' kiezen
