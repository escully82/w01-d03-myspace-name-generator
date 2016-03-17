require_relative '../lib/name_generator.rb'

# Define whatever methods you need first
#
# Here is where I will put my tests for prepend and include
#
# xX_ + "" + _Xx => true
# Xx- + "" + -xX => false
# 152 + "" + 84t => false
# p3t + "" + 6pa => false
#
# Here is where I will put my tests for alternating caps in a string
#
# "MeLiSsAcIeSlIk"  => true
# "pAuLwOoDwArD"    => false
# "SKYELUND"        => false
# "andreascully"    => false
# "CASSONDRAscully" => false

#



def before_string
  if xX_
    puts ":)"
  else
    puts "FML!"
  end
end

def after_string
  if _Xx
    puts ":("
  else
    puts "Why God, why?"
  end
end



#before_string.prepend = xX_
#  true
#end

#after_string.include = _Xx
#  true
#end



# Now run your actual tests, making sure to do output as necessary
def test_one
before_string.prepend + "Hello my minions" + after_string.inlcude
end
