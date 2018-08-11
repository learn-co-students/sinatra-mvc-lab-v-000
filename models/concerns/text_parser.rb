module TextParser
    module InstanceMethods

        @maintain_case = false

        def maintain_case
            @maintain_case = true
        end

        def downcase_all
            @maintain_case = false
        end

        def clean_text(text=nil)
            text = @text if text.nil?
            text.downcase.gsub(/[^A-Za-z ]/,"")
        end

        def clean_text_maintain_case(text=nil)
            text = @text if text.nil?
            text.gsub(/[^A-Za-z ]/, "")
        end

        def word_list
            @maintain_case ? clean_text_maintain_case.split(" ") : clean_text.split(" ")
        end

        def word_count
            word_list.count
        end

        #save punctuation location by {punc_string => [word_num, char_num]}
        #currently not compatible with - 
        def punc_location(text=nil)
            text = @text if text.nil?
            text = text.gsub("-", "")
            words = text.split(" ")
            punc = Set.new(['!', '.', '?', ',', '"', "'", ':', ';', '(', ')'])
            punc_map = {}
            words.each.with_index do |word, index|
                letters = word.split('')

                letters.each.with_index do |c, i|
                    punc_map[c] = [index, i] if punc.include?(c)
                end
            end
            punc_map
        end


    end
end