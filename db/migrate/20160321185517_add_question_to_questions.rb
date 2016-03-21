class AddQuestionToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.column :question, :string
    end
  end
end
