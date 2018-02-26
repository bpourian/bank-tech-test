require_relative 'balance'

@columns = col_labels.each_with_object({}) { |(col,label),h|
  h[col] = { label: label,
             width: [arr.map { |g| g[col].size }.max, label.size].max } }
  # => {:date=>    {:label=>"Date",    :width=>10},
  #     :from=>    {:label=>"From",    :width=>7},
  #     :subject=> {:label=>"Subject", :width=>22}}

def write_header
  puts "| #{ @columns.map { |_,g| g[:label].ljust(g[:width]) }.join(' | ') } |"
end

def write_divider
  puts "+-#{ @columns.map { |_,g| "-"*g[:width] }.join("-+-") }-+"
end

def write_line(h)
  str = h.keys.map { |k| h[k].ljust(@columns[k][:width]) }.join(" | ")
  puts "| #{str} |"
end
