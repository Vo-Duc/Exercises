# Nhập vào một mảng gồm n (n≤ 99) số tự nhiên từ bàn phím 
# (quá trình nhập sẽ dừng khi người sử dụng nhập vào giá trị -1) 
# sau đó hiển thị mảng vừa nhập và giá trị nhỏ nhất của mảng ra màn hình.

ARRAY_SIZE = 99
def input
    puts "Nhap mang"
    a = Array.new
    i = 1
    number = 0
    while (number != -1 && i <= ARRAY_SIZE)
        begin
            print "Nhap phan tu thu #{i}: "
            number = Integer(gets.chomp)
            if(number != -1)
                if(number >= 0)
                    a.push(number)
                else
                    raise
                end
            end
            rescue Exception => e
                puts "Vui long nhap so tu nhien"
                retry
        end 
        i+=1
    end
    return a
end
def find_min(a)
    puts "Mang vua nhap la: #{a.to_s}"
    puts "Phan tu be nhat trong mang la: #{a.min.to_s}"
end

a = input
unless (a.length == 0)
    find_min(a)
else
    puts "Khong co phan tu nao trong mang"
end
