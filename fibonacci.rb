def fibs(n)
    array = [0, 1]
    (n - 2).times.map{|number| array.push(array[number] + array[number + 1])}
    array
end

def fibs_rec(n, array = [0, 1])
    n == 1 ? return : fibs_rec(n - 1, array) 
    array.length == n ? array : array.push(array[-2] + array.last)
end
