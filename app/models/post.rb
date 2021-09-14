class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  mount_uploaders :photos, PhotosUploader
  serialize :photos, JSON # If you use SQLite, add this line.

end
