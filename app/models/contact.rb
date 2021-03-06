class Contact < ApplicationRecord
  validates :name, :message, presence: true
  validates :email, presence: true
  validates :email, email: true
end
