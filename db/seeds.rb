User.destroy_all
Scribble.destroy_all
BackgroundCanvas.destroy_all
CircleCanvas.destroy_all

# New Users
sam = User.create(username: "Sam")
anson = User.create(username: "Anson")

# New Scribbles
scribble1 = Scribble.create(title: "sam scribble 1", user_id: sam.id)
scribble2 = Scribble.create(title: "sam scribble 2", user_id: sam.id)
scribble3 = Scribble.create(title: "anson scribble 1", user_id: anson.id)

# New BackgroundCanvases
bg1 = BackgroundCanvas.create(z_index: 1, scribble_id: scribble1.id, background_style: "#0000FF")
bg2 = BackgroundCanvas.create(z_index: 1, scribble_id: scribble2.id, background_style: "#0000FF")
bg3 = BackgroundCanvas.create(z_index: 1, scribble_id: scribble3.id, background_style: "0000FF")

# New CircleCanvases
cc1 = CircleCanvas.create(posX: 50, posY: 50, dx: 5, dy:4, radius: 20, color: "red", octave: 4, note: "c", z_index: 2, scribble_id: scribble1.id)
cc2 = CircleCanvas.create(posX: 80, posY: 30, dx: 2, dy:2, radius: 10, color: "blue", octave: 4, note: "c", z_index: 3, scribble_id: scribble1.id)
cc3 = CircleCanvas.create(posX: 10, posY: 10, dx: 2, dy:2, radius: 3, color: "orange", octave: 4, note: "c", z_index: 2, scribble_id: scribble2.id)
