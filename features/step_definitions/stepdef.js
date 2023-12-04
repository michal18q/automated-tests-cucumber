const assert = require('assert')
const { Given, When, Then, setDefaultTimeout }  = require('@cucumber/cucumber')
const { Builder, By } = require('selenium-webdriver')

let driver = new Builder().forBrowser('chrome').build()

let pobierzKafelek = (idKafelka) => {
  return driver.findElement(By.id('s' + idKafelka))
}

Given('Uzytkownik wlaczyl gre', function () {
    driver.get("https://jagusiak.github.io/xo/")
  });

When('Uzytkownik kliknal w kafelek {string}', function (idKafelka) {
  let kafelek = pobierzKafelek(idKafelka)
  kafelek.click()
});

Then('Kafelek {string} jest {string}', async function (idKafelka, oczekiwanyZnak) {
  let kafelek = pobierzKafelek(idKafelka)
  let znak = await kafelek.getAttribute('data-sign')
  if(oczekiwanyZnak == "Kolkiem") {
    assert.strictEqual(znak, 'o')
  } else {
    assert.strictEqual(znak, 'x')
  }
});

Then('Kolko wygrywa', async function () {
  let wynik = await driver.findElement(By.id('o-win'))
  let wyswietlane = await wynik.getCssValue('display')
  assert.strictEqual(wyswietlane, 'block')
});