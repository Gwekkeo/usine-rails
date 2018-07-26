require 'faker'

nb_de_piece = 6
nb_d_assemblage = 4

puts "-- Création de #{nb_de_piece} pièce --"
nb_de_piece.times do
	Piece.create(part_number: "Partie N°#{rand(1..5)}")
end


puts "-- Création de #{nb_d_assemblage} assemblage --"
nb_d_assemblage.times do
	Assemblage.create(name: Faker::Code.asin)
end




puts "-- Assemblage de piece dans des assemblages --"
tab = []
tour = rand(1..nb_d_assemblage)
	puts "----> TOUR = #{tour}"
tour.times do |i|
	2.times do |k|
		tab << Piece.find(rand(1..Piece.last.id))
		puts "\t#{Piece.find(k+1)}"
	end
	
	Assemblage.find(i+1).pieces = tab
	Assemblage.find(i+1).pieces
end



Assemblage.find(4).pieces = [Piece.find(4), Piece.find(2)]



rand(1..Piece.last.id)