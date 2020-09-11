# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  hash = {}
  lib = YAML.load_file(file_path)
  lib.each { | name, versions |
    hash[name] = {
      :english => versions[0],
      :japanese => versions[1]
    }
  }
  hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  emoticons[emoticon][:japanese]
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticons = load_library(file_path)
  emoticons[emoticon][:english]
end
