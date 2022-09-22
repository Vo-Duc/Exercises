def input   
    begin
        print "Nhap so phan tu cua mang: "
        n = Integer(gets.chomp)
        if(n>0 && n<=99)
            a=[]
            for i in 1..n
                a.push(rand(1..9))
            end
            print a.to_s
            return a
        else
            Integer("s")
        end
        rescue Exception => e
            puts "Vui long nhap so tu nhien n, n>0 va n<=99"
            retry
    end
end
def find_subarray(a)
    count = 1
    i = 0
    while i < a.length do
        if (i != 0 && a[i]>=a[i-1])
            print ", " + a[i].to_s
        else
            print "\nMang con tang " + count.to_s + " : " + a[i].to_s
            count += 1
        end
        i += 1
    end
    puts
end

a = input
find_subarray(a) if(a)