class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :original_content

      t.timestamps
    end
  end
end
