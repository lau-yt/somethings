class CreateQuestionTags < ActiveRecord::Migration[5.1]
  def change
  	create_table :questions_tags, id: false do |t|
    	t.belongs_to :tag, index: true
    	t.belongs_to :question, index: true
    end
  end
end
