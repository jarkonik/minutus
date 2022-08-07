require 'erb'

types = %w[
  state
  aspec
  value
  int
  uint
  float
  bool
]

type_c = ERB.new(<<~TEMPLATE).result
<% types.each do |type| %>
typedef mrb_<%= type %> minu_<%= type %> ;
<% end %>
TEMPLATE

puts type_c