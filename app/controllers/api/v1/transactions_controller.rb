class Api::V1::TransactionsController < ApplicationController
  before_action :find_transaction, only: [:show, :delete]

  def index
    render json: { transaction: Transaction.all }
  end

  def show
    render json: @transaction
  end

  def create
    @transaction = Transaction.create(transaction_params)
    render json: {budget: @transaction}
  end

  def new
    @transaction = Transaction.create
  end

  def update
    @transaction.update(budget_category_params)
    if @transaction.save
      render json: @transaction, status: :accepted
    else
      render json: { errors: @transaction.errors.full_messages },  status: :unprocessible_entity
    end
  end

  def delete
    @transaction.delete
  end



  private

  def transaction_params
    params.permit(:budget_id, :title, :value)
  end

  def find_budget_category
    @transaction = Transaction.find(params[:id])
  end



end
