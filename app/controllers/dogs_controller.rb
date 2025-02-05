class DogsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dog, only: [:edit, :update, :destroy]  # 👈 `show` を削除！

  def new
    @dog = Dog.new
  end

  def create
    @dog = current_user.dogs.build(dog_params)
    if @dog.save
      redirect_to user_path(current_user), notice: "ワンちゃんの情報を登録しました！"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dog.update(dog_params)
      redirect_to user_path(current_user), notice: "ワンちゃんの情報を更新しました！"
    else
      render :edit, status: :unprocessable_entity
    end
  end  

  def destroy
    @dog.destroy
    redirect_to user_path(current_user), notice: "ワンちゃんの情報を削除しました！", status: :see_other
  end
  
  

  private

  def set_dog
    @dog = current_user.dogs.find(params[:id])  # 👈 自分の犬だけ編集・削除できる！
  end

  def dog_params
    params.require(:dog).permit(:name, :breed_id, :birthdate, :gender, :personality, :image)
  end
end
