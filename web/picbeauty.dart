import 'dart:html';

void main() {
  
  var data = [
    {'src': 
      'https://s3-eu-west-1.amazonaws.com/zalzeroassets/5217421510d072b42ee36351/847f0a4f-b17c-411f-8d88-0c1d8b4772a3', 
      'alt': "Pic 1",
      'caption': "Parent's Day"},
    {'src': 'https://s3-eu-west-1.amazonaws.com/zalzeroassets/5217421510d072b42ee36351/554e6372-e5d4-483f-ad2b-b5e6b59a94d2',
     'alt': "Pic 2",
     'caption': "New Year's Day"},
    {'src': 'https://s3-eu-west-1.amazonaws.com/zalzeroassets/5217421510d072b42ee36351/f9bd587b-d8b9-4a0a-bc3b-282876bae68e',
     'alt': "Pic 3",
     'caption': 'Zamboni'},
     {'src': 'https://s3-eu-west-1.amazonaws.com/zalzeroassets/5217421510d072b42ee36351/ad63d231-7e02-46b8-a252-a040884ae51a',
       'alt': "Pic 4",
        'caption': 'hair'}
  ];

  AnchorElement link = query('a');
  
  link.onClick.listen((event) { 
    event.preventDefault();

    var content = document.query('#myTemplate').content;
    ImageElement img = content.query('img');
    DivElement div = content.query('div');

    for (Map item in data) {
      img.src = item['src'];
      img.alt = item['alt'];
      div.text = item['caption'];

      document.body.append(content.clone(true));
    }
    event.target.remove();
  });
}

