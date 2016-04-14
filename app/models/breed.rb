class Breed < ActiveRecord::Base
  has_many :dogs

  validates :breed_name, presence: true

end
