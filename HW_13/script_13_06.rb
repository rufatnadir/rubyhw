<<<<<<< HEAD
﻿# script_13_06.rb
=begin
For 2 dimensional array "contacts" provide following:
	1.	Display the class of the array
	2.	Display the size of the array
	3.	Display the age of the first item of the array
	4.	Display the phone of the last item of the array
	5.	Sort this array in descending order by id (9 to 1)
	6.	Sort this array in ascending order by name (a to z)
	7.	Sort this array in ascending order by age (1 to 9)
	8.	Display all items of the array with Last Name Cash
	9.	Display all items of the array with area code 415
	10.	Display all items of the array where age > 40
	11.	For Amery Paul replace phone # (from 415 555-5549 to 650 123-9876)
=end
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
puts "1. Class of the 'contacts' is #{contacts.class}"
puts "2. Size of the array is #{contacts.size}"
puts "3. Age of the first item in array: #{contacts[0][3]}"
puts "4. Phone of the last item of the array: #{contacts[19][2]}"
puts "5. Sort array in descending order: #{contacts.sort{|a,b| b <=> a}}"
puts "6. Sort array in ascending order by name: #{contacts.sort{|a,b|a[1]<=>b[1]}}"
puts "7. Sort array in ascending order by age:  #{contacts.sort{|a,b|a[3]<=>b[3]}}"
puts "8. "
=======
﻿# script_13_06.rb
=begin
For 2 dimensional array "contacts" provide following:
	1.	Display the class of the array
	2.	Display the size of the array
	3.	Display the age of the first item of the array
	4.	Display the phone of the last item of the array
	5.	Sort this array in descending order by id (9 to 1)
	6.	Sort this array in ascending order by name (a to z)
	7.	Sort this array in ascending order by age (1 to 9)
	8.	Display all items of the array with Last Name Cash
	9.	Display all items of the array with area code 415
	10.	Display all items of the array where age > 40
	11.	For Amery Paul replace pnone # (from 415 555-5549 to 650 123-9876)
=end
>>>>>>> bdb9aeaced2654b72cccd01e13a0b5fc2b9a34a7
