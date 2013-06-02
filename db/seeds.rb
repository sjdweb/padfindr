# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Pad.create(:name => "Sizeable house", :bedroom_count => 2, :location => [-0.142000, 51.501000])
Pad.create(:name => "Trendy flat", :bedroom_count => 2, :location => [-0.205500, 51.523778])
Pad.create(:name => "Flat with stunning view", :bedroom_count => 2, :location => [-0.086667, 51.504444])
Pad.create(:name => "Unique flat", :bedroom_count => 1, :location => [-0.013333, 51.538333])
