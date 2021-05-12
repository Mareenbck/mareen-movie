class List < ApplicationRecord
  has_many :bookmarks, dependent: :delete_all
  has_many :movies, through: :bookmarks
  has_one_attached :cover

  validates :name, uniqueness: true, presence: true
end
