# frozen_string_literal: true

class Current < ActiveSupport::CurrentAttributes
  attribute :user
  has_many :books
end
