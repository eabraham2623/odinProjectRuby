def trueShift(shiftValue)
    return shiftValue % 26
end

def shiftUpperCaseLetter(letterASCII, trueShift)
    if (letterASCII + trueShift > 90)
        shiftedASCII = (letterASCII - 26) + trueShift
        return shiftedASCII
    end
    return shiftedASCII = letterASCII + trueShift
end

def shiftLowerCaseLetter(letterASCII, trueShift)
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
        # if ascii is lower case letter
        if ascii.between?(65, 90)
            shiftedLetter = shiftUpperCaseLetter(ascii, trueShiftValue).chr
            encodedText = encodedText + shiftedLetter
        # if ascii is upper case letter
        elsif ascii.between?(97,122)
            shiftedLetter = shiftLowerCaseLetter(ascii, trueShiftValue).chr
            encodedText = encodedText + shiftedLetter
        else
            encodedText = encodedText + ascii.chr
        end 
    end
    return encodedText
end

## MAIN
puts "###### CAESAR CIPHER PROGRAM #######"
print "Enter plaintext: "
plaintext = gets
print "Enter shift factor: "
userShiftFactor = gets
shiftFactor = userShiftFactor.to_i
print "Encoded String: "
puts caesarCipher(plaintext, shiftFactor)