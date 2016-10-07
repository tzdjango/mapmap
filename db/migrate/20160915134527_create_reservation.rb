class CreateReservation < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer    :repairshop_id
      t.integer    :repairshopproduct_id
      t.integer    :clientauth_id
      t.timestamp  :starttime
      t.timestamp  :endtime
      t.text       :regnum
      t.integer    :client_id
      t.text       :message
      t.text       :imagelink
      t.text       :username
      t.text       :usertel
      t.text       :useremail
      t.text       :statusrepairshop
      t.text       :statusclient
      t.timestamps
    end
  end
end
