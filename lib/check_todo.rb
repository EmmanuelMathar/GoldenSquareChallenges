def check_todo(str)

    
    if str.split().length == 0
        fail "No text given"
    elsif str.include?('TODO')
        return "Don't forget #{str}"
    else str.include?("TODO") == false
        return "There are no tasks to worry about"
    end

end