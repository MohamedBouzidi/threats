class StaticPagesController < ApplicationController

  def index
    if params[:id]
      @attacks = Attack.where('id < ?', params[:id]).limit(5)
    else
      @attacks = Attack.limit(5)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def reports
  end

  def analytics
  end
end
