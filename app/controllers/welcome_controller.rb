class WelcomeController < ApplicationController
  before_filter :check_authorization, :except => :index
  after_filter :clean_up_response

  def index
    cookies[:abcd] = "1"
    session[:abc] = "2"
  end

  def about
    @cookieabc = request.remote_ip.inspect
    @sessionabc = request.headers.inspect
    @developer_count = 1
    @url_count = Url.count
  end

  protected

  def check_authorization
    unless request.get?
      redirect_to namegame_index_path
    end
  end

  def clean_up_response
    response.body = response.body.gsub('u', 'U')
  end
end
