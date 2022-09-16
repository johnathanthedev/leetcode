# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs == [] # return empty string if array is empty
    common_pre = "" # empty common
    short_str = (strs.sort!).delete_at(0) # sort by length then get and delete first word of array
    short_str.each_char do |c| # Iterate through each char of shortest word
         strs.each do |str| # Iterate through supplied array of strings
            if(str.start_with?(common_pre + c)) # Check if current string starts with the common prefix + current shortest word's character
                next # If true then proceed
            else
                return common_pre # If false return common_pre
            end
         end
        common_pre += c # return common prefix plus the added character
    end
end

longest_common_prefix(["flower","flow","flight"])
