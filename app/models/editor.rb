class Editor
  include Mongoid::Document
  
  field :filename, type: String
  field :data, type: String
  validates_presence_of :filename
  validates_uniqueness_of :filename
end
