NiftyCup::Football.controllers :team do

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index do
    @teams = Team.all
    jbuilder :'team/team_index'
  end

  post :create do
    params = JSON.parse(require.body.read)
    team = Team.new(name: params['name'])
    team.save!
  end

end
