class Api::V1::TransactionsController < ApplicationController
  before_action :find_transaction, only: [:show, :delete, :update]

  def index
    render json: { transaction: Transaction.all }
  end

  def show
    render json: @transaction
  end

  def create
    @transaction = Transaction.create(transaction_params)
    render json: {transaction: @transaction}
  end

  def new
    @transaction = Transaction.create
  end

  def update
    @transaction.update(transaction_params)
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
    params.permit(:budget_id, :budget_category_id, :description, :title, :value)
  end

  def find_transaction
    @transaction = Transaction.find(params[:id])
  end



end
