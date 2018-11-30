import sys
import enchant
import csv

# The English library to validate words
d = enchant.Dict("en_US")

# The minimum length of the crib word
MIN_CRIB_LEN = 5

# The minimun length of the internal partial matching word
# This should be less or equal to MIN_CRIB_LEN
MIN_INTERNAL_LEN = 5 


# Load the 5,000 common English vocabulary library as crib word candidates
with open('FrequentEnglishWordList.csv', 'rb') as f:
    reader = csv.reader(f)
    crib_list = list(reader)
# Remove the header of the list file
crib_list = crib_list[1:]

# This function is credit to https://github.com/SpiderLabs/cribdrag
# @param: 	ctext	- 	The cipher text to be crib dragged
# @param: 	crib 	- 	The crib word to drag on the cipher text
# @return: 	results - 	A list of result that generated from a or partial match
#						of the crib word on the cipher text. Each result is
#						ensured to be an English word and contain letters only
def sxor(ctext, crib):
    results = []
    single_result = ''
    crib_len = len(crib)
    positions = len(ctext)-crib_len+1
    for index in xrange(positions):
        single_result = ''
        for a,b in zip(ctext[index:index+crib_len],crib):
            single_result += chr(ord(a) ^ ord(b))

        # Check the word partially, to see whether it conatins an English word
        result_length = len(single_result)
        if (result_length >= MIN_INTERNAL_LEN):
	        for i in xrange(0, result_length - MIN_INTERNAL_LEN):
	        	for j in xrange(i + MIN_INTERNAL_LEN, result_length):
	        		result_partial = single_result[i:j]
	        		if (result_partial.isalpha()):
	        			if (d.check(result_partial)):
	        				results.append(result_partial + "(" + str(index) + ")")

	    # Check the whole word, to see whether it is an English word
        if (single_result.isalpha()):
	    	if(d.check(single_result)):
	    		results.append(single_result + "(" + str(index) + ")")
	    
    return results

# This function executes the crib dragging of a single word on the cipher text
# And write/append the result to the target output file
def writeResultGivenCrib(ctext, crib):
	results = sxor(ctext, crib)
	results_len = len(results)
	# Write to the output (Append)
	with open(FILE_NAME, "a") as text_file:
		text_file.write(crib + "(" + str(results_len) + "): [ " + ', '.join(results) + " ]\n")

# Provide the Hexidecimal version of cipher_text here
CIPHER_HEX = "041a04492225290d635648061c4e04523048391c041a174916360f0e421f1c0a0216421c0a1754020740471d0852200917411d1c4916120900121653370d1b4e031c1700190d06480707051e4520491b0b05150b10521b59463c1300413a0c031d1c4000131d010710131111410e15596c0c1b4e493141011a05084c321152110a4e0404045972170a533b0e0c454027127f45476e250109432039250e006e060d0100390c061d0b54620802080032090d19001a54532a0715171f49010100311e004c4b3d1979211a000600291a174e20041d4c001c0022492c313f4c4c5f471109111b0a49344c4f060f174528450a0e4119482c070154260c490c1800311952200400010e447014001655060208031b413706031b56420815003f070654011b0816000a1b4d07001d5952"
# Decode the hexidecimal cipher text
cipher_text = CIPHER_HEX.decode('hex')
# File Name
FILE_NAME = "auto_output.txt"

# Clear the content of the output file before starting to append
open(FILE_NAME, 'w').close()

# Iterate through the crib word list
for ind, crib in enumerate(crib_list):
	# Get the column of the word
	crib_word = crib[1]
	print str(ind) + ": " + crib_word
	# Write the result to the file
	if (len(crib_word) >= MIN_CRIB_LEN):
		writeResultGivenCrib(cipher_text, crib_word)
