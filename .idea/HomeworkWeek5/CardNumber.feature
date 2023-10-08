Feature: Credit and Debit Card Number

  As a User I want to check auto spacing of credit amd debit card number

  Background: User is on payment page
    Given I open the Google chrome browser
    When I enter url "https://www.tesco.com"
    And I am able to login successfully
    Then I am on payment page
    And I am on card number field

    Scenario Outline: User should be able to enter valid visa card number with autospacing
      When I enter visa card number "<visa card number>"
      And I enter expiry date "<expiry date>"
      And I enter CVV "<CVV>"
      And I click on pay button
      Then I am able to enter visa card number with autospace "<autospace>"
      And I was able to see message "payment successful"

      Examples:

      | visa card number | expiry date | CVV | auto space                        |
      | 4135698745623    | 10/25       | 569 | 4th and 8th cursor position       |
      | 4365489789632146 | 06/24       | 968 | 4th, 8th and 12th cursor position |

      Scenario Outline: User should not be able to enter invalid visa card number with autospacing
        When I enter visa card number "<visa card number>"
        And I enter expiry date "<expiry date>"
        And I enter CVV "<CVV>"
        And I click on pay button
        Then I am able to see error message "<error message>"

        Examples:

        | visa card number    | expiry date   | CVV  | error message       |
        | 413569874562        | 10/25         | 569  | too small number    |
        | 436548978963214625  | 06/24         | 968  | too big number      |
        | 0000000000000000    | 00/00         | 000  | invalid card number |

        Scenario Outline: User should be able to enter valid Master card number with autospacing
          When I enter Master card number "<master card number>"
          And I enter expiry date "<expiry date>"
          And I enter CVV "<CVV>"
          And I click on pay button
          Then I am able to enter Master card number with autospace at 4th, 8th and 12th cursor position
          And I am able to see message "<payment successfull>"

          Examples:
          | master card number     | expiry date   | CVV  |
          | 5123654789658746       | 10/25         | 569  |
          | 5236987896548965       | 06/24         | 968  |
          | 5369874562147895       | 07/23         | 874  |
          | 5478965412369874       | 08/24         | 456  |
          | 5587963214569832       | 09/22         | 234  |

          Scenario Outline: User should not be able to enter invalid Master card number with autospacing
            When I enter Master card number "<master card number>"
            And I enter expiry date "<expiry date>"
            And I enter CVV "<CVV>"
            Then I am able to see error message "<error message>"

            Examples:
            | master card number     | expiry date   | CVV  | error message        |
            | 5023654789658746       | 10/25         | 569  | invalid card number  |
            | 5636987896548965       | 06/24         | 968  | invalid card number  |
            | 53698745621478950      | 07/23         | 874  | too big number       |
            | 547896541236           | 00/00         | 000  | invalid card number  |

            Scenario Outline: User should be able to enter valid American Express credit card number with autospacing
              When I enter American Express credit card number "<American Express credit card number>"
              And I enter expiry date "<expiry date>"
              And I enter CVV "<CVV>"
              And I click on pay button
              Then I am able to enter American Express credit card number with autospace at 4th and 10th cursor position
              And I am able to see message "<payment successfull>"

              Examples:
                | American Express credit card number     | expiry date   | CVV  |
                | 345236987512365                         | 10/24         | 896  |
                | 372365478963214                         | 07/26         | 154  |

              Scenario Outline: User should not be able to enter invalid American Express credit card number with autospacing
                When I enter American Express credit card number "<American Express credit card number>"
                And I enter expiry date "<expiry date>"
                And I enter CVV "<CVV>"
                Then I am able to see error message "<error message>"

                Examples:
                  | American Express credit card number     | expiry date   | CVV  | error message                 |
                  | 355236987512365                         | 10/24         | 896  | invalid credit card number    |
                  | 332365478963214                         | 07/26         | 154  | invalid credit card number    |
                  | 384589675486321                         | 08/22         | 896  | invalid credit card number    |
                  | 345689564                               | 01/22         | 874  | too small credit card number  |
                  | 3789654789511245551                     | 02/25         | 456  | too big credit card number    |
                  | 000000000000000                         | 00/00         | 000  | invalid credit card number    |








