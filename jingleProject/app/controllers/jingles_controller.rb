class JinglesController < ApplicationController
  def home
    @jingles = Jingle.all
  end

  def about
  end

  def jingles
    @newestJingles = Jingle.limit(3).reverse_order
    @onsaleJingles = Jingle.where("price < 250")
  end
end
