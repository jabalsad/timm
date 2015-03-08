class Movie < ActiveRecord::Base
  has_many :downloads
end
