#~/.irbrc
#load File.expand_path(File.join(File.dirname(__FILE__), 'dotfiles', '.irbrc'))

require 'irb/completion'
require 'rubygems'
require 'pp'
require 'active_support'

IRB.conf[:SAVE_HISTORY] = 100000
