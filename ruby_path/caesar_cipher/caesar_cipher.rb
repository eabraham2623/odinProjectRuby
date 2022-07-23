def trueShift(shiftValue)
    return shiftValue % 26
end

def shiftUpperCase(letterASCII, trueShift)
    if (letterASCII + trueShift > 90)
        shiftedASCII = (letterASCII - 26) + trueShift
        return shiftedASCII
    end
    return shiftedASCII = letterASCII + trueShift
end

def shiftLowerCase(letterASCII, trueShift)
    if (letterASCII + trueShift > 122)
        shiftedASCII = (letterASCII - 26) + trueShift
        return shiftedASCII
    end
    return shiftedASCII = letterASCII + trueShift
end
