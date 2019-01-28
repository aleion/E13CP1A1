class SalesController < ApplicationController
    def index
        @sales = Sale.all
    
    
    end

    def new
        @sale = Sale.new
    end

    def create
        @sale = Sale.new(sale_params)
        @sale.total = sale_params[:value].to_i - sale_params[:discount].to_i
        @sale.save
        redirect_to sales_path
    
    end

   

    private
    def sale_params
        params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax, :total)
    end
end