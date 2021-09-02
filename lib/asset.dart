class ContentMaterial {
  String title;
  String imageClip;
  String description;
  List<String> imageList;

  ContentMaterial({
    required this.title,
    required this.imageClip,
    required this.description,
    required this.imageList,
  });
}

var contentMaterialList = [
  ContentMaterial(
      title: 'Alphabet',
      imageClip: 'images/alphabet.png',
      description: 'Learn Sign Alphabet Language',
      imageList: [
        'images/huruf/a.png',
        'images/huruf/b.png',
        'images/huruf/c.png',
        'images/huruf/d.png',
        'images/huruf/e.png',
        'images/huruf/f.png',
        'images/huruf/g.png',
        'images/huruf/h.png',
        'images/huruf/i.png',
        'images/huruf/j.png',
        'images/huruf/k.png',
        'images/huruf/l.png',
        'images/huruf/m.png',
        'images/huruf/n.png',
        'images/huruf/o.png',
        'images/huruf/p.png',
        'images/huruf/q.png',
        'images/huruf/r.png',
        'images/huruf/s.png',
        'images/huruf/t.png',
        'images/huruf/u.png',
        'images/huruf/v.png',
        'images/huruf/w.png',
        'images/huruf/x.png',
        'images/huruf/y.png',
        'images/huruf/z.png',
      ],
  ),
  ContentMaterial(
    title: 'Number',
    imageClip: 'images/number.png',
    description: 'Learn Sign Number Language',
    imageList: [
      'images/angka/0.png',
      'images/angka/1.png',
      'images/angka/2.png',
      'images/angka/3.png',
      'images/angka/4.png',
      'images/angka/5.png',
      'images/angka/6.png',
      'images/angka/7.png',
      'images/angka/8.png',
      'images/angka/9.png',
    ],
  ),
];