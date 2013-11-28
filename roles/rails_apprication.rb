name "rails_application"
description "rails_application"
run_list(
  "recipe[git]",
  "role[ruby]",
)
default_attributes({
  "rbenv" => {
    "gems" => {
      "1.9.3-p392" => [
        { "name" => "rails",   "version" => "4.0.1" },
        { "name" => "unicorn", "version" => "4.6.2"  }
      ]
    }
  },
})
