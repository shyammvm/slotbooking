class Venue < ApplicationRecord
    has_many :books
    mount_uploader :image, VenueImageUploader
end