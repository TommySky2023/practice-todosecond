class CreateAdduserids < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :user
  end
end
