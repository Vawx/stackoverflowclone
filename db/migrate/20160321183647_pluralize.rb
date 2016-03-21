class Pluralize < ActiveRecord::Migration
  def change
    drop_table :answer
    drop_table :question

    create_table :questions do |t|
      t.column :content, :string
      t.column :owner, :string
      t.column :votes, :integer
      t.column :views, :integer
      t.column :tags, :string

      t.timestamps
    end
    create_table :answers do |t|
      t.column :content, :string
      t.column :owner, :string
      t.column :question_id, :integer
      t.column :votes, :integer

      t.timestamps
    end
  end
end
