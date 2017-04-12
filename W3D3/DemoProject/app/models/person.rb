# Table name:person

#id       :integer
#house_id :integer


class Person < ActiveRecord::Base
  #requires that name will be required and that each name is unique
  validates :name, presence: true, uniqueness: true
  validates :house_id, presence: true
  validate :no_sams

  def no_sams
    if self.name == "Sam"
      self.errors[:name] << "can't be named Sam"
    end
  end

  def self.how_long_to_find_Bryant
    start = Time.now
    p Person.where(name: 'Bryant')
    (Time.now - start) * 1000
  end

  belongs_to :house, #house is the method name
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House'

end
