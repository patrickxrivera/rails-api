User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

u1 = User.create!(username: 'donaldknuth')
u2 = User.create!(username: 'pg')
u3 = User.create!(username: 'kenthompson')

aw1 = Artwork.create!(title: 'Mona Lisa', image_url: 'www.monalisa.com', artist_id: u1.id)
aw2 = Artwork.create!(title: 'Fur Elise', image_url: 'www.furelise.com', artist_id: u2.id)
aw3 = Artwork.create!(title: 'Nightingale', image_url: 'www.nightingale.com', artist_id: u2.id)

aws1 = ArtworkShare.create!(artwork_id: aw1.id, viewer_id: u1.id)
aws2 = ArtworkShare.create!(artwork_id: aw1.id, viewer_id: u3.id)
aws3 = ArtworkShare.create!(artwork_id: aw2.id, viewer_id: u2.id)
aws4 = ArtworkShare.create!(artwork_id: aw3.id, viewer_id: u3.id)