class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable, :confirmable and :activatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  def create
    #ずっとidを読み込めなかった理由は,permitで読み込んでいなかったから
    attr = params.require(:user).permit(:id,:name, :email)
    @user = User.new(attr)
  end
   has_one :event
end
