# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  address    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class House < ActiveRecord::Base
  has_many :person, #person is the method name
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'

end
