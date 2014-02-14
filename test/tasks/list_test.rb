require 'test_helper'

class ListTest < RakeTaskTest

  def test_task_name_is_experiments_list
    assert_equal 'experiments:list', task_name
  end

  def test_task_lists_all_experiments
    stdout, stderr = capture_io do
      task.invoke
    end

    puts stdout
    puts stderr
  end
end
