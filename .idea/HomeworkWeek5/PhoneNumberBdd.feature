Feature: Phone number field functionality

  As a User I want to enter phone number in phone number field with autospace

  Background: User is on amazon checkout page
    Given I open the chrome browser and enter url "https://www.amazon.co.uk/" in search field
    And I click enter button from keyboard
    And I am on amazon homepage
    When I select smartwatch from all product list
    And I click on buy now button
    Then I am on amazon checkout page

    Scenario Outline: Verify that when user enter valid UK Landline number, it should be accept and autospace generated
      When I enter "<UK Landline number>" in phone number field
      Then UK Landline number should be accept
      And I should be able to see autospace generated at "<Position of autospace generate>"

      Examples:
      | UK Landline number     | Position of autospace generate                                                 |
      | 02989016745            | Autospace generated after 3rd and 7th digit of UK Landline number              |
      | 029890167454321        | Autospace generated after 3rd, 7th and 11th digit of UK Landline number        |

      Scenario Outline: Verify that when user enter invalid UK Landline number, it should be not accept
        When I enter "<UK Landline number>" in phone number field
        Then UK Landline number should be not accept
        And I should be able to see "<error message>"

        Examples:
        | UK Landline number       | error message                    |
        | 02046091                 | Phone number too small           |
        | 0298901674598765         | Phone number too big             |
        | 000000000000000          | Enter valid phone number         |

        Scenario Outline: Verify that when user enter valid UK Mobile number, it should be accept and autospace generated
          When I enter "<UK Mobile number>" in phone number field
          Then UK Mobile number should be accept
          And I should be able to see autospace generated at "<Position of autospace generate>"

          Examples:
            | UK Mobile number     | Position of autospace generate                                          |
            | 07585679835          | Autospace generated after 5th and 8th digit of UK Mobile number         |
            | 079890167454321      | Autospace generated after 5th, 8th and 11th digit of UK Mobile number   |

          Scenario Outline: Verify that when user enter invalid UK Mobile number, it should be not accept
            When I enter "<UK Mobile number>" in phone number field
            Then UK Mobile number should be not accept
            And I should be able to see "<error message>"

            Examples:
              | UK Mobile number       | error message                    |
              | 07585679               | Mobile number too small          |
              | 0798901674598765       | Mobile number too big            |
              | 000000000000000        | Enter valid Mobile number        |

            Scenario Outline: Verify that when user enter valid Ireland Mobile number, it should be accept and autospace generated
              When I enter "<Ireland Mobile number>" in phone number field
              Then Ireland Mobile number should be accept
              And I should be able to see autospace generated at "<Position of autospace generate>"

              Examples:
                | Ireland Mobile number     | Position of autospace generate                                               |
                | 0858567983                | Autospace generated after 3rd and 6th digit of Ireland Mobile number         |
                | 085856798357913           | Autospace generated after 3rd, 6th and 10th digit of Ireland Mobile number   |

              Scenario Outline: Verify that when user enter invalid Ireland Mobile number, it should be not accept
                When I enter "<Ireland Mobile number>" in phone number field
                Then Ireland Mobile number should be not accept
                And I should be able to see "<error message>"

                Examples:
                  | Ireland Mobile number       | error message                    |
                  | 08585679                    | Mobile number too small          |
                  | 0898901674598765            | Mobile number too big            |
                  | 000000000000000             | Enter valid Mobile number        |

                Scenario Outline: Verify that when user enter Default number, it should be accept and autospace generated
                  When I enter "<Default number>" in phone number field
                  Then Default number should be accept
                  And I should be able to see autospace generated at "<Position of autospace generate>"

                  Examples:
                    | Default number     | Position of autospace generate                                               |
                    | 01212341234        | Autospace generated after 3rd and 7th digit of Default number                |
                    | 012123412341234    | Autospace generated after 3rd, 7th and 11th digit of Default number          |

                  Scenario Outline: Verify that when user enter invalid Default number, it should be not accept
                    When I enter "<Default number>" in phone number field
                    Then Default number should be not accept
                    And I should be able to see "<error message>"

                    Examples:
                      | Default number       | error message                    |
                      | 01046091             | Phone number too small           |
                      | 0198901674598765     | Phone number too big             |
                      | 000000000000000      | Enter valid Phone number         |




