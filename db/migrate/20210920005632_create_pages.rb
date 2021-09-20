class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.belongs_to :subject, null: false, foreign_key: true
      t.string :name
      t.string :permalink
      t.integer :position
      t.boolean :visible
      t.text :context

      t.timestamps
    end
  end
end
