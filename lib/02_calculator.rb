def add(n1, n2)
    return n1+n2
end

def subtract(n1, n2)
    return n1-n2
end

def sum(array)
    sum = 0
    for i in 0..array.length-1
        sum+= array[i]
    end
    return sum
end

def multiply(n1, n2)
    return n1*n2
end

def pow(n1, n2)
    return n1**n2
end

def fact(n)
    result = n
    if (n>0)
         (n-1).downto(1) { |i| result*=i }
    end
    return result

    #return result.reduce{|t, n| t*n}
end