class User < ApplicationRecord
  validates_presence_of :name, presence: true
  validates_format_of :name, :with => /\A[a-zA-Z]+\z/
  validates :name, length: { maximum: 15 }, on: :create
end
