class Admin::RolesController < Admin::AdminController
	before_filter :find_role, :only => [:show, :edit, :update, :destroy]
	
	ROLES_PER_PAGE = 20
	
	def create
		@role = Role.new([arams[:role])
		respond_to do |format|
			if @role.save
				flash[:notice] = 'Role was created successfully.'
				format.html { redirect_to admin_role_url(@role) }
				format.xml { render :xml => @role, :status => :created, :location => @role}
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @role.errors, :status => :unprocessable_entity }
			end
		end
	end
	
	
	
	def index
	
	end
	
	protected
		def permission_denied
		flash[:error] = "You do not have access to #{request.path}."
		respond_to do |format|
			format.html { redirect_to admin_root_url }
			format.xml { head :unauthorized }
			format.js { head :unauthorized }
		end
	end
	
end