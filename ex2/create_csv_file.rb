require "csv"
require "date"

$chars = ('!'..'/').to_a
$address = ["Ho Chi Minh City", "Ha Noi", "Ha Tinh", "Binh Duong", "Nghe An", "Quang Ngai", "Hue"]
NUMBER_OF_ROWS = 500000

def create_name
    "Nguyen Van A " + rand(0..9).to_s
end

def create_mail(name)
    name.tr(' ','').downcase + "@gmail.com"
end

def create_phone
    "0"+rand.to_s[2..10]
end

def create_address
    $address.sample
end

def create_date
    rand(Date.civil(1995, 1, 1)..Date.civil(2004, 12, 31)).to_s.gsub('-','/')
end

def create_char
    "Some special charactor: " + $chars.shuffle[0..10].join
end

def create_csv_file
    CSV.open("file.csv", "wb") do |csv|
        csv << ["Name", "Email", "Phone", "Address", "Day_Of_Birth", "Profile"]
        for i in 1..NUMBER_OF_ROWS
            name = create_name
            mail = create_mail(name)
            phone = create_phone
            address = create_address
            date = create_date
            char = create_char
            csv << [name, mail, phone, address, date, char]
        end
    end
end

create_csv_file