class WelcomeController < ApplicationController
  def index
    flash[:notice] = "又想来点精神食(Ya)粮(Pian)？欢迎！❤️"
  end
end
