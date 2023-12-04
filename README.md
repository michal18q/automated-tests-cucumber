# automated-tests-cucumber
Kod źródłowy zawierający testy automatyczne wykonane za pomocą Cucumber i Selenium WebDriver.

## Instrukcja

### Potrzebne programy
1. Visual Studio Code: https://code.visualstudio.com/download
1. Yarn: https://classic.yarnpkg.com/lang/en/docs/install/#windows-stable 
1. Chrome Webdriver (w zależności od wersji Chrome, którą macie aktualnie zainstalowaną) Pod tym linkiem znajdziecie różne wersje do pobrania: https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json 
Na dzien tworzenia tego repo najaktualniejsza "119.0.6045.105" dla 
Windows-a x64: https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.105/win64/chrome-win64.zip
macOs x64: https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/119.0.6045.105/mac-x64/chrome-mac-x64.zip

### Dodanie Chrome Webdrivera do zmiennych środowiskowych
1. Po pobraniu Chrome Webdrivera wypakuj go z zip-a i skopiuj ścieżkę dostępu do pliku 'chromedriver.exe' (np. C:\Users\ja\Downloads\chromedriver-win64\chromedriver-win64)
1. W pasku start w okienku Szukaj wpisz 'Edit the system environment variables' (lub jakiś polski odpowiednik)
1. Kliknij w głowną podpowiedź i otworzy się okienko z System Properties.
1. Kliknij w przycisk na dole 'Environment Variables' ('Zmienne środowsikowe').
1. W liscie 'User variables for "nazwa Twojego uzytkownika"' kliknij w 'Path', a następnie 'Edit'.
1. Kliknij 'New' i wklej skopiowaną ścieżke dostępu do pliku 'chromedriver.exe'.
1. Kliknij 'Ok' -> 'Ok' -> 'Ok'.

### Pobranie projektu
Jeśli używasz GIT-a:
1. Na swoim komputerze stwórz folder, w którym chcesz przechowywać kod testów np. "cucumber-tests".
1. Będąc w tym folderze w File Explorer-ze przyciśnij prawy przycisk myszy i z menu wybierz "Otwórz w Terminalu".
1. Wklej do terminala nastepujaca linijkę: `git clone https://github.com/michal18q/automated-tests-cucumber.git`

Jeśli chcesz pobrać w postaci zip-a:
1. Wklej ten link w przeglądarkę: https://github.com/michal18q/automated-tests-cucumber/archive/refs/heads/main.zip
1. Następnie wypakuj zawartość zip-a.

### Uruchomienie projektu
1. Uruchom Visual Studio Code.
1. Wybierz opcje 'Open Folder'.
1. Otwórz folder z pobranym kodem projektu (folder, w którym znajduje się plik package.json).
1. Otwórz Terminal. Kliknij na górnym pasku w 'Terminal' -> 'New Terminal'.
1. W otwartym na dole terminalu wpisz `yarn install`` i wciśnij Enter.
1. Teraz będą się pobierać biblioteki z kodem, z których korzystają automatyczne testy. To może potrwać chwilę.
1. Gdy pobieranie bibliotek sie zakończy wpisz w tym samym terminalu: `yarn test` i wcisnij Enter.
1. Testy powinny się uruchomić, przegądarka Chrome powinna wystartować i zasymulować kliknięcia z naszych testów.

Powodzenia!
