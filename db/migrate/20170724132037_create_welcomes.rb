class CreateWelcomes < ActiveRecord::Migration[5.0]
  def change
    create_table :welcomes do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
