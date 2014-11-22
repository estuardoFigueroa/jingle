class JinglesController < ApplicationController
  def home
    @jinAll = Jingle.all
  end

  def about
  end

  def jingles
    @jingles = Jingle.all
    @newestJingles = Jingle.limit(3).reverse_order
    @onsaleJingles = Jingle.where("price < 250")
    @allJingles    = Jingle.all
    @jinGenre      = Genre.all
  end
end
