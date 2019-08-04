Feature: Regester private user on Codersguru website

  Scenario Outline: Register valid private user with no errors
    Given I'm on website on website "https://men-men-s-01.codersguru.pl/"
    When I click button "Załóż konto"
    And I click on button "Prywatnie"
    And I register user with "<email>" "<name>" "<surname>" "<password>" "<city>" "<postal_code>" "<street>" "<house_number>"
    And I click on checkbox "Zapoznałem się z regulaminem"
    And click on button "Zarejestruj się"
    Then the "<name>" is displayed on the website
    And user is registered

    Examples:
      |email       |name |surname |password |city |postal_code|street  | house_number|
      |krala@klala.com|Olga  |Nowak|konfacela|Radom|00-234     |Morelowa|4            |
