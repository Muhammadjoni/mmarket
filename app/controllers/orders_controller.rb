class OrdersController < ApplicationController
    before_action :set_bathroom, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
        @bathrooms = policy_scope(Bathroom).order(created_at: :asc)
    
        if params[:query].present?
          # sql_query = " \
          #   movies.title @@ :query \
          #   OR movies.syllabus @@ :query \
          #   OR directors.first_name @@ :query \
          #   OR directors.last_name @@ :query \
          # "
          @bathrooms = Bathroom.search(params[:query])
        else
          @bathrooms = Bathroom.all
        end
    
        # @markers = @bathrooms.map do |bathroom|
        #   {
        #     ltd: bathroom.latitude,
        #     lng: bathroom.longitude,
        #     info_window: render_to_string(partial: "info_window", locals: { bathroom: bathroom })
        #     # image_url: helpers.asset_url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpg6GFI89o13-OgRqluG6HwghoFoLTHomjSA&usqp=CAU')
        #   }
        # end
    
    end
    
end
