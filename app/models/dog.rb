class Dog < ActiveRecord::Base
  belongs_to :breed
  has_many :custodies
  has_many :owners, :through => :custodies

end
