require 'benchmark'

#Passage from 'A Tale of Two Cities' by Charles Dickens
documents = ["Its abiding place was in all things fitted to it. A narrow winding
			street, full of offence and stench, with other narrow winding streets
			diverging, all peopled by rags and nightcaps, and all smelling of rags
			and nightcaps, and all visible things with a brooding look upon them
			that looked ill. In the hunted air of the people there was yet some
			wild-beast thought of the possibility of turning at bay.", 
			"Depressed and slinking though they were, eyes of fire were not wanting among them; nor
			compressed lips, white with what they suppressed; nor foreheads knitted
			into the likeness of the gallows-rope they mused about enduring, or
			inflicting.",
			"The trade signs (and they were almost as many as the shops)
			were, all, grim illustrations of Want. The butcher and the porkman
			painted up, only the leanest scrags of meat; the baker, the coarsest of
			meagre loaves. The people rudely pictured as drinking in the wine-shops,
			croaked over their scanty measures of thin wine and beer, and were
			gloweringly confidential together. Nothing was represented in a
			flourishing condition, save tools and weapons; but, the cutler's knives
			and axes were sharp and bright, the smith's hammers were heavy, and the
			gunmaker's stock was murderous.",
			"The crippling stones of the pavement,
			with their many little reservoirs of mud and water, had no footways, but
			broke off abruptly at the doors. The kennel, to make amends, ran down
			the middle of the street--when it ran at all: which was only after heavy
			rains, and then it ran, by many eccentric fits, into the houses.",
			"Across
			the streets, at wide intervals, one clumsy lamp was slung by a rope and
			pulley; at night, when the lamplighter had let these down, and lighted,
			and hoisted them again, a feeble grove of dim wicks swung in a sickly
			manner overhead, as if they were at sea. Indeed they were at sea, and
			the ship and crew were in peril of tempest."]

Record = Struct.new(:term, :doc_id)

def pre_process(documents)
	dictionary = []

	documents.each_with_index do |doc, index|
		doc.split(' ').each do |word|
			record = Record.new(word, index)
			dictionary << record
		end
	end

	puts dictionary
end

def create_inverted_index(dictionary)
	index_hash = {}
	dictionary.each do |record|
		
	end
end

