# Viết chương trình trong đó có hàm nhận input đầu vào là một mảng không rỗng 
# và các phần tử trong mảng không trùng nhau (có thể bao gồm số âm), 
# và một con số đại diện cho tổng (target_sum).
# Nếu 2 số trong một mảng có tổng bằng với target_sum, in ra mảng với 2 số đó. Nếu không có in ra mảng rỗng
# Lưu ý: chỉ sử dụng 1 vòng lặp for hoặc while (nếu khó quá thì có thể sử dụng vòng for không lồng vào nhau). 
# Chỉ cần in ra 1 mảng đầu tiên tìm thấy
# Vd: input là mảng 
#   numbers = [3, 5, -4, 8, 11, 1, -1, 6]
#   target_sum = 10 
# => output sẽ là [11, -1]

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
target_sum = 20
puts find(numbers, target_sum).to_s