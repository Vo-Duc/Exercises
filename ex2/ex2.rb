require "csv"
require "date"
require "pg"

$chars = ('!'..'/').to_a
$address = ["Ho Chi Minh City", "Ha Noi", "Ha Tinh", "Binh Duong", "Nghe An", "Quang Ngai", "Hue"]
$connection

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
        csv << ["name", "Email", "Phone", "Address", "Day_Of_Birth", "Profile"]
        for i in 1..500000
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
def inputPG
    # Initialize connection variables.
    host = String('localhost')
    database = String('postgres')
    user = String('postgres')
    password = String('taduc123')

    # Initialize connection object.
    $connection = PG::Connection.new(:host => host, :user => user, :dbname => database, :port => '5432', :password => password)

    puts csv_file_path = File.expand_path('file.csv')
    start_time = Time.now
    $connection.exec("COPY table_user(name, email, phone, address, dob, profile) FROM '#{csv_file_path}' CSV HEADER DELIMITER ','")
    
    end_time = Time.now
    puts start_time
    puts end_time
    puts end_time - start_time

end
inputPG