class EmprestimoController < ApplicationController
    before_action :set_product, :set_user

    def create
      @user, @product = Emprestimo.new(user_params, product_params)

      respond_to do |format|
        if @product.save
          format.html { redirect_to @product, notice: 'Emprestimo was successfully created.' }
          format.json { render :show, status: :created, location: @product }
        else
          format.html { render :new }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :url, :description)
    end

end