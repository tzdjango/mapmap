class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string    :username
      t.string    :email
      t.boolean   :active
      t.integer   :logincount
      t.timestamp :confirmedat
      t.timestamp :lastlogin
      t.timestamps
    end
  end
end
