class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, :through => :custodies




  def last_comma_first
    "#{last_name}, #{first_name}"
  end
end
