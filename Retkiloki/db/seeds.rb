# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AgeGroup.create([{ group: 'Sudenpennut'}])
AgeGroup.create([{ group: 'Seikkailijat'}])
AgeGroup.create([{ group: 'Tarpojat'}])
AgeGroup.create([{ group: 'Samoajat'}])
AgeGroup.create([{ group: 'Vaeltajat'}])
AgeGroup.create([{ group: 'Aikuiset'}])

User.create([{ name: 'Ilari', phone: 'Eioo', email: 'mauri@hakkeri.net', :age_group => ( AgeGroup.find_by group: 'Aikuiset')}])
User.create([{ name: 'Roope', phone: '123456789', email: 'fiat@hakkeri.net', :age_group => ( AgeGroup.find_by group: 'Sudenpennut')}])
User.create([{ name: 'Leo', phone: '020202', email: 'mopo@hakkeri.net', :age_group => ( AgeGroup.find_by group: 'Tarpojat')}])
User.create([{ name: 'Fleuri', phone: '0700123123', email: 'fleuri@hakkeri.net', :age_group => ( AgeGroup.find_by group: 'Vaeltajat')}])

Event.create([{ name: 'Päiväretki', startdate: '1.10.2014', enddate: '1.10.2014'}])
Event.create([{ name: '2 yön retki', startdate: '1.10.2014', enddate: '3.10.2014'}])
Event.create([{ name: '6 päivän leiri', startdate: '10.10.2014', enddate: '16.10.2014'}])

Type.create([{ name: 'pt_kisat_muu', in_woods true }, { name: 'pt_kisat_pm', in_woods true }, { name: 'pt_kisat_sm', in_woods true }, { name: 'leiri', in_woods true }, { name: 'pitka_vaellus', in_woods true }]) # Pakollinen, muuten Userin view kaatuu.