class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps null: false
    end

    add_column :posts, :author_id, :integer
  end
end
