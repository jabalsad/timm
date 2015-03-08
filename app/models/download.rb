class Download < ActiveRecord::Base
  belongs_to :agent
  belongs_to :movie
end
