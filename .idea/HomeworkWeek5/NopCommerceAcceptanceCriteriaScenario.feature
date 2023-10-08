Feature: Demo NopCommerce Top menu Acceptance Criteria

  As a User, I would like to check acceptance criteria of NopCommerce Top menu

  Background: User is on given url
    When User type url https://demo.nopcommerce.com
    And User click on enter button
    Then User is on given url

    Scenario: Verify that User can navigate to Books category
      When User is on given url
      And click on Books tab on Top menu
      Then User is navigated on Books category page

      Scenario: Verify that User can see the Books category page with filters and list of products
        When User is on given url
        And click on Books Tab on Top menu
        And check filters and list tab
        Then Books category page is displayed with filters and list tab

        Scenario: Verify that User can see 'sort by' filter on Books category page
          When User is on Books category page
          And check 'sort by' filter is present
          Then 'sort by' filter is available on Books category page

          Scenario: Verify that User can see 'display' filter on Books category page
            When User is on Books category page
            And check 'display' filter is present
            Then 'display' filter is available on Books category page

            Scenario: Verify that User can see 'grid' filter on Books category page
              When User is on Books category page
              And check 'grid' filter is present
              Then 'grid' filter is available on Books category page

              Scenario: Verify that User can see 'list' filter on Books category page
                When User is on Books category page
                And check 'list' filter is present
                Then 'list' filter is available on Books category page

                Scenario: Verify that User can see 'Name:A to Z' selection is present in 'sort by' filter
                  When User is on Books category page
                  And click on 'sort by' filter
                  And chwck that 'Name: A to Z' selection is present
                  Then 'Name: A to Z' selection is present in 'sort by' filter

                  Scenario: Verify that User can see 'Name:A to Z' is first option in 'sort by' filter
                    When User is on Books category page
                    And click on 'sort by' filter
                    And check that 'Name: A to Z' is first in order
                    Then 'Name: A to Z' is first option in order

                    Scenario: Verify that User can see 'Name: A to Z' filter is functioning as expected (Note: Products are filtered in aplhabetical order)
                      When User is on Books category page
                      And click on 'sort by' filter
                      And select 'Name: A to Z' filter
                      Then All products are displayed in alphabetical order

