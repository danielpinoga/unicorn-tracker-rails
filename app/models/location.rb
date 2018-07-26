class Location < ApplicationRecord
  has_many :unicorns, dependent: :destroy
end
