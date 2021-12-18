class UpdateForeignKey < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :images, :artists

    add_foreign_key :images, :artists, on_delete: :cascade
  end
end
