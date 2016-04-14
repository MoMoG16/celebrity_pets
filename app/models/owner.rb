class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, :through => :custodies

  phony_normalize :phone, default_country_code: 'US'

  validates :first_name, :last_name, presence: true
  validates_plausible_phone :phone, normalized_country_code: 'US', presence: true

  def last_comma_first
    "#{last_name}, #{first_name}"

end
