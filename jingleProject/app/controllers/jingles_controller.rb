class JinglesController < ApplicationController
  def home
    @jingles = Jingle.all
  end
end
