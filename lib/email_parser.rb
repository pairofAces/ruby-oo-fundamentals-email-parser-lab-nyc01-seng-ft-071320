# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addesses
    def initialize (email_addesses)
        @email_addesses = email_addesses
    end

    def parse 
        delimiters = [', ', ' ']
        @email_addesses.split(Regexp.union(delimiters)).uniq
    end
end