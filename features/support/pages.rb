class Pages
  def page_home
    @page_home ||= HomePage.new
    @page_home
  end

  def page_project
    @page_project ||= ProjectPage.new
    @page_project
  end
end