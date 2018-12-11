class Image < ApplicationRecord
  belongs_to :user
  validates :url, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for JPG or PNG image.' }
end
