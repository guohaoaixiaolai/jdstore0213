class Admin::LixiaolaisController < ApplicationController
before_action :authenticate_user!
before_action :admin_required
layout "admin"

  def index
    @lixiaolais = Lixiaolai.all
  end

  def new
    @lixiaolai = Lixiaolai.new
  end

  def create
    @lixiaolai = Lixiaolai.new(lixiaolai_params)

    if @lixiaolai.save
      redirect_to admin_lixiaolais_path
    else
      render :new
    end
  end


def edit
  @lixiaolai = Lixiaolai.find(params[:id])
end

def update
  @lixiaolai = Lixiaolai.find(params[:id])
if @lixiaolai.update(lixiaolai_params)
  redirect_to admin_lixiaolais_path
else
  render :edit
end
end


def show
  @lixiaolai =Lixiaolai.find(params[:id])
end

private

def lixiaolai_params
  params.require(:lixiaolai).permit(:title, :description, :quantity, :price, :image)
end

end
