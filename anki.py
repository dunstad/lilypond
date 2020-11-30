import genanki, os, sys
from natsort import natsorted

print('creating anki package file...')

my_model = genanki.Model(
  1091735104,
  'Sheet Music',
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

my_deck = genanki.Deck(
  2059400110,
  'Sight reading')
my_package = genanki.Package(my_deck)

my_package.media_files = []
folderName = sys.argv[1]
fileNames = natsorted(filter(lambda s: '.png' in s, os.listdir(folderName)))
fileNames.insert(0, fileNames.pop())
fileNamePairs = zip(fileNames[::2], fileNames[1::2])
for scoreFileName, easyScoreFileName in fileNamePairs:
  wavFileName = easyScoreFileName.split('.')[0] + '.wav'
  imgTag = '<img src="{0}">'
  my_note = genanki.Note(
    model=my_model,
    fields=[
      imgTag.format(scoreFileName),
      imgTag.format(easyScoreFileName),
      '[sound:{0}]'.format(wavFileName),
    ]
  )
  my_deck.add_note(my_note)

  my_package.media_files.extend([
    '{0}/{1}'.format(folderName, scoreFileName),
    '{0}/{1}'.format(folderName, easyScoreFileName),
    '{0}/{1}'.format(folderName, wavFileName),
  ])

print('{0}.apkg created.'.format(folderName))

my_package.write_to_file('{0}.apkg'.format(folderName))
