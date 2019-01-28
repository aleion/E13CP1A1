class SalesController < ApplicationController
    def index
        @sales = Sale.all
    end

    def new
        @sale = Sale.new
    end

    def create
        @sale = Sale.new(sale_params)
        discount
        @sale.save
        redirect_to sales_path
    end

    def discount
       sale_params[:total] - sale_params[:value] - sale_params[:discount]
    end

    def tax
    end

    private
    def sale_params
        params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax, :total)
    end
end