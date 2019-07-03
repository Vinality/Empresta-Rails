class CreateLends < ActiveRecord::Migration[5.2]
  def change
    create_table :emprestimos do |t|
      t.references :user, foreign_key: true
      t.references :products, foreign_key: true
      t.timestamps
    end
  end
end
