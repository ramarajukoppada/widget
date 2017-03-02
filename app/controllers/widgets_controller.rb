class WidgetsController < ApplicationController
    layout 'application'
    def update_widget
      @widget =    Widget.create(widget_params)
    end

    def delete
      @widget = Widget.find_by(:div_id =>params[:div_id], :file_id => params[:file_id])
      @widget.destroy
    end
  
    private

      def widget_params
        params.require(:widget).permit(:div_id, :file_id)
      end
end
