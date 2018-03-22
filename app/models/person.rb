class Person < ApplicationRecord
  has_many :activities

  def full_name
    "#{first_name} #{last_name}"
  end

end
