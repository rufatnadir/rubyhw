<<<<<<< HEAD
﻿# script_13_02.rb
=begin
Insert data into arrays:
	1.	days - from 01 to 31 (please use range)
	2.	week - from Monday to Sunday
	3.	months - from January to December
	4.	contacts - User ID, Full Name, Phone, Age, Email (from the list below)
=end

#Insert days from 01 to 31 into array 'days'
puts "1. Data inserted into array 'days' #{days = (01..31).to_a}\n"

#Insert weekdays Monday to Sunday into array 'week'
puts "2. Data is inserted into array 'week' #{week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]}\n"

#Insert Month names into array 'months'
puts "3. Data is inserted into array 'months' #{months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]}\n"

# Insert data to array 'contacts' - User ID, Full Name, Phone, Age, Email
contacts = [
    [1, "Magee Freeman", "415 555-4597", 33, "magee.freeman@gmail.com"],
    [2, "Reed Haynes", "415 555-4657", 56, "reed_haynes@hotmail.com"],
    [3, "Plato Sosa", "650 555-4555", 18, "plato.sosa@gmail.com"],
    [4, "Rogan Skinner", "408 555-9702", 22, "rogan@gmail.com"],
    [5, "Castor Waters", "415 555-7344", 24, "castor@mac.com"],
    [6, "Abbot Cash", "925 555-2322", 61, "abbot_cash@hotmail.com"],
    [7, "Oren Nunez", "415 555-3599", 42, "oren.nunez@yahoo.com"],
    [8, "Isaiah Moore", "415 555-1123", 37, "isaiah_moore@yahoo.com"],
    [9, "Gregory Butler", "408 555-8976", 39, "eu.neque@odio.ca"],
    [10, "Timothy Pickett", "415 555-3321", 44, "feugiat@yahoo.com"],
    [11, "Amery Paul", "415 555-5549", 45, "amery_paul@mac.com"],
    [12, "Lyle Curtis", "408 555-8897", 21, "ipsum@quam.ca"],
    [13, "Amery Cash", "408 555-4597", 25, "amery_cash@yahoo.com"],
    [14, "Odysseus Hogan", "718 555-1234", 33, "nunc@mac.org"],
    [15, "Vaughan Carson", "212 555-1154", 37, "v_carson@eteros.edu"],
    [16, "Lance Guthrie", "856 555-4498", 44, "lance.guthrie@gmail.com"],
    [17, "Raphael Charles", "415 555-2234", 52, "r.charles@eu.org"],
    [18, "Ronan Sanford", "650 555-3563", 54, "semper.tellus@magnaUt.edu"],
    [19, "Abel Wells", "415 555-3298", 25, "neque.venenatis@gmail.com"],
    [20, "Kasper Knox", "650 555-4469", 30, "kknox@aenean.org"]
]
puts "4. Data inserted into array 'contacts' #{contacts.first} and so on"


=======
﻿# script_13_02.rb
=begin
Insert data into arrays:
	1.	days - from 01 to 31 (please use range)
	2.	week - from Monday to Sunday
	3.	months - from January to December
	4.	contacts - User ID, Full Name, Phone, Age, Email (from the list below)
=end

days = (01..31).to_a
week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
months = ["January", "February"]
>>>>>>> bdb9aeaced2654b72cccd01e13a0b5fc2b9a34a7
