class CreateGrups < ActiveRecord::Migration[6.1]
  def change
    create_table :grups do |t|
      t.string :title
      t.string :links
      t.string :description

      t.timestamps
    end
  end
end
