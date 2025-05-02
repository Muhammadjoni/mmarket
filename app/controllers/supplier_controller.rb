class SupplierController < ApplicationController
    def create
        @supplier = Supplier.new(supplier_params)

      end
end
