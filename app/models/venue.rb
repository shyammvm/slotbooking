class Venue < ApplicationRecord
    mount_uploader :image, VenueImageUploader
end
