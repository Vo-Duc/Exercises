# Viết chương trình tạo ra file csv khoảng 500.000 lines với nội dung chứa thông tin user. 
# VD: Link
# Sau đó đọc file vừa tạo, rồi import vào database, 
# comment tổng thời gian đọc file + import vào database thành công

require "pg"

$connection

def import_to_db
    # Initialize connection variables.
    host = String('localhost')
    database = String('postgres')
    user = String('postgres')
    password = String('taduc123')

    # Initialize connection object.
    $connection = PG::Connection.new(:host => host, :user => user, :dbname => database, :port => '5432', :password => password)

    csv_file_path = File.expand_path('file.csv')
    start_time = Time.now

    $connection.exec("COPY table_user(name, email, phone, address, dob, profile) FROM '#{csv_file_path}' CSV HEADER DELIMITER ','")
    
    end_time = Time.now
    puts start_time
    puts end_time
    puts end_time - start_time

end

import_to_db
#Thoi gian doc va import 500000 dong: ~2.5s