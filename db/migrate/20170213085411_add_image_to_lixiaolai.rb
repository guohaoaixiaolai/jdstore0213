class AddImageToLixiaolai < ActiveRecord::Migration[5.0]
  def change
    add_column :lixiaolais, :image, :string
  end
end
