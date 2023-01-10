class Family < ApplicationRecord
  has_many :packages

  accepts_nested_attributes_for :packages, update_only: true
end