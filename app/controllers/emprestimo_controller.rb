class EmprestimoController < ApplicationController

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
end
