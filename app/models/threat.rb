class Threat < ApplicationRecord
  belongs_to :type
  has_many :attacks
end
