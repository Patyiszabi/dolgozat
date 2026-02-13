def number_rounding(number, decimal):
        if decimal == 0:
            number = round(number)
            return number
        else:
            number = round(number, decimal)
            return number