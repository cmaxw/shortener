class NamegameController < ApplicationController
  def index
    @name = params['name']
  end
end
