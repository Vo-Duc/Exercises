# Khởi tạo một mảng random gồm n (n≤ 99) số tự nhiên, 
# với n nhập từ bàn phím, các phần tử trong mảng từ 1 đến 9. 
# Sau đó hiển thị các dãy con tăng trong mảng
# Vd: mảng được khởi tạo ngẫu nhiên là: [6, 8, 2, 5, 3, 6, 1, 2, 7, 1]
# Output: 
#  + mảng con tăng 1: 6, 8
#  + mảng con tăng 2: 2, 5
#  + mảng con tăng 3: 3, 6
#  + mảng con tăng 4: 1, 2, 7
#  + mảng con tăng 5: 1

ARRAY_SIZE = 99
def input   
    begin
        print "Nhap so phan tu cua mang: "
        n = Integer(gets.chomp)
        if(n>0 && n<=ARRAY_SIZE)
            a=[]
            for i in 1..n
                a.push(rand(1..9))
            end
            print a.to_s
            return a
        else
            raise
        end
        rescue Exception => e
            puts "Vui long nhap so tu nhien n, n>0 va n<=#{ARRAY_SIZE}"
            retry
    end
end
def find_subarray(a)
    count = 1
    i = 0
    while i < a.length do
        if (i != 0 && a[i]>=a[i-1])
            print ", #{a[i].to_s}"
        else
            print "\nMang con tang #{count.to_s} : #{a[i].to_s}"
            count += 1
        end
        i += 1
    end
    puts
end

a = input
find_subarray(a) if(a)