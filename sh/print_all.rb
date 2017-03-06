#!/usr/bin/env ruby
require "fileutils"
Dir.glob("src/*").each do |f|
  FileUtils.cd(f) do
    content = File.read(".git/config")
    url = content.split("\n").grep(/url/).first
    puts url.split("= ").last
  end
end
