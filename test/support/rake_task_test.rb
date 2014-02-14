class RakeTaskTest < Minitest::Test
  def setup
    setup_rake
    load_experiments
  end

  def task
    Rake::Task[task_name]
  end

  def task_name
    "experiments:#{self.class.name.downcase.sub(/test\z/, '')}"
  end

  private

  def setup_rake
    Rake::Task.define_task(:environment)
    load 'verdict/tasks.rake'
  end

  def load_experiments
    Verdict.directory = File.expand_path('experiments', __FILE__)
    Verdict.repository.clear
  end
end
