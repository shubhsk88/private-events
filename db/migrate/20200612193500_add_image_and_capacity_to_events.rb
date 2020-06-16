class AddImageAndCapacityToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :image_link, :string,default:"https://images.unsplash.com/photo-1531058020387-3be344556be6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
    add_column :events, :capacity, :integer,default:1
  end
end
