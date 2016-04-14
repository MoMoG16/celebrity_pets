class Dog < ActiveRecord::Base
  belongs_to :breed
  has_many :custodies
  has_many :owners, :through => :custodies

validates :name, :breed_id, :owner_id, :dob, presence: true



end
