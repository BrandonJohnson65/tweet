class CreateSpeaks < ActiveRecord::Migration[5.2]
  def change
    create_table :speaks do |t|
      t.text :speak

      t.timestamps
    end
  end
end
