class Clue < ActiveRecord::Base
    attr_accessible :difficulty, :passage, :prompt, :response

    has_and_belongs_to_many :categories
    has_many :boards

    validates :prompt, :response, :presence => true


    def self.import(file)
        spreadsheet = open_spreadsheet(file)
        header = spreadsheet.row(1)
        (2..spreadsheet.last_row).each do |i|
            row = Hash[[header, spreadsheet.row(i)].transpose]
            unless row["Prompt"].blank? || row["Response"] || row["Board"].blank?
                clue = find_by_id(row["Question ID"]) || new
                clue.prompt = row["Prompt"]
                clue.response = row["Response"]
                category = Category.find_or_create_by_name(row["Category"])
                clue.passage = [row["Book"],row["Chapter and Verse"]].join(" ")
                board = Board.find_or_create_by_name("Board "+row["Board"])
                case
                when row["Value"] == 10
                    clue.difficulty = 1
                when row["Value"] == 20
                    clue.difficulty = 2
                when row["Value"] == 30
                    clue.difficulty = 3
                when row["Value"] == 40
                    clue.difficulty = 4
                when row["Value"] == 50
                    clue.difficulty = 5 if row["Board"] == 1
                    clue.difficulty = 1 if row["Board"] == 2
                when row["Value"] == 100
                    clue.difficulty = 2 if row["Board"] == 2
                    clue.difficulty = 1 if row["Board"] == 3
                when row["Value"] == 150
                    clue.difficulty = 3 if row["Board"] == 2
                when row["Value"] == 200
                    clue.difficulty = 4 if row["Board"] == 2
                    clue.difficulty = 2 if row["Board"] == 3
                when row["Value"] == 250
                    clue.difficulty = 5 if row["Board"] == 2
                when row["Value"] == 300
                    clue.difficulty = 3
                when row["Value"] == 400
                    clue.difficulty = 4
                when row["Value"] == 500
                    clue.difficulty = 5
                end
                clue.save!
                clue.boards << board
                clue.categories << category
            end
        end
    end

    def self.open_spreadsheet(file)
        case File.extname(file.original_filename)
        when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
        when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
        when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
        end
    end
end
