class BlogAccountsController < ApplicationController
  # GET /blog_accounts
  # GET /blog_accounts.xml
  def index
    @blog_accounts = BlogAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blog_accounts }
    end
  end

  # GET /blog_accounts/1
  # GET /blog_accounts/1.xml
  def show
    @blog_account = BlogAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blog_account }
    end
  end

  # GET /blog_accounts/new
  # GET /blog_accounts/new.xml
  def new
    @blog_account = BlogAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog_account }
    end
  end

  # GET /blog_accounts/1/edit
  def edit
    @blog_account = BlogAccount.find(params[:id])
  end

  # POST /blog_accounts
  # POST /blog_accounts.xml
  def create
    @blog_account = BlogAccount.new(params[:blog_account])

    respond_to do |format|
      if @blog_account.save
        format.html { redirect_to(@blog_account, :notice => 'BlogAccount was successfully created.') }
        format.xml  { render :xml => @blog_account, :status => :created, :location => @blog_account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blog_accounts/1
  # PUT /blog_accounts/1.xml
  def update
    @blog_account = BlogAccount.find(params[:id])

    respond_to do |format|
      if @blog_account.update_attributes(params[:blog_account])
        format.html { redirect_to(@blog_account, :notice => 'BlogAccount was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_accounts/1
  # DELETE /blog_accounts/1.xml
  def destroy
    @blog_account = BlogAccount.find(params[:id])
    @blog_account.destroy

    respond_to do |format|
      format.html { redirect_to(blog_accounts_url) }
      format.xml  { head :ok }
    end
  end
end
