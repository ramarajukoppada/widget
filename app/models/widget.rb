class Widget
  include Mongoid::Document
  field :div_id, type: Integer
  field :file_id, type: String
  field :width, type: Integer
end
