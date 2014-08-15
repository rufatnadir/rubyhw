# script_19_02.rb
=begin
Insert data into hashes (2):
	1.	year - from January to December
	2.	contacts - User ID, Full Name, Phone, Age, Email
=end

year = {
    :january => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :february => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],
    :march => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :april => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :may => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :june => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :july => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :august => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :september => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :october => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :november => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :december => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
  }

contacts = {
    m_freeman {id: 1, first_name: Magee, last_name: Freeman, phone: 415 555-4597, age: 33, email: magee.freeman@gmail.com},
    r_haynes {id: 2, first_name: Reed, last_name: Haynes, phone: 415 555-4657, age: 56, email: reed_haynes@hotmail.com},
    p_sosa {id: 3, first_name: Plato, last_name: Sosa, phone: 650 555-4555, age: 18, email: plato.sosa@gmail.com},
    r_skinner {id: 4, first_name: Rogan, last_name: Skinner, phone: 408 555-9702, age: 22, email: rogan@gmail.com},
    c_waters {id: 5, first_name: Castor, last_name: Waters, phone: 415 555-7344, age: 24, email: castor@mac.com},
    a_cash {id: 6, first_name: Abbot, last_name: Cash, phone: 925 555-2322, age: 61, email: abbot_cash@hotmail.com},
    o_nunez {id: 7, first_name: Oren, last_name: Nunez, phone: 415 555-3599, age: 42, email: oren.nunez@yahoo.com},
    i_moore {id: 8, first_name: Isaiah, last_name: Moore, phone: 415 555-1123, age: 37, email: isaiah_moore@yahoo.com},
    g_butler {id: 9, first_name: Gregory, last_name: Butler, phone: 408 555-8976, age: 39, email: eu.neque@odio.ca},
    t_pickett {id: 10, first_name: Timothy, last_name: Pickett, phone: 415 555-3321, age: 44, email: feugiat@yahoo.com},
    a_paul {id: 11, first_name: Amery, last_name: Paul, phone: 415 555-5549, age: 45, email: amery_paul@mac.com},
    l_curtis: {id: 12, first_name: Lyle, last_name: Curtis, phone: 408 555-8897, age: 21, email: ipsum@quam.ca},
13
Amery Cash
408 555-4597
25
amery_cash@yahoo.com
14
Odysseus Hogan
718 555-1234
33
nunc@mac.org
15
Vaughan Carson
212 555-1154
37
v_carson@eteros.edu
16
Lance Guthrie
856 555-4498
44
lance.guthrie@gmail.com
17
Raphael Charles
415 555-2234
52
r.charles@eu.org
18
Ronan Sanford
650 555-3563
54
semper.tellus@magnaUt.edu
19
Abel Wells
415 555-3298
25
neque.venenatis@gmail.com
20
Kasper Knox
650 555-4469
30
kknox@aenean.org
}