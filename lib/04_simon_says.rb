def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, nr=2)
  tempStr = ""

  for i in 0..(nr-1)
    tempStr+=str
    if i-1 < nr  then tempStr += " " end
  end

  tempStr.strip!

  return tempStr
end

def start_of_word(str, nl)
  return str[0, nl]
end

def first_word(str)
  return str.split.first
end

def titleize(str)
  return str.split.map.with_index { |w, i| i == 0 || w.length > 3 ? w.capitalize : w }.join(' ')
end