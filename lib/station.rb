class Station
  include DataMapper:::Resource
  property :name,         Text
  property :id,           Serial
  property :timestamp,    DateTime
  property :number,       Integer
  property :free,         Integer
  property :bikes,        Integer
  property :coordinates,  Text
  property :address,      Text
  property :lat,          Integer
  property :lng,          Integer
  property :idx,          Serial
end