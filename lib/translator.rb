# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = {{}}
  lib = YAML.load_file(file_path)
  lib.each { | name, versions |
    emoticons[name] = {
      :english => versions[0],
      :japanese => versions[1] if versions.size > 1
    }
  }
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
