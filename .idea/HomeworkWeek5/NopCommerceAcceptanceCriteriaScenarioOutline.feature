Feature: Bookcategory

  Background: I should be able to see homepage
    Given I enter url "https://demo.nopcommerce.com/" in browser
    And I am on homepage

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When I am on homepage
      Then I should be able to see top menu tabs with "<categories>"

      Examples:
      | categories           |
      | computer             |
      | electronic           |
      | apparel              |
      | digital downloads    |
      | books                |
      | jewellery            |
      | gift card            |

      Scenario Outline: I should be able to see book page with filters
        When I select book category from top menu tabs on home page
        Then I should be navigated to book category
        And I should be able to see "<filters>"

        Examples:
        | filters    |
        | sort by    |
        | display    |
        | grid       |
        | list tab   |

        Scenario Outline: I should be able to see list of terms of each filters
          Given I am on books page
          When I click on "<filters>"
          Then I should be able to see "<list>" in dropdown menu

          Examples:
          | filters   | list                                                                             |
          | sort by   | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on   |
          | display   | 3,6,9                                                                            |

          Scenario Outline: I should be able to choose any filters option with specific results
            Given I am books page
            When I click on "<filters>"
            And I click on any "<option>"
            Then I should be able to choose any filter option from the list
            And I should be able to see "<results>"

            Examples:
            | filters    | option             | results                                                                   |
            | sort by    | Name: A to Z       | sorted products with the product name in alphabetical order A to Z        |
            | sort by    | Name: Z to A       | sorted products with the product name in alphabetical order Z to A        |
            | sort by    | Price: Low to High | sorted product with price in descending order                             |
            | sort by    | Price: High to Low | sorted product with price in ascending order                              |
            | sort by    | Created on         | Recently added product should be shown first                              |
            | display    | 3                  | 3 products in page                                                        |
            | display    | 6                  | 6 products in page                                                        |
            | display    | 9                  | 9 products in page                                                        |

            Scenario Outline: I should be able to see product display format type as per given picture in SRS document
              Given I am on book page
              When I click on "<display format icon>"
              Then I should be able to see product display format according display format type as per given picture in SRS document

               Examples:
              | display format icon    |
              | grid                   |
              | list                   |



