module Api
    class WishilistsController < ApplicationController
      protect_from_forgery with: :null_session
      # CRUD criar e delete
      def create
        wishilist = Wishilist.create!(wishilist_params)

        respond_to do |format|
          format.json do
            render json: wishilist.to_json, status: :ok
          end
        end
      end

      def destroy
        wishilist = Wishilist.find(params[:id])
        wishilist.destroy

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