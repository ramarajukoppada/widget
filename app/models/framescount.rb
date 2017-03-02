class Framescount
  include Mongoid::Document
  field :no_of_frames, type: Integer
  field :width, type: String
end
