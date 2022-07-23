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

def caesarCipher(plainString, shiftValue)
    trueShiftValue = trueShift(shiftValue)
    encodedText = ""

    plainString.each_byte do |ascii|
        if ascii.between?(65, 90)
            shiftedLetter = shiftUpperCase(ascii, trueShiftValue).chr
            encodedText = encodedText + shiftedLetter
        elsif ascii.between?(97,122)
            shiftedLetter = shiftLowerCase(ascii, trueShiftValue).chr
            encodedText = encodedText + shiftedLetter
        else
            encodedText = encodedText + ascii.chr
        end 
    end
    return encodedText
end