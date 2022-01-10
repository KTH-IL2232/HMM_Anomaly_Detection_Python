import warnings
import math
import struct

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

def Dec2hex (num_decimal, width, frac, signedness = "unsigned"):
    """
    This function converts decimal to fixed point hexadecimals, returns a string

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
    string. string for hexadecimals representation

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
        
    return hex(int(num_string, 2))

def Bin2dec (num_binary, frac, signedness = "unsigned"):
    """
    Convert binary number to decimal number

    Parameters
    ----------
    num_binary : string or int
        The input binary number value
    frac : int
        bit width of the fraction part. (number of bits for mantissa)
    signedness : string, optional
        The default is "signed". for unsigned convert, use "unsigned"

    Returns
    -------
    float
        The decimal value of the input

    """
    num_binary = str(num_binary)
    if signedness == "unsigned":
        num_dec = int(num_binary, 2)
    elif signedness == "signed":
        if num_binary[0] == '1':
            num_dec_positive = int(num_binary, 2)
            num_dec = num_dec_positive - (2 ** (len(num_binary)*4))
        else:
            num_dec = int(num_binary, 2)
    return num_dec/(2 ** frac)

def Hex2dec (num_hex, frac, signedness = "unsigned"):
    """
    Convert hexadecimal number to decimal number

    Parameters
    ----------
    num_binary : string
        The input hexadecimal number value
    frac : int
        bit width of the fraction part. (number of bits for mantissa)
    signedness : string, optional
        The default is "signed". for unsigned convert, use "unsigned"

    Returns
    -------
    float
        The decimal value of the input

    """
    if signedness == "unsigned":
        num_dec = int(num_hex, 16)
    elif signedness == "signed":
        if num_hex[0] in ['8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'A', 'B', 'C', 'D', 'E', 'F']:
            num_dec_positive = int(num_hex, 16)
            num_dec = num_dec_positive - (2 ** (len(num_hex)*4))
        else:
            num_dec = int(num_hex, 16)
    return num_dec/(2 ** frac)

def Dec2purehex (num_decimal, width, frac, signedness = "unsigned"):
    Str_hex = Dec2hex(num_decimal, width, frac, signedness)[2:]
    return "0"*(math.ceil(width/4) - len(Str_hex)) + Str_hex

def Dec2float64 (num_decimal):
    return hex(struct.unpack('<Q', struct.pack('<d', num_decimal))[0])[2:]

def Dec2float32 (num_decimal):
    return hex(struct.unpack('<I', struct.pack('<f', num_decimal))[0])[2:]

def Float2dec64 (num_float):
    return struct.unpack('!d', bytes.fromhex(num_float))[0]

def Float2dec32 (num_float):
    return struct.unpack('!f', bytes.fromhex(num_float))[0]

def Float2dec16 (num_float):
    return struct.unpack('!e', bytes.fromhex(num_float))[0]

