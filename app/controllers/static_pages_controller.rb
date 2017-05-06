require 'csv'
require 'net/http'
require 'active_support/all'

class StaticPagesController < ApplicationController
  before_action :find_articles, only: [:news, :show_article]
  before_action :find_other_articles, only: [:news, :show_article]

  # def index
  #   @data = CSV.read("/home/bouzidi/Downloads/db123.csv")
  #   @columns = @data[0]
  #   @data.delete(@data[0])
  #   @rows = @data
  # end

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
    if params[:id]
      @threats = Threat.where('id < ?', params[:id]).limit(5)
    else
      @threats = Threat.limit(15)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def analytics
  end

  def news
  end

  def show_article
    if (params[:type] == 'article')
      @article = @items[params[:id].to_i]
    elsif (params[:type] == 'threatpost')
      @article = @threatposts[params[:id].to_i]
    end
  end

  private

    def find_articles
      @xml_content = Net::HTTP.get(URI.parse('http://extratorrent.cc/rss.xml?type=articles'))
      @data = Hash.from_xml(@xml_content)
      @items = @data["rss"]["channel"]["item"]
    end

    def find_other_articles
      @xml_content = Net::HTTP.get(URI.parse('https://threatpost.com/category/cloud-security/feed/'))
      @data = Hash.from_xml(@xml_content)
      @threatposts = @data["rss"]["channel"]["item"]
    end
end
