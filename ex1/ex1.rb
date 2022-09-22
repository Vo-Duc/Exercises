def input
    puts "Nhap mang"
    a = Array.new
    i = 1
    num = 0
    flag = true
    while (num != "-1" && i <= 99)
        print "Nhap phan tu thu #{i}: "
        num = gets.chomp
        begin
            number = Integer(num)
            if(number != -1)
                if(number >= 0)
                    a.push(number)
                else
                    puts "Vui long nhap so tu nhien"
                    flag = false
                    break
                end
            end
            rescue Exception => e
                puts "Loi nhap"
                flag = false
                break
        end 
        i = i + 1
    end
    if (flag) 
        return a
    else
        return false
    end
end
def output(a)
    puts "Mang vua nhap la: " + a.to_s
    puts "Phan tu be nhat trong mang la: " + a.min.to_s
end

a = input
if(a)
    unless (a.length == 0)
        output(a)
    else
        puts "Khong co phan tu nao trong mang"
    end
end