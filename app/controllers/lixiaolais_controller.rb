class LixiaolaisController < ApplicationController
  def index
    @lixiaolais = Lixiaolai.all
  end

  def show
    @lixiaolai = Lixiaolai.find(params[:id])
  end
end
