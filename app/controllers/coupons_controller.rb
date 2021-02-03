class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
    end

    def new
        @coupons = Coupon.new
    end

    def edit
    end

    def create
        @coupons = Coupon.new(coupon_params)
    
        respond_to do |format|
          if @coupons.save
            format.html { redirect_to @coupon, notice: "Coupon was successfully created." }
            format.json { render :show, couopon_code: :created, store: @coupon }
          else
            format.html { render :new, couopon_code: :unprocessable_entity }
            format.json { render json: @coupon.errors, status: :unprocessable_entity }
          end
        end
    end

end

# class PetsController < ApplicationController
#     before_action :set_pet, only: %i[ show edit update destroy ]
  
#     # PATCH/PUT /pets/1 or /pets/1.json
#     def update
#       respond_to do |format|
#         if @pet.update(pet_params)
#           format.html { redirect_to @pet, notice: "Pet was successfully updated." }
#           format.json { render :show, status: :ok, location: @pet }
#         else
#           format.html { render :edit, status: :unprocessable_entity }
#           format.json { render json: @pet.errors, status: :unprocessable_entity }
#         end
#       end
#     end
  
#     # DELETE /pets/1 or /pets/1.json
#     def destroy
#       @pet.destroy
#       respond_to do |format|
#         format.html { redirect_to pets_url, notice: "Pet was successfully destroyed." }
#         format.json { head :no_content }
#       end
#     end
  
#     private
#       # Use callbacks to share common setup or constraints between actions.
#       def set_pet
#         @pet = Pet.find(params[:id])
#       end
  
#       # Only allow a list of trusted parameters through.
#       def pet_params
#         params.require(:pet).permit(:name, :species, :year_of_birth, :good_with_kids?)
#       end
#   end
  