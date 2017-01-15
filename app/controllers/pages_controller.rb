class PagesController < ApplicationController
  def home
    @juices = Juice.where(best: true)
  end
end
