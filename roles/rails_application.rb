name "rails_application"
description "rails_application"
run_list(
  "recipe[git]",
  "role[ruby]",
)
default_attributes({
  "rbenv" => {
    "gems" => {
      "2.1.1" => [
        { "name" => "rails",   "version" => "4.1.0" },
        { "name" => "unicorn", "version" => "4.8.2"  }
      ]
    }
  },
})
