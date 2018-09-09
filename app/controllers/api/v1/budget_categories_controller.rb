class Api::V1::BudgetCategoriesController < ApplicationController
  before_action :find_budget_category, only: [:show, :delete]

  def index
    render json: { budget_category: BudgetCategory.all }
  end

  def show
    render json: @budget_category
  end

  def create
    @budget_category = BudgetCategory.create(budget_category_params)
    render json: {budget: @budget_category}
  end

  def new
    @budget_category = BudgetCategory.create
  end

  def update
    @budget_category.update(budget_category_params)
    if @budget_category.save
      render json: @budget_category, status: :accepted
    else
      render json: { errors: @budget_category.errors.full_messages },  status: :unprocessible_entity
    end
  end

  def delete
    @budget_category.delete
  end



  private

  def budget_category_params
    params.permit(:budget_id, :title, :value)
  end

  def find_budget_category
    @budget_category = BudgetCategory.find(params[:id])
  end



end
