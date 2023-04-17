def translate(str)
    stepNext = true
    vowels = ['a','e','i','o','u']
    consonants = ('a'..'z').to_a - vowels

    if vowels.include?(str[0]) then return str+"ay" end
    
    counter = 0

    for i in 0..str.length-1
        if str[i] + str[i+1] == "qu"
            str.slice!(i, i+2)
            return str+"quay"
        end

        if !vowels.include?(str[i]) && stepNext
            str+=str[i]
            counter += 1
        else
            stepNext = false
            str+="ay"
            str.slice!(0, counter)
            return str
        end
    end
end