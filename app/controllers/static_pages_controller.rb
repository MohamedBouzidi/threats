class StaticPagesController < ApplicationController
  def index
    @attacks = Attack.all.take(6)
  end

  def reports
  end

  def analytics
  end
end
