# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
	paragraph = paragraph.downcase
	stripped_strings_arr = remove_chars(paragraph)
	remove_banned = remove_banned(stripped_strings_arr, banned)
	word_hash = Hash.new(0)
    remove_banned.each do |word|
        word_hash[word] += 1
    end
        
    word_hash.max_by{|k,v| v}[0]
	# remove banned
	# get pop word
end

def remove_chars(paragraph)
  string_arr = paragraph.split(' ')
	special_chars = [',', '.']
	string_arr = string_arr.map do |word|
		if special_chars.include?(word[-1])
			word[0..-2]
		else
			word
		end
	end
end

def remove_banned(stripped_strings_arr, banned)
	remove_banned = stripped_strings_arr - banned
end

p most_common_word("Bob hit a ball, the hit BALL flew far after it was hit.", ['hit'])
