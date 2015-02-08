#!/usr/bin/env ruby

require_relative '../config/application'
require_relative '../config/boot'
require 'json'

Rails.application.initialize!

data = JSON.parse(ARGV[2])

Movie.create(
  name: data["media"]["title"],
  path: data["destination_dir"],
  imdb: data["media"]["info"]["imdb"],
)
