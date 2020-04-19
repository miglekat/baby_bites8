class StaticPagesController < ApplicationController
  def home
   @categories = Category.all
   @menus = Menu.all
  end

  def help
    
  end

  def about
      
      def aboutSend
    @order = Order.find(params[:id])
    @order.update_attribute(:status, "Paid with Paypal")
  end
  
  end
 
  
def category
    catName = params[:title]
    @menus = Menu.where("category like ? ", catName)
end

  
  
  def paid
    # redirect_to "/cart/clear"
    flash[:notice] = 'Transaction Complete'
    @order = Order.last
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    end


def upgrade_admin
        @user.update_attribute(:adminrole, true)
        redirect_to :action => :admin_users
 end
    
def downgrade_admin
       @user.update_attribute(:adminrole, false)
         redirect_to :action => :admin_users
end    



end
