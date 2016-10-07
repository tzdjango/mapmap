class CreateMetamessage < ActiveRecord::Migration
  def change
    create_table :metamessages do |t|
      t.integer     :client_id
      t.integer     :direction
      t.text        :uuid
      t.text        :veh_vincode
      t.timestamps      
    end
  end
end
