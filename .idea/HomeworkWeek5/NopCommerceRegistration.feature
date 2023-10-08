Feature: NopCommerce Registration

  As a User I want to check the register functionality of NopCommerce

  Background: I am on NopCommerce Registration page
    Given I open the google chrome browser
    When I open the url https://demo.nopcommerce.com/register
    Then I am on NopCommerce Registration page

    Scenario Outline: I should be able to register with invalid data on mandatory field (*) of registration page
      When I enter first name "<first name>"
      And I enter last name "<last name>"
      And I enter email address "<email address>"
      And I enter password "<password>"
      And I enter confirm password "<confirm password>"
      And I click on register button
      Then I can see error message "<error message>"
      And I am not able to register

      Examples:
      | first name  | last name   | email address     | password  | confirm password   | error message                            |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 456897             | please enter first name                  |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 456897             | please enter last name                   |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 456897             | please enter valid email address         |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 456897             | password is required                     |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 456897             | confirm password is required             |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 45689              | password & confirm password is required  |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 45689              | minimum 6 character password is required |
      | rohan       | bakshi      | bakshi@gmail.com  | 456897    | 45689              | mandatory (*) field is required          |

      Scenario: I should be able to select any one radio button from Gender label of your personal details section
        Given I am on Gender label of your personal details section
        When I select "Male" radio button
        And I select "Female" radio button
        Then I am able to select any one of the radio button

        Scenario Outline: I should be able to select day, month and year from drop down list of date of birth field
          Given I am on date of birth field of your personal details section
          When I select day "<Day>"
          And I select month "<Month>"
          And I select year "<Year>"
          Then I am able to select day, month and year from drop down list

          Examples:
          | Day   | Month       | Year   |
          | 28    | September   | 1996   |

          Scenario: I should be able to check and uncheck newsletter box on options section
            Given I am on newsletter box on options section
            When I am on newsletter checkbox
            And I again click on newsletter checkbox
            Then I was able to check and uncheck box next to newsletter label

            Scenario: I should be able to register with valid mandatory (*) field data on registration page
              When I enter first name "rohan"
              And I enter last name "bakshi"
              And I enter email address "bakshi@gmail.com"
              And I enter password "456897"
              And I enter confirm password "456897"
              And I click on register button
              Then I was able to register successfully





