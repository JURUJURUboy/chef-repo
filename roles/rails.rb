name "redmine"
description "Redmine"
run_list(
  "role[ruby]",
  "recipe[redmine]"
)
default_attributes({
  "rbenv" => {
    "gems" => {
      "1.9.3-p392" => [
        { "name" => "rails",   "version" => "3.2.13" },
      ]
    }
  }
})
