class FramescountsController < ApplicationController
  layout 'application'
  def new
    @frame = Framescount.new
  end

   def create
     Framescount.destroy_all
     Widget.destroy_all
     @count = (params[:framescount][:no_of_frames]).to_i
     @width = 100/@count
     @frame = Framescount.create(:no_of_frames => @count, :width => @width)
  end

end
