Feature: Number rounding

    Scenario: rounding to up
        Given the number is 3.7
        and the decimals are 0
        When I round the number
        Then the result should be 4


    Scenario: rounding to down
        Given the number is 3.2
        and the decimals are 0
        When I round the number
        Then the result should be 3

    Scenario: rounding to 1 decimal
        Given the number is 3.45
        and the decimals are 1
        When I round the number
        Then the result should be 3.5

    Scenario: rounding to 2 decimal
        Given the number is 3.456
        and the decimals are 2
        When I round the number
        Then the result should be 3.46

    Scenario: határon lévő szám
        Given the number is 3.5
        and the decimals are 0
        When is round the number
        Then the result should be 4

    Scenario: negative to down
        Given the number is -3.7
        and the decimals are 0
        When I round the number
        Then the result should be -4

    Scenario: negative to up
        Given the number is -3.2
        and the decimals are 0
        When I round the number
        Then the result should be -3

    Scenario Outline: Rounding (Outline)
        Given the number is <number>
        and the decimals are <decimals>
        When is round the number
        Then the result should be <result>

        Examples:
        | number    | decimals   | result |
        | 3.7       | 0          |  4     |      
        | 3.2       | 0          |  3     |
        | 3.45      | 1          |  3.5   |
        | 3.456     | 2          |  3.46  |
        | 3.5       | 0          |  4     |
        | -3.7      | 0          |  -4    |
        | -3.2      | 0          |  -3    |
