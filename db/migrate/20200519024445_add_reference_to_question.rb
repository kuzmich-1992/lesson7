class AddReferenceToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_reference :questions, :assessment, index: true
  end
end
