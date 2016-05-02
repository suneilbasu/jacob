# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(
email:'bob@mail.com',
password:'qwertyuio',
password_confirmation: 'qwertyuio',
first_name: 'Bob',
last_name: 'Smith',
office_location: 'London',
role: 'user' ) unless User.where(email: 'bob@mail.com').exists?

User.create!(
email:'jgc@mail.com',
password:'123456789',
password_confirmation: '123456789',
first_name: 'Jacob',
last_name: 'G-C',
office_location: 'Bristol',
role: 'admin' ) unless User.where(email: 'jgc@mail.com').exists?

Device.create(device_name: 'test121',device_type: 'Phone',device_cost: '123.10',device_model: '6S',device_manufacturer: 'Apple',expiry_date: '2016-06-01',start_date: '2015-07-01',user_id: '1')
Device.create(device_name: 'GS2',device_type: 'Phone',device_cost: '233.10',device_model: 'X1',device_manufacturer: 'HTC',expiry_date: '2016-06-01',start_date: '2015-07-01',user_id: '1')
Device.create(device_name: 'Galaxy',device_type: 'Phone',device_cost: '600.10',device_model: 'S7',device_manufacturer: 'Samsung',expiry_date: '2016-06-01',start_date: '2015-07-01',user_id: '1')
Device.create(device_name: 'Galaxy',device_type: 'Phone',device_cost: '430.10',device_model: 'S6',device_manufacturer: 'Samsung',expiry_date: '2016-06-01',start_date: '2015-07-01',user_id: '1')
Device.create(device_name: 'Galaxy',device_type: 'Phone',device_cost: '250.10',device_model: 'A3',device_manufacturer: 'Samsung',expiry_date: '2016-12-01',start_date: '2015-12-01',user_id: '2')
