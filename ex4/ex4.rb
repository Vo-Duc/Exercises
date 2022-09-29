def find(numbers, target_sum)
    h = Hash.new()
    for i in 0...numbers.length do
        a = target_sum - numbers[i]
        return a, numbers[i] if(h[a] == numbers[i])
        h[numbers[i]] = a
    end
    return []
end

numbers = [3, -10, -4, 8, 11, 12, 0, -11, 5, 9]
target_sum = 10
puts find(numbers, target_sum).to_s