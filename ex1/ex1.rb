def input
    puts "Nhap mang"
    a = Array.new
    i = 1
    number = 0
    while (number != -1 && i <= 99)
        begin
            print "Nhap phan tu thu #{i}: "
            number = Integer(gets.chomp)
            if(number != -1)
                if(number >= 0)
                    a.push(number)
                else
                    Integer("s")
                end
            end
            rescue Exception => e
                puts "Vui long nhap so tu nhien"
                retry
        end 
        i = i + 1
    end
    return a
end
def find_min(a)
    puts "Mang vua nhap la: " + a.to_s
    puts "Phan tu be nhat trong mang la: " + a.min.to_s
end

a = input
unless (a.length == 0)
    find_min(a)
else
    puts "Khong co phan tu nao trong mang"
end