module Spina
  module Admin
    module Products
      class ProductCategoriesController < AdminController
        load_and_authorize_resource class: "Spina::ProductCategory"

        before_action :set_breadcrumbs

        def index
        end

        def show
          add_breadcrumb @product_category.name
        end

        private

          def set_breadcrumbs
            add_breadcrumb "Categorieën", spina.admin_product_categories_path
          end
      end
    end
  end
end