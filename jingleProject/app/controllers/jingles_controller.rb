class JinglesController < ApplicationController
before_action :set_all_jingles

  def home
    @jin_all = Jingle.all
  end

  def about
    @about_info = Info.first
  end

  def jingles
    @jingles = Jingle.order("name").page(params[:page]).per(2)
    @newest_jingles = Jingle.limit(3).reverse_order
    @onsale_jingles = Jingle.where('price < 250')
    #@all_jingles    = Jingle.all
    @jin_genre      = Genre.all
  end

  def contact
    @our_info = Info.first
  end

  def showbycategory
    @jiny = Genre.first
    @jin_genre = Genre.find(params[:id])
  end

  def search_results
      results = '%' + params[:keyword] + "%"
      @found_jingle = Jingle.where("name LIKE ? OR description LIKE ?", results, results)
      @found_genre = Genre.where("name LIKE ?", results)
  end

  def set_all_jingles
    @all_jingles = Jingle.all
  end
end
