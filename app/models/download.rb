class Download < ActiveRecord::Base
  belongs_to :agent
  has_one :movie
end
