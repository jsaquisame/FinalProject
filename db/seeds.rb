# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Playlist.destroy_all
Gig.destroy_all
GigType.destroy_all
Client.destroy_all
Song.destroy_all
Genre.destroy_all
BandInstrument.destroy_all
BandMember.destroy_all
Band.destroy_all


#create band
amberliteband = Band.create(band_name: "AmberLite",
                           founded: "2015-09-27 07:30:30 -0700",
                           bandtype: "Cover Band",
                           band_contact_number: "2047716257",
                           band_biography: "To be added")


#band member
band_member1 = BandMember.create(bm_name: "Kyle Tabo-oy",
                                 biography: " to be added",
                                 band: amberliteband)
band_member2 = BandMember.create(bm_name: "Jiko Lazaro",
                                 biography: "to be added",
                                 band: amberliteband)
band_member3 = BandMember.create(bm_name: "Jake Saquisame",
                                 biography: "to be added",  
                                 band: amberliteband)
band_member4 = BandMember.create(bm_name: "Cedric Don Pis-o Perfas",
                                 biography: " to be added",
                                 band: amberliteband) 
band_member5 = BandMember.create(bm_name: "Daphne Anne Tabo-oy",
                                 biography: "to be added",   
                                 band: amberliteband)    
band_member6 = BandMember.create(bm_name: "Geraldine Grace Ong",
                                 biography: "to be added",
                                 band: amberliteband) 

#band instrument
base_guitar = BandInstrument.create(bi_name: "Jackson CVXNT-V Bass",
                                    bi_brand: "Jackson",
                                    bi_type: "Bass Guitar",
                                    band: amberliteband,
                                    band_member: band_member2)
base_guitar = BandInstrument.create(bi_name: "Fender Select Telecaster 2016",
                                    bi_brand: "Fender",
                                    bi_type: "Guitar",
                                    band: amberliteband,
                                    band_member: band_member3 )
base_guitar = BandInstrument.create(bi_name: "Godin Summit Classic  Convertible",
                                    bi_brand: " N/A",
                                    bi_type: "Guitar",
                                    band: amberliteband,
                                    band_member:band_member1 )
base_guitar = BandInstrument.create(bi_name: "Pearl Reference Kit/Pdp X7",
                                    bi_brand: "Pearl",
                                    bi_type: "Drum Kit",
                                    band: amberliteband,
                                    band_member:band_member4 )

#genre
genre_pop = Genre.create(genre_name: "Pop")
genre_rock = Genre.create(genre_name: "Rock")
genre_popRock = Genre.create(genre_name: "Pop Rock")
genre_gospel = Genre.create(genre_name: "Gospel")        
genre_indie = Genre.create(genre_name: "Indie")
genre_rnb = Genre.create(genre_name: "Rhythm and Blues")
genre_reggae = Genre.create(genre_name: "Reggae")
genre_country = Genre.create(genre_name: "Country")
genre_alternative = Genre.create(genre_name: "alternative")

#song
song_achy = Song.create(song_name: "Achy Breaky Heart",
                        song_artist:" Billy Ray Cyrus",
                        popularity: "10",
                        album: "Some Gave All",
                        genre: genre_rock)
song_kissme = Song.create(song_name: "Kiss me",
                            song_artist:" Sixpence None The Richer",
                            popularity: "10",
                            album: "Sixpence None the Richer",
                            genre: genre_pop)

song_wagon_wheel = Song.create(song_name: "Wagon Wheel",
                            song_artist:" Darius Rucker",
                            popularity: "9",
                            album: "True Believers",
                            genre: genre_country)

song_youre_a_god = Song.create(song_name: "You're a God",
                            song_artist:" Vertical Horizon",
                            popularity: "9",
                            album: "Everything You Want",
                            genre: genre_gospel)       
              

song_cali = Song.create(song_name: "Californication ",
                            song_artist:" Red Hot Chili Pepers",
                            popularity: "9",
                            album: "Californication",
                            genre: genre_indie)
       
song_cali = Song.create(song_name: "Drive ",
                            song_artist:" Red Hot Chili Pepers",
                            popularity: "8",
                            album: "Make Yourself",
                            genre: genre_alternative)

#client
first_client = Client.create(client_name: "Lee Hyo",
                             client_contact_number: "204987624",
                             client_email: "test@gmail.com")

#gig type
gig_type_wedding = GigType.create(event: "Social Wedding",
    privacy: "Private")
gig_privacy_anniversary = GigType.create(event: "Social Anniversary",
        privacy: "Private")
gig_type_birthdays = GigType.create(event: "Birthday Special",
      privacy: " Private")
gig_type_birthday_debut = GigType.create(event: "Birthday Debut",
      privacy: "Private")

#Gig
first_gig = Gig.create(fee: 500,
                       about: "I want a live band on my daughter party",
                       venue: "67 Jose Rizal Street",
                       gig_type: gig_type_birthdays,
                       client: first_client,
                       band: amberliteband)

#Playlist
first_playlist = Playlist.create(gig:first_gig,
                                 song: song_achy)
                        