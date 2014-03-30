name "rails_application"
description "rails_application"
run_list(
  "recipe[git]",
  "role[ruby]",
)
default_attributes({
  "rbenv" => {
    "gems" => {
      "2.0.0-p451" => [
        { "name" => "rails",   "version" => "4.0.1" },
        { "name" => "unicorn", "version" => "4.6.2"  }
      ]
    }
  },
})
