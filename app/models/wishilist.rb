class Wishilist < ApplicationRecord
  belongs_to :user
  belongs_to :property
end
