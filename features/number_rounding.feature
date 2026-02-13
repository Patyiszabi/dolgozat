Feature: Number rounding

    Scenario Outline: Rounding (Outline)
        Given the number is <number>
        and the decimals are <decimals>
        When I round the number
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
