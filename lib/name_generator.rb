# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

# Removing any blank spaces within a given string
#
# This is working!!!

def remove_blank_space(name)
  name.gsub(/\s+/, "")
end

# Remove special characters
#
# This is working!!!
#
# Wait, no it's not! :(  Doesn't work with pry
#
# After some more tears, it is working again.

def remove_special_characters(name)
  name.gsub(/[^A-Za-z]/, '')
end

# Capitalizing all characters
#
# Intend to alternate capitalization in another method
#
# This is working!!!

def capitalize_all(name)
  name.upcase
end

# Alternating capitalization
#
# Calling out letters, relative to their numerical position and altering caps.
#
# This is working!!!

def alternate_case(name)
  name.gsub(/\w/).with_index{|s, i| i.even? ? s.upcase : s.downcase}
end

# Prepending the name with xX_
#
# This is working!!!

def prepend_name(name)
  name.prepend("xX_")
end

# Appending the name with _Xx
#
# This is working!!!

def append_name(name)
  name.<<("_Xx")
end

# Attempt to test results

# Finally, after hours of aggravation, I am done and it works. Yay me!

# When I run pry and input a name or string, consisting of spaces, numbers, or
# special characters, the output is the expected result. For example,
# ("!451edWar      5245@$d97  Sc u l !431y   ") returns xX_EdWaRdScUlLy_Xx

def valid_name(name)
  name_arg = name
  name_arg = remove_blank_space(name_arg)
  name_arg = remove_special_characters(name_arg)
  name_arg = capitalize_all(name_arg)
  name_arg = alternate_case(name_arg)
  name_arg = prepend_name(name_arg)
  name_arg = append_name(name_arg)
end


binding.pry
