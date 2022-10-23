# Viết chương trình trong đó có hàm nhận input đầu vào là một mảng không rỗng
# và các phần tử trong mảng không trùng nhau (có thể bao gồm số âm), 
# và một con số đại diện cho tổng (target_sum).
# Nếu 3 số trong một mảng có tổng bằng với target_sum, in ra mảng với 3 số đó. Nếu không có in ra mảng rỗng
# Lưu ý: chỉ sử dụng tối đa 2 vòng lặp for hoặc while lồng nhau, có thể sử dụng nhiều vòng for không lồng nhau. 
# Cần in ra các mảng thỏa tiêu chí tìm thấy
# Vd: input là mảng 
#   numbers = [12, 3, 1, 2, -6, 5, -8, 6]
#   target_sum = 0
# => output sẽ là [[-8, 2, 6], [-8, 3, 5], [-6, 1, 5]]

def find(numbers, target_sum)
    result = []
    h1 = Hash.new()
    for i in 0...numbers.length do
        h1[numbers[i]] = target_sum - numbers[i]
        h2 = Hash.new()
        for j in i+1...numbers.length do
            a = h1[numbers[i]] - numbers[j]
            result.append([numbers[i], a, numbers[j]]) if(h2[a] == numbers[j])
            h2[numbers[j]] = a
        end
    end
    return result
end

numbers = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
puts find(numbers, target_sum).to_s
