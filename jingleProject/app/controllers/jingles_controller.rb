
class JinglesController < ApplicationController
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
    @all_jingles    = Jingle.all
    @jin_genre      = Genre.all
  end

  def contact
    @our_info = Info.first
  end
end
