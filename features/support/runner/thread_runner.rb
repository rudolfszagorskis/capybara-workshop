module ThreadRunner
  def ThreadRunner.run(option)
     `export FORMAT=#{option['format']} ; export REPORT_PATH=#{option['path']} ; parallel_cucumber features -n #{option['threads']} -o "HOST=#{option['host']} REPORT_PATH='#{option['path']}' -p ci"`

  end
end
