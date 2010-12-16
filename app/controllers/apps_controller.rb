class AppsController < ApplicationController
  before_filter :load_app

  def show
    respond_to do |format|
      format.js do
        render :template => "homes/show.js.erb"
      end
      format.html do
        render :template => "homes/show.js.erb"
      end
    end
  end

  def load_app
    app_id = params[:app_id]
    @app = App.find_by_param!(app_id)
  end
end
