module ThreadRunner
  def ThreadRunner.run
    # `export FORMAT="html" ; export REPORT_PATH="report"`

    `export FORMAT="html" ; export REPORT_PATH="report/" ; parallel_cucumber features -n 2 -o "HOST='https://apimation.com' REPORT_PATH='report/' -p ci"`
  end
end
