class GuitarController < ApplicationController
	def index
		@guitar = Guitar.new
	end	

	def create
		@newGuitar = Guitar.new(guitar_params) 
		@guitar_accessory = GuitarAccessory.new
		if params[:typeName] == "Acoustic"
			@guitar_accessory.guitarPick = "Wooden"
		else
		   	@guitar_accessory.guitarPick = "Plastic"
		end
		@newGuitar.guitar_accessory = @guitar_accessory
		@guitar_transaction = GuitarTransaction.new
		@guitar_transaction.buyDate = Date.today
		@newGuitar.guitar_transaction = @guitar_transaction   	
        @newGuitar.save
        redirect_to @newGuitar
	end

	def sellGuitar
		puts "Checking params inside sellGuitar ----- #{params.inspect}"
		guitar = Guitar.find(params[:id])	
		@guitar_transaction = guitar.guitar_transaction
		@guitar_accessory = guitar.guitar_accessory
		@guitar_transaction.sellDate = Date.today
		@guitar_accessory.strapType = params[:strapType]
		@guitar_transaction.save
		@guitar_accessory.save
		render :partial => "guitar/sold_guitar_template"
	end	

	def show
		@guitars = Guitar.all.order("created_at DESC")
	end
	
    private
	  def guitar_params
	    params.require(:guitar).permit(:brandName, :modelName, :typeName, :stringsNo, :price, :serial)
	  end

end
