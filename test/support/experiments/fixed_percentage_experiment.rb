Verdict::Experiment.define :fixed_percentage_experiment do
  name "Fixed Percentage Experiment"
  description "A fixed percentage experiment"

  groups do
    group :control, 50
    group :enhanced, 50
  end
end
