

class House < ActiveRecord::Base
  has_many :person, #person is the method name
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'

end
