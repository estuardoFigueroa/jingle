
class JinglesController < ApplicationController
  def home
    @jin_all = Jingle.all
  end

  def about
  end

  def jingles
    @jingles = Jingle.all.order(:name)
    @newest_jingles = Jingle.limit(3).reverse_order
    @onsale_jingles = Jingle.where('price < 250')
    @all_jingles    = Jingle.all
    @jin_genre      = Genre.all
  end

  def contact
  end
end
