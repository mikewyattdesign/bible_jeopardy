class Clue < ActiveRecord::Base
    has_and_belongs_to_many :categories
    has_many :cluesets
    has_many :boards, through: :cluesets

    validates :prompt, :response, :presence => true

    def dollar_value(board)
        return case
        when board.difficulty == 1
            self.difficulty * 10
        when board.difficulty == 2
            self.difficulty * 50
        when board.difficulty == 3
            self.difficulty * 100
        end
    end

    def self.import(file)
        puts "Importing #{file.inspect}"
        spreadsheet = open_spreadsheet(file)
        header = spreadsheet.row(1)
        (2..spreadsheet.last_row).each do |i|
            row = Hash[[header, spreadsheet.row(i)].transpose]
            unless row["Prompt"].blank? || row["Response"].blank? || row["Board"].blank?
                clue = find_by_id(row["Question ID"]) || new
                clue.prompt = row["Prompt"]
                clue.response = row["Response"]
                category = Category.find_or_create_by_name(row["Category"])
                clue.passage = [row["Book"],row["Chapter and Verse"]].join(" ")
                board = Board.find_or_create_by_name("Board "+row["Board"].to_i.to_s)
                board.difficulty = row["Board"].to_i
                board.save!
                case
                when row["Value"].to_i == 10 || row["Value"] == "10"
                    clue.difficulty = 1
                when row["Value"].to_i == 20 || row["Value"] == "20"
                    clue.difficulty = 2
                when row["Value"].to_i == 30 || row["Value"] == "30"
                    clue.difficulty = 3
                when row["Value"].to_i == 40 || row["Value"] == "40"
                    clue.difficulty = 4
                when row["Value"].to_i == 50 || row["Value"] == "50"
                    clue.difficulty = 5 if row["Board"] == "1" || row["Board"].to_i == 1
                    clue.difficulty = 1 if row["Board"] == "2" || row["Board"].to_i == 2
                when row["Value"].to_i == 100 || row["Value"] == "100"
                    clue.difficulty = 2 if row["Board"] == "2" || row["Board"].to_i == 2
                    clue.difficulty = 1 if row["Board"] == "3" || row["Board"].to_i == 3
                when row["Value"].to_i == 150 || row["Value"] == "150"
                    clue.difficulty = 3 if row["Board"] == "2" || row["Board"].to_i == 2
                when row["Value"].to_i == 200 || row["Value"] == "200"
                    clue.difficulty = 4 if row["Board"] == "2" || row["Board"].to_i == 2
                    clue.difficulty = 2 if row["Board"] == "3" || row["Board"].to_i == 3
                when row["Value"].to_i == 250 || row["Value"] == "250"
                    clue.difficulty = 5 if row["Board"] == "2" || row["Board"].to_i == 2
                when row["Value"].to_i == 300 || row["Value"] == "300"
                    clue.difficulty = 3
                when row["Value"].to_i == 400 || row["Value"] == "400"
                    clue.difficulty = 4
                when row["Value"].to_i == 500 || row["Value"] == "500"
                    clue.difficulty = 5
                end
                raise if clue.difficulty.nil?
                clue.save!
                clue.categories << category unless clue.categories.include?(category)
                board.clues << clue unless board.clues.include?(clue)
                board.categories << category unless board.categories.include?(category)
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
