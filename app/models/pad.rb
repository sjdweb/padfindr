class Pad
  include Mongoid::Document
  include Mongoid::Spacial::Document

  field :name, type: String
  field :bedroom_count, type: Integer
  field :location, type: Array, spacial: true

  spacial_index :location

  def nearby
  	Pad.not_in(_id: [id]).where(:bedroom_count.gte => bedroom_count).geo_near(location, :max_distance => 20, unit: :km)
  end

  def map_img
  	"https://maps.googleapis.com/maps/api/staticmap?zoom=12&size=500x400&markers=#{location[:lat]},#{location[:lng]}&sensor=false"
  end
end
