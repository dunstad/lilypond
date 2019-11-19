# this is just the example code from https://github.com/kerrickstaley/genanki

my_model = genanki.Model(
  1091735104,
  'Simple Model with Media',
  fields=[
    {'name': 'Question'},
    {'name': 'Answer'},
    {'name': 'MyMedia'},                                  # ADD THIS
  ],
  templates=[
    {
      'name': 'Card 1',
      'qfmt': '{{Question}}<br>{{MyMedia}}',              # AND THIS
      'afmt': '{{FrontSide}}<hr id="answer">{{Answer}}',
    },
  ])

my_note = genanki.Note(
  model=my_model,
  fields=['Capital of Argentina', 'Buenos Aires'])

my_deck = genanki.Deck(
  2059400110,
  'Country Capitals')

my_deck.add_note(my_note)

my_package = genanki.Package(my_deck)
my_package.media_files = ['sound.mp3', 'images/image.jpg']
my_package.write_to_file('output.apkg')