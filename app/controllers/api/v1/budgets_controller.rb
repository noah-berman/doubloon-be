class Api::V1::BudgetsController < ApplicationController
  before_action :find_budget, only: [:show, :delete]

  def index
    render json: { budget: Budget.all }
  end

  def show
    render json: @budget
  end

  def show_all_transactions
    @budget = Budget.find(params[:id])
    render json: @budget.transactions
  end

  def create
    @budget = Budget.create(budget_params)
    render json: {budget: @budget}
  end

  def new
    @budget = Budget.create
  end

  def update
    @budget.update(budget_params)
    if @budget.save
      render json: @budget, status: :accepted
    else
      render json: { errors: @budget.errors.full_messages },  status: :unprocessible_entity
    end
  end

  def delete
    @budget.delete
  end



  private

  def budget_params
    params.permit(:user_id, :title, :value, :period_in_days)
  end

  def find_budget
    @budget = Budget.find(params[:id])
  end



end
