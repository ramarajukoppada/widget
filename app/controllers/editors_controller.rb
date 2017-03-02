class EditorsController < ApplicationController
  layout 'application'
  def index
    @editors = Editor.all
    @widgets = Widget.all
    @frames = Framescount.last
  end

  def new
    @editor = Editor.new
  end

  def create
    @editor = Editor.new(editor_params)
    if @editor.save
      p = File.new("../widgetmong/app/views/editors/_#{params[:editor][:filename]}.html.erb", "w")
      File.write(p, params[:editor][:data] )
    else
      render 'new'
    end
  end 

  private 
   
  def editor_params
    params.require(:editor).permit(:filename)
  end
end
