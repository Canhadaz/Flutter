import '../models/user.dart';

const currentUser = User(
  name: 'Matheus',
  id: 'mdmlo_',
  birthDate: '01/03/2006',
  profileImage: 'assets/matheus.jpg',
  bannerImage: 'assets/matheus.jpg',
  followers: '147',
  following: '162',
  posts: [
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p1', content: 'O Anderson é simplesmente sensacional! 😎'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p2', content: 'Dia após dia percebo como o Anderson é bacana demais 👏'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p3', content: 'Anderson: o cara que sempre deixa tudo mais leve e divertido 😄'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p4', content: 'Impressionante como o Anderson manda bem em tudo o que faz! 💯'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p5', content: 'Trabalhar com o Anderson é sempre uma experiência incrível 🤝'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p6', content: 'Anderson é a definição de gente boa demais 🙌'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p7', content: 'Quanto mais conheço o Anderson, mais acho ele bacana 😂'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p8', content: 'Se existir um ranking de pessoas bacanas, o Anderson tá no topo 🏆'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p9', content: 'O Anderson sempre ajudando e fazendo a diferença. Gente fina demais! 💙'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p10', content: 'Anderson = simpatia + talento + boa vibe ✨'),
    UserPost(userId: 'mdmlo_', postId: 'mdmlo_p11', content: 'Não tem como: o Anderson é muito, muito bacana! 🤩'),
  ],
);

final murilo = User(
  name: 'Murilo Canhadas',
  id: 'muriloc_',
  birthDate: '12/08/2006',
  profileImage: 'assets/murilo.jpg',
  bannerImage: 'assets/murilo_banner.jpg',
  followers: '230',
  following: '198',
  posts: [
    UserPost(userId: 'muriloc_', postId: 'muriloc_p1', content: 'Hoje acordei radiante, o mood perfeito pra arrasar 🌈✨'),
    UserPost(userId: 'muriloc_', postId: 'muriloc_p2', content: 'Se tem uma coisa que eu sei fazer é escolher looks incríveis 😍'),
    UserPost(userId: 'muriloc_', postId: 'muriloc_p3', content: 'Gente, vocês não têm noção do crush que eu arrumei hoje 😂🔥'),
    UserPost(userId: 'muriloc_', postId: 'muriloc_p4', content: 'A vida fica bem melhor quando a gente abraça quem a gente é ❤️'),
  ],
);

final pedro = User(
  name: 'Pedro Zagato',
  id: 'pedroz_',
  birthDate: '22/04/2006',
  profileImage: 'assets/pedro.jpg',
  bannerImage: 'assets/pedro_banner.jpg',
  followers: '310',
  following: '284',
  posts: [
    UserPost(userId: 'pedroz_', postId: 'pedroz_p1', content: 'Tentando manter a pose de machão mas rindo de meme fofinho 😂💪'),
    UserPost(userId: 'pedroz_', postId: 'pedroz_p2', content: 'Ser quem eu sou nunca fez tanto sentido. Orgulho demais! 🏳️‍⚧️🔥'),
    UserPost(userId: 'pedroz_', postId: 'pedroz_p3', content: 'Treino em dia, autoestima em dia, vida que segue 😎'),
    UserPost(userId: 'pedroz_', postId: 'pedroz_p4', content: 'Fingindo ser durão, mas chorando com vídeo de gatinho 😭🐱'),
  ],
);

final samuel = User(
  name: 'Samuel Bertola',
  id: 'samuca_',
  birthDate: '29/10/2006',
  profileImage: 'assets/samuel.jpg',
  bannerImage: 'assets/samuel_banner.jpg',
  followers: '102',
  following: '156',
  posts: [
    UserPost(userId: 'samuca_', postId: 'samuca_p1', content: 'A arte de sobreviver com 12 reais até sexta-feira 🎨💸'),
    UserPost(userId: 'samuca_', postId: 'samuca_p2', content: 'Promoção? Tô dentro. Amostra grátis? Melhor ainda 😎'),
    UserPost(userId: 'samuca_', postId: 'samuca_p3', content: 'Um dia eu venço… por enquanto tô só tentando 😂'),
    UserPost(userId: 'samuca_', postId: 'samuca_p4', content: 'Perrengue chique é pra poucos, o meu é só perrengue mesmo 🥲'),
  ],
);

final romualdo = User(
  name: 'Romualdo',
  id: 'romuJava_',
  birthDate: '14/02/2005',
  profileImage: 'assets/romualdo.png',
  bannerImage: 'assets/romu_banner.jpg',
  followers: '89',
  following: '75',
  posts: [
    UserPost(userId: 'romuJava_', postId: 'romuJava_p1', content: 'SE EU VER MAIS UM DEV FALANDO MAL DE JAVA EU SURTO 😡☕'),
    UserPost(userId: 'romuJava_', postId: 'romuJava_p2', content: 'Escrevi 300 linhas hoje só pra provar um ponto. Funcionou. 😤'),
    UserPost(userId: 'romuJava_', postId: 'romuJava_p3', content: 'Java não é pesado, pesado é lidar com gente que não sabe usar 😑'),
    UserPost(userId: 'romuJava_', postId: 'romuJava_p4', content: 'Refatorei o código e agora sim tá digno. *Perfeição exige fúria.* 🔥💻'),
  ],
);

final List<User> allUsers = [
  murilo,
  pedro,
  samuel,
  romualdo,
];