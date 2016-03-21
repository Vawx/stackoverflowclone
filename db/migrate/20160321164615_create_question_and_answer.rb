class CreateQuestionAndAnswer < ActiveRecord::Migration
  def change
    create_table :question do |t|
      t.column :content, :string
      t.column :owner, :string
      t.column :votes, :integer
      t.column :views, :integer
      t.column :tags, :string

      t.timestamps
    end
    create_table :answer do |t|
      t.column :content, :string
      t.column :owner, :string
      t.column :question_id, :integer
      t.column :votes, :integer

      t.timestamps
    end
  end
end
