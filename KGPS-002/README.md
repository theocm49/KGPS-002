# kGPS-Locator

Projeto Flutter baseado no roteiro **Flutter - Geolocator** fornecido na atividade.

## Preparar e executar

```powershell
flutter pub get
flutter run
```

O GPS e a bússola devem ser testados em dispositivo físico ou emulador compatível. A bússola depende do sensor disponibilizado pelo aparelho.

## Permissões Android

No arquivo `android/app/src/main/AndroidManifest.xml`, dentro de `<manifest>` e antes de `<application>`, adicione:

```xml
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
```

## Permissão iOS

Dentro do `<dict>` de `ios/Runner/Info.plist`, adicione:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>O kGPS-Locator precisa da localização para mostrar coordenadas e navegar até waypoints.</string>
```

## O que está implementado

- Interface kGPS-Locator e bússola desenhada com `CustomPainter`.
- Coordenadas, altitude, GPS e heading atualizados pelos sensores.
- Lista de waypoints, inclusão do waypoint na posição atual e exclusão por swipe.
- Long press em waypoint para iniciar navegação visual e botão STOP para encerrar.

A atividade fornecida termina na captura dos sensores e atualização da interface. O cálculo real de azimute/distância e a navegação completa não fazem parte desta etapa.
