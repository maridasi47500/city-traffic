class News < ApplicationRecord
attr_accessor :network_stuff_id
attr_accessor :vehicle_id
attr_accessor :some_title
before_create do
j=NetworkStuff.find(nettwork_stuff_id)
k=Vehicle.find(vehicule_id)
mytitle=j.name+" "+k.name+" "+(some_title||" : nouvel internet cafe")
self.title=mytitle
self.content=mytitle
end
end
