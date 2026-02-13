"""
Step definitions for the number rounding feature.
"""

from behave import given, when, then
from src import number_rounding

@given('the number is {number}')
def step_given_a_number(context, number):
    context.number = float(number)

@given('the decimals are {decimals}')
def step_given_a_decimal(context, decimals):
    context.decimals = int(decimals)


@when('I round the number')
def step_when_rounding(context):
    context.result = number_rounding.number_rounding(context.number, context.decimals)

@then('the result should be {expected_result}')
def step_then_result_should_be(context, expected_result):
    assert context.result == float(expected_result)