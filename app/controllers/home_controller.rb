class HomeController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @user = @q.result.limit(25)
  end
end
