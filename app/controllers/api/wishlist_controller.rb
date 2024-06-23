module Api
    class WishlistsController < ApplicationController
      protect_from_forgery with: :null_session
      # CRUD criar e delete
      def create
        wishlist = Wishilist.create!(wishlist_params)

        respond_to do |format|
          format.json do
            render json: wishlist.to_json, status: :ok
          end
        end
      end

      def destroy
        wishlist = Wishilist.find(params[:id])
        wishlist.destroy

        respond_to do |format|
          format.json do
            render status: 204
          end
        end        
      end   

      private

      def wishilist_params
        params.permit(:user_id, :property_id)
      end   
    end
end 