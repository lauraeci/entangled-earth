class AddAttachmentTotemToAccomplishments < ActiveRecord::Migration
  def self.up
    change_table :accomplishments do |t|
      t.attachment :totem
    end
  end

  def self.down
    remove_attachment :accomplishments, :totem
  end
end
