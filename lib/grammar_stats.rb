class GrammarStats
    def initialize
        @stats = Hash.new
        @stats["total"] = 0
        @stats["correct"] = 0
        puts @stats
    end

    def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
        #p text[0]
        @stats["total"] += 1
        if text == "" || text == " "
            return "Text is empty, please insert your text."
        elsif ((text[0] =~ (/[A-Z]/)) && (text[-1] =~ (/[!?.]/)))
            #p "ENTRO TRUE"
            @stats["correct"] += 1
            return true
        else
            return false
        end
    end

    def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
        #p "Percentage of grammaticaly correct texts: " + ((((@stats["correct"].to_f/@stats["total"].to_f)) * 100).to_i).to_s + "%"
        #p @stats["correct"]
        #p @stats["total"]
        #p (@stats["correct"].to_f/@stats["total"].to_f) * 100
        #p (((@stats["correct"].to_f/@stats["total"].to_f)) * 100).to_i
        return ((@stats["correct"].to_f/@stats["total"].to_f)*100).to_i
    end
end


