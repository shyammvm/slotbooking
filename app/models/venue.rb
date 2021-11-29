class Venue < ApplicationRecord
    has_many :books
    mount_uploader :image, VenueImageUploader
    has_one_attached :images
end
