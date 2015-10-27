class AddProfileToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :profile, :text
  end
end
