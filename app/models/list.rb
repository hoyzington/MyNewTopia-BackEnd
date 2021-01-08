class List < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :msas
  validates_presence_of :demands
end
