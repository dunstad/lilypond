# this is just the example code from https://github.com/kerrickstaley/genanki

import genanki

my_model = genanki.Model(
  1091735104,
  'Simple Model with Media',
  fields=[
    {'name': 'Score'},
    {'name': 'EasyScore'},
    {'name': 'Music'},
  ],
  templates=[
    {
      'name': 'Card 1',
      'qfmt': '{{Score}}',
      'afmt': '{{FrontSide}}<hr id="answer">{{EasyScore}}<br>{{Music}}',
    },
  ])

my_note = genanki.Note(
  model=my_model,
  fields=['dango.preview.png', 'dango-1.preview.png', 'dango-1.wav'])

my_deck = genanki.Deck(
  2059400110,
  'Sight reading')

my_deck.add_note(my_note)

my_package = genanki.Package(my_deck)
my_package.media_files = [
  'dango/dango.preview.png',
  'dango/dango-1.preview.png',
  'dango/dango-1.wav',
]
my_package.write_to_file('output.apkg')