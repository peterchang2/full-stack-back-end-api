# frozen_string_literal: true

# User validation
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :images
  validates :password,
            presence: true,
            confirmation: true,
            length: { within: 6..40 },
            on: :create
  validates :password,
            confirmation: true,
            length: { within: 6..40 },
            allow_blank: true,
            on: :update
end
