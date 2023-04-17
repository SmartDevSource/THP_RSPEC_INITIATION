def who_is_bigger(n1, n2, n3)
    id = {'a' => n1 , 'b'=> n2 , 'c' => n3}

    if !id.has_value?(nil)
        greatest_value = id.max_by{|k,v| v}
        return greatest_value[0].to_s+ " is bigger"
    else 
        return "nil detected"
    end
end

def reverse_upcase_noLTA(str)
    str = str.upcase
    tempStr = ""
    (str.length-1).downto(0){ |i|
        if (str[i]!= 'L' && str[i]!= 'T' && str[i]!='A')
            tempStr += str[i]
        end
    }
    return tempStr

    #return str.reverse.upcase.tr("LTA", "")
end

def array_42(array)
    return array.include?(42) ? true : false
end

def magic_array(array)
    #array.sort
    #tempArray = []
    #counter = 0
    #for i in 0..array.length-1
    #    if ((array[i]*2)%3 != 0) then tempArray[counter] = array[i]*2; counter+=1 end
    #end
    #return tempArray

    return array.flatten.sort.map{|i|i*2}.delete_if{|i|i%3==0}.uniq
end