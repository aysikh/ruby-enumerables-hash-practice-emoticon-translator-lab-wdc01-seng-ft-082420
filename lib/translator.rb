# require modules here
require "yaml"
require 'pry'

def load_library(emoticon_files)
  emoticons = YAML.load_file(emoticon_files)
  emoticon_hash = Hash.new
  emoticons.each do |meaning, emoticon_array|
    emoticon_hash[meaning] = {}
    emoticon_hash[meaning][:english] = emoticon_array[0]
    emoticon_hash[meaning][:japanese] = emoticon_array[1]
  end
  emoticon_hash
end


 def get_english_meaning(emoticon_files, emoticon) #emoticon_files gives me the file, emoticon gives me the single emoji
  # binding.pry
  meaning_hash = Hash.new
  emoticon = load_library(emoticon_files)

    binding.pry
    # puts meaning
    # binding.pry
  # meaning_hash[meaning]
  # binding.pry
  #  emoticon_hash
   meaning_hash
end

 # def get_japanese_emoticon(emoticon_files, emoticon) #empty hash
 #   japanese_emoticons = []
 #   japanese_emoticons << emoticon
 # end
