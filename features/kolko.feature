Feature: Kolko i krzyzyk
    Scenario: Pierwsze klikniecie to Kolko
        Given Uzytkownik wlaczyl gre
        When Uzytkownik kliknal w kafelek "4"
        Then Kafelek "4" jest "Kolkiem"
    Scenario: Drugie klikniecie to Krzyzyk
        Given Uzytkownik wlaczyl gre
        When Uzytkownik kliknal w kafelek "4"
        When Uzytkownik kliknal w kafelek "5"
        Then Kafelek "5" jest "Krzyzykiem"
    Scenario: Trzecie klikniecie to Kolko
        Given Uzytkownik wlaczyl gre
        When Uzytkownik kliknal w kafelek "4"
        When Uzytkownik kliknal w kafelek "5"
        When Uzytkownik kliknal w kafelek "6"
        Then Kafelek "6" jest "Kolkiem"
    Scenario: Kolko wygrywa
        Given Uzytkownik wlaczyl gre
        When Uzytkownik kliknal w kafelek "4"
        When Uzytkownik kliknal w kafelek "5"
        When Uzytkownik kliknal w kafelek "6"
        When Uzytkownik kliknal w kafelek "8"
        When Uzytkownik kliknal w kafelek "2"
        Then Kolko wygrywa
