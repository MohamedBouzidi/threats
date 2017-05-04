class Attack < ApplicationRecord
  default_scope { order('created_at DESC') }
  belongs_to :threat
end
