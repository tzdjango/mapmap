class CreateRole < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :user_id
      t.text    :name
      t.text    :description
    end
  end
end
