def find(numbers, target_sum)
    pos = []
    neg = []

    for i in 0...numbers.length do
        a = target_sum - numbers[i]
        if(numbers[i]>=0)
            if(a>=0 && pos[a]==1 || a<0 && neg[-a]==1)
                return a, numbers[i]
            end
            pos[numbers[i]]=1
        else
            if(a>=0 && pos[a]==1 || a<0 && neg[-a]==1)
                return a, numbers[i]
            end
            neg[-numbers[i]]=1
        end
    end
    return []
end

numbers = [3, -10, -4, 8, 11, 1, -14, 6, -11, 5]
target_sum = 0
puts find(numbers, target_sum).to_s

