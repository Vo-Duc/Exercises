def check_subarray(a, b)
    i=0
    j=0
    count = 0
    while (i<a.length && j<b.length) do
        if(b[j] == a[i])
            i+=1
            j+=1
            count+=1
        else
            i+=1
        end
    end
    puts (count == b.length)
end

a = [5, 1, 22, 26, 6, -1, 10, 8, 10]
b = [6, -1, 10, 10]

check_subarray(a, b)
