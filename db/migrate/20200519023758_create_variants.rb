class CreateVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
    t.string :text
    t.integer :value	
    t.belongs_to :question
    t.timestamps
    end
  end
end
