def ftoc(value)
    return (value-32.0) * 5.0/9.0;
end

def ctof(value)
    return (value*9.0/5.0) + 32.0;
end

puts ctof(37)