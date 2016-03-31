class CreateCustodies < ActiveRecord::Migration
  def change
    create_table :custodies do |t|

      t.timestamps null: false
    end
  end
end
