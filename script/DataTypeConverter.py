import warnings
def Dec2bin (num_decimal, width, frac, signedness = "unsigned"):
    """
    This function converts decimal to fixed point binaries, returns a string

    Parameters
    ----------
    num_decimal : float
        input floating point number.
    width : int
        Bit width of the output
    frac : int
        bit width of the fraction part. (number of bits for mantissa)
    signedness : string, optional
        The default is "signed". for unsigned convert, use "unsigned"

    Returns
    -------
    string. string for binary representation

    """
    num_int_part = int(num_decimal * (2 ** frac))
    if signedness == "signed":
        if num_int_part < 0:
            if (2 ** (width-1) + num_int_part) < 0:
                warnings.warn("Overflow may occur")
            num_string = f'{(2**width + num_int_part):0{width}b}'
        else:
            num_string = f'{num_int_part:0{width}b}'
            if (2 ** (width - 1) - num_int_part) <= 0:
                warnings.warn("Overflow may occur")
    elif signedness == "unsigned":
        num_string = f'{num_int_part:0{width}b}'
        if len(num_string) > width:
            warnings.warn("Overflow may occur")

    else:
        warnings.warn("Signedness should be signed or unsigned")
        
    return num_string