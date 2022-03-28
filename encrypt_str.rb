$encrypted_text = ""
$decrypted_text = ""

def encryptor(str, num)
  even = []
  odd = []
  k = 1
  begin
    i = 1
    j = 0
    even.clear
    odd.clear
    while i < str.length
      even << str[i]
      i += 2
    end
    while j < str.length
      odd << str[j]
      j += 2
    end
    str = even.join + odd.join
    k += 1
  end while k <= num
  $encrypted_text = str
end

#def decryptor(str, num)
#
#end

# Encrypt method
def encrypt(str, num)
  str.strip!
  str.downcase!
  if str.size > 0 && num >= 1
    encryptor(str, num)
  else
    p "Empty string or wrong number! Try again."
    p str
  end
end

# Decrypt method
def decrypt(encrypt_str, num)
  if encrypt_str.size > 0 && num >= 1
    decryptor(str, num)
  else
    p "Empty string or wrong number! Try again."
    p encrypt_str
  end
end

encrypt("Abcdefghij", 1)
p $encrypted_text

#decrypt ($encrypted_text, 1)
#p $decrypted_text
