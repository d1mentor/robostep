class Post < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :photos, PhotosUploader
  serialize :photos, JSON # If you use SQLite, add this line.

end
