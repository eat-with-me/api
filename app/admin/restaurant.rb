ActiveAdmin.register Restaurant do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form do |f|
    f.inputs 'Szczegóły' do
      f.input :name
      f.input :phone_number
      f.input :shipping_cost
    end
    f.inputs 'Posiłki' do
      f.has_many :meals, heading: '', allow_destroy: false, new_record: "Dodaj posiłek" do |a|
        a.input :name
        a.input :meal_type
        a.input :price
      end
    end
    # f.inputs do
    #   f.has_many :taggings, sortable: :position, sortable_start: 1 do |t|
    #     t.input :tag
    #   end
    # end
    # f.inputs do
    #   f.has_many :comment, new_record: 'Leave Comment' do |b|
    #     b.input :body
    #   end
    # end
    f.actions
  end

  permit_params :name, :phone_number, :shipping_cost,
                meals_attributes: [:name, :meal_type_id, :price]

  show do
    attributes_table do
      row :name
      row :phone_number
      row :shipping_cost
    end

    panel 'Meals' do
      table_for restaurant.meals do
        column :name
        column :price
        column :meal_type
      end
    end
  end
end
