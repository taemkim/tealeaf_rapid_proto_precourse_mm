class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.string :title
      t.text :text

      t.timestamps
    end

  end
end
