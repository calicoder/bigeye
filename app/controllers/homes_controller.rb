class HomesController < ApplicationController
  def show
    Rails.logger.error("bbb"*100)
    respond_to do |format|
      Rails.logger.error("aaaa"*100)
      format.js do
        render :template => "homes/show.js.erb"
      end
      format.html do
        render :template => "homes/show.js.erb"
      end
    end
  end
end
