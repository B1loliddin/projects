import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/icons.dart';
import 'package:electronic_book_reader_app/services/constants/images.dart';
import 'package:electronic_book_reader_app/services/constants/strings.dart';
import 'package:electronic_book_reader_app/views/book_categories_view.dart';
import 'package:electronic_book_reader_app/views/book_on_sale_view.dart';
import 'package:electronic_book_reader_app/views/custom_bottom_navigation_bar_view_home_page.dart';
import 'package:electronic_book_reader_app/views/custom_text_field_view.dart';
import 'package:electronic_book_reader_app/views/read_book_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> readBooks = [
      ['A Day of Fallen Night', 'Samantha Shannon', '30%'],
      ['A Day of Fallen Night', 'Samantha Shannon', '30%'],
    ];

    void bookOnSaleOnPressed(BookOnSaleView bookOnSale) => Navigator.pushNamed(
          context,
          '/book_details_page',
          arguments: bookOnSale,
        );

    List<String> booksOnSaleSynopsis = [
      'Charlie Hall has never found a lock she couldn’t pick, a book she couldn’t steal, or a bad decision she wouldn’t make. She’s spent half her life working for gloamists, magicians who manipulate shadows to peer into locked rooms, strangle people in their beds, or worse. Gloamists guard their secrets greedily, creating an underground economy of grimoires. And to rob their fellow magicians, they need Charlie. Now, she’s trying to distance herself from past mistakes, but going straight isn’t easy. Bartending at a dive, she’s still entirely too close to the corrupt underbelly of the Berkshires. Not to mention that her sister Posey is desperate for magic, and that her shadowless and possibly soulless boyfriend has been keeping secrets from her. When a terrible figure from her past returns, Charlie descends back into a maelstrom of murder and lies. Determined to survive, she’s up against a cast of doppelgängers, mercurial billionaires, gloamists, and the people she loves best in the world — all trying to steal a secret that will allow them control of the shadow world and more.',
      'Amara was once a beloved daughter, until her father\'s death plunged her family into penury. Now she is a slave in Pompeii\'s infamous brothel, owned by a man she despises. Sharp, clever and resourceful, Amara is forced to hide her talents. For now, her only value lies in the desire she can stir in others. But Amara\'s spirit is far from broken. By day, she walks the streets with the other women, finding comfort in the laughter and dreams they share. For the streets of Pompeii are alive with opportunity. Out here, even the lowest slave can secure a reversal in fortune. Amara has learnt that everything in this city has its price. But how much is her freedom going to cost her? Set in Pompeii\'s Lupanar, The Wolf Den reimagines the lives of women who have long been overlooked.',
      'Jack Tamerlaine hasn’t stepped foot on Cadence in ten long years, content to study music at the mainland university. But when young girls start disappearing from the isle, Jack is summoned home to help find them. Enchantments run deep on Cadence: gossip is carried by the wind, plaid shawls can be as strong as armor, and the smallest cut of a knife can instill fathomless fear. The capricious spirits that rule the isle by fire, water, earth, and wind find mirth in the lives of the humans who call the land home. Adaira, heiress of the east and Jack’s childhood enemy, knows the spirits only answer to a bard’s music, and she hopes Jack can draw them forth by song, enticing them to return the missing girls. As Jack and Adaira reluctantly work together, they find they make better allies than rivals as their partnership turns into something more. But with each passing song, it becomes apparent the trouble with the spirits is far more sinister than they first expected, and an older, darker secret about Cadence lurks beneath the surface, threatening to undo them all. With unforgettable characters, a fast-paced plot, and compelling world building, A River Enchanted is a stirring story of duty, love, and the power of true partnership, and marks Rebecca Ross’s brilliant entry on the adult fantasy stage.',
      'A blood feud between two gangs runs the streets red, leaving the city helpless in the grip of chaos. At the heart of it all is eighteen-year-old Juliette Cai, a former flapper who has returned to assume her role as the proud heir of the Scarlet Gang—a network of criminals far above the law. Their only rivals in power are the White Flowers, who have fought the Scarlets for generations. And behind every move is their heir, Roma Montagov, Juliette’s first love… and first betrayal. But when gangsters on both sides show signs of instability culminating in clawing their own throats out, the people start to whisper. Of a contagion, a madness. Of a monster in the shadows. As the deaths stack up, Juliette and Roma must set their guns—and grudges—aside and work together, for if they can’t stop this mayhem, then there will be no city left for either to rule.',
    ];

    List<String> booksOnSaleHeaderText = [
      'Dark, strange, thick with mystery and twists―Book of Night is everything delicious and frightening I’ve come to expect from Holly Black. It’s a story so believable in its magic, you’ll be keeping one eye on your shadow as you turn the pages. “A dark romp full of danger and shadows with a razor sharp heroine and vivid magic.”',
      'Amara was once the beloved daughter of a doctor in Greece, until her father’s sudden death plunged her mother into destitution. Now Amara is a slave and prostitute in Pompeii’s notorious Wolf Den brothel or lupanar, owned by a cruel and ruthless man. Intelligent and resourceful, she is forced to hide her true self. But her spirit is far from broken. Buoyed by the sisterhood she forges with the brothel’s other women, Amara finds solace in the laughter and hopes they all share. For the streets of the city are alive with opportunity—here, even the lowest-born slave can dream of a new beginning. But everything in Pompeii has a price. How much will Amara’s freedom cost her? The Wolf Den is the first in a trilogy of novels about the lives of women in ancient Pompeii.',
      'A sparkling debut fantasy with Celtic tones set on the magical isle of Cadence where two childhood enemies must team up to discover why girls are going missing from their clan Enchantments run deep on the magical Isle of Cadence The capricious spirits that live there find mirth in the lives of the humans who call the land home, but that mischief turns to malevolence as girls begin to go missing Adaira, heiress of the east, knows the spirits only answer to a bard\'s music, enticing them to return the missing girls. But there\'s only one bard capable of drawing the spirits forth by song: her childhood enemy, Jack Tamerlaine. He hasn\'t stepped foot on Cadence in ten long years, content to study music at the Mainland university. But as Jack and Adaira reluctantly work together it becomes apparent the trouble with the spirits is far more sinister than first thought and an older, darker secret lurks beneath the surface, threatening to undo them all. \'An alluring and rich tale, at once a fast-paced mystery and a love story as warm as a heart Ava Reid, bestselling author of The Wolf and the Woodsman',
      'It’s 1926 in Shanghai. The city has been divided between the Scarlet Gang and the White Flowers – the streets painted red by their never-ending blood feud. The gangs’ once iron clad rule is slowly being chipped away by French and British foreigners carving out their own sections of the city, Nationalists fighting for power, and the rise of the Communist party sweeping through the working class. Our story centers around Juliette Cai, a former flapper girl who’s returned from her time in America to reclaim her place as heiress to the Scarlet Gang, and Roma Montagov, the mistreated and belittled heir of the White Flowers. When they were fifteen, Juliette and Roma defied the blood feud in a moment of mutual peace and fell in love. But we wouldn’t have a story if their love was allowed to grow and flourish, right? They were torn apart by betrayal and haven’t spoken since.',
    ];

    List<String> booksOnSaleFullText = [
      'Adelicious, dark, adrenaline rush of a book. I’m already dying to see Charlie Hall’s next con.” – New York Times bestselling author, Alix E. Harrow#1 New York Times bestselling author Holly Black makes her stunning adult debut with Book of Night, a modern dark fantasy of betrayals, secret societies, and a dissolute thief of shadows, in the vein of Neil Gaiman and Erin Morgenstern.Charlie Hall has never found a lock she couldn’t pick, a book she couldn’t steal, or a bad decision she wouldn’t make.She’s spent half her life working for gloamists, magicians who manipulate shadows to peer into locked rooms, strangle people in their beds, or worse. Gloamists guard their secrets greedily, creating an underground economy of grimoires. And to rob their fellow magicians, they need Charlie Hall.Now, she’s trying to distance herself from past mistakes, but getting out isn’t easy. Bartending at a dive, she’s still entirely too close to the corrupt underbelly of the Berkshires. Not to mention that her sister Posey is desperate for magic, and that Charlie’s shadowless, and possibly soulless, boyfriend has been hiding things from her. When a terrible figure from her past returns, Charlie descends into a maelstrom of murder and lies.Determined to survive, she’s up against a cast of doppelgangers, mercurial billionaires, gloamists, and the people she loves best in the world—all trying to steal a secret that will give them vast and terrible power.At the Publisher’s request, this title is being sold without Digital Rights Management Software (DRM) applied. I was so excited about this book- all the way through. It kept me guessing and wanting more. And then I got to the ending. It was horrible and it ruined the entire book for me. The story was really cool. It took me longer to read than other’s I’ve read by Holly Black which I think might be because it wasn’t written in a way I could easily follow along. I was confused at first about the multiple names used for certain characters but once I understood what was happening I was interested to know what would happen next. The book really picks up and gets interesting about 2/3 into it. The last 100 pages were fast paced and really interesting. I would definitely read a sequel if one came out. Charlie Hall was raised to be a thief and a con, with a history of bad and worse decisions. It took a bit in the novel to world build the shadows. Then it was riveting. The ending is satisfying, but also a beginning. Charlie Hall will never be the same. I look forward to a sequel to this book. Holly Black is the latest YA Author to pen an adult fiction novel. Hers is the tale of Charlie Hall, whose past comes back to haunt her. She’s a bartender and low level thief on the side living with her boyfriend Vincent Damiano and her younger sister Poppy. Though she’s barely scraping by, Charlie refuses to take on the big cons that she used to after one close call. However, her past has a way of refusing to remain in the rear view as someone she thought she would never see again pops up. His appearance starts a chain of events that unearths the truth which sends Charlie’s life in a tailspin.The only part of the story that I didn’t like is that I wanted to know more about Vincent and Red.I’m so happy that today I learned that Book of Night is a duology. Book one is worth four out of five stars in my opinion. Holly Black is not only the Queen of Faeries. I think that’s she’s also becoming one of the Queens of Adult Fantasy as well. I really wanted to like this book. Listened to it & forced myself to finish. The main character was supposed to be so brilliant but kept doing stupid things, her younger sister annoying as hell, & pretty much everything else in the book was tedious & repetitive. A big waste of time. The premise just didn’t work for me. I did eventually come to like the protagonist, a c!ever little thief, but the plot was essentially silly.',
      'On paper, the idea that a historical novel about the lives of a group of prostitutes in a Pompeii brothel is actually one of the year’s most strident tales of female empowerment seems as though it should be fairly ridiculous. But clearly, none of us saw Elodie Harper coming. Clocking in at nearly 500 pages, her novel The Wolf Den is an enthralling, exhilarating read from its first page to its last, rooted in both archeological fact and emotional truth. (Thank goodness it’s set to be the first installment in a trilogy, is what I’m saying.) An incredibly well-written and clearly deeply researched tale, Harper’s debut is both a fascinating tale in its own right and an important reclaiming of the sorts of stories from history we far too rarely get to hear. Yes, The Wolf Den is brutal in its violence and unflinching in its depiction of the many horrors and indignities poor women, slaves, and other marginalized groups of this time must have faced. But it’s also like almost nothing else that exists in this genre at present, carefully drawing contemporary parallels that will feel deeply familiar in a world where modern women still must fight far too hard for autonomy, equality, and the right to feel both safe in and in charge of their own bodies. Set in Pompeii during the first century AD, just a scant few years before the famous volcanic eruption that will encase the city in lava and ash, this is nevertheless a story that is positively teeming with life. (Perhaps one that feels all the more vibrant and desperate for the fact that we know it will all be gone so very soon.) From the crowded bars and dirty alleyways to the colorful marketplaces and lush private homes, every aspect of this world is fully realized right down to the ground. The bulk of The Wolf Den takes place in the location that gives the book its name, the lupanar or brothel, and follows the story of a group of prostitutes—colloquially referred to as “she-wolves”—who work there. (The fictional site is based on a real location whose structural remains were preserved in the ruins of Pompeii; the story’s characters are drawn from names written in the graffiti of the brothel’s walls.) Its primary protagonist is a Greek girl named Amara, who was sold into slavery when her father died and her respectable family lost all their money. Forced to work for a brutal pimp named Felix who rapes her at will, she longs for a way to win her freedom. (Or somehow come into enough money to buy it.) Amara finds some degree of comfort and camaraderie with her fellow she-wolves, a motley assortment of desperate, scheming, traumatized women from a variety of different backgrounds who are irrevocably bonded by the horrors of their shared reality. Some, like Amara, remember a time before they were slaves, but others like the loud, brash Victoria have only ever known life in the brothel’s walls. The kind Cressa drinks too much to dull the pain of having her illegitimate child taken and sold, the delicate Dido fears the harsh necessities of her new life as a slave, and the romantic Beronice is determined to make a relationship with one of Felix’s crude bouncers last. Yet, even as they are constantly forced to compete for clients, money, and sometimes, even bread, these women steadfastly rely on one another. The keeper of each other’s worst fears and all too aware of their biggest weaknesses, they work to shield and protect one another when they can.One of the best aspects of Harper’s writing is that, while she certainly doesn’t shirk at depicting the darkest corners of this world, her story is not an entirely bleak one. Amara’s life is full of tragedy and pain, yet she and the remarkable women of her pack find moments of genuine happiness and heartfelt camaraderie with one another, from attending observances honoring the city’s patron goddess Venus Pompeiana to thronging to see the gladiators pass by at the Forum on a rare day off. Their quiet kindnesses and simple, small joys shine all the brighter for the muck in which they are forced to exist, and though their bodies are often beaten down their spirits are never broken. Even when one might assume they would have had to be. Though the book has several significant narrative arcs—the dangerous rivalry between Felix and another brothel owner, Amara’s attempts to make her owner take her business acumen seriously, the surprisingly long tail of her relationship with Pliny the Elder—-The Wolf Den is primarily a story about character and relationship dynamics, exploring the psychological toll that this life takes on the women forced to endure it. The book is also shot through with incredibly necessary and raw anger, a bone-deep fury that runs straight from these women to our own times—how have we still not done better by our sisters, then or now? Harper’s novel is a rich, fully grounded, and deeply engrossing retelling that gives a voice to precisely the sort of women who have never been allowed to speak for themselves before and whose stories have been left to languish on the sidelines of the history we prefer to remember. The The Wolf Den is a thoroughly modern book telling an ancient and age-old story.',
      'Amagical island welcomes back its prodigal son in a tale that blends political intrigue with elements of a fantasy thriller. Thanks to a centuries-old curse, the controlling clans of the east and west live in completely different worlds on the Isle of Cadence. The Breccans in the west can wield magic themselves, but the land is unyielding and the spirits there, hostile. In the east, the Tamerlaines weave magic into objects at a steep cost to their well-being, yet they maintain bountiful relationships with both the land and its spirits. The Tamerlaines sent Jack away from Cadence when he was just 11 years old, forcing him to leave the magical island he\'d always called home and train as a bard at a mundane university. He comes home a decade later, after he receives a letter from the Laird of the East asking him to return. After making the dangerous journey homeward, however, he learns that it was his childhood rival, the laird\'s daughter, Adaira, who summoned him. The spirits have kidnapped two young girls, and Adaira wants Jack\'s help to find out why. The young bard finds himself torn between his successful career as a music teacher on the mainland and his family—his mother and the younger sister he didn\'t know he had. When a third girl disappears, however, it becomes clear that no spirit is responsible for the east\'s troubles. Here, Ross has built a fully realized world clearly inspired by Scottish myth and legend and thick with heroes. Jack and Adaira are not alone in their fight but are instead surrounded by a bevy of well-rounded kith and kin. Readers begin to sense just how deeply intertwined the lives of the Tamerlaines are the moment Jack returns home, and they\'ll quickly realize this is not his story but that of Cadence itself. A rich fantasy of bards and bairns in which the magical island setting becomes the main character. A sparkling debut fantasy with Celtic tones set on the magical isle of Cadence where two childhood enemies must team up to discover why girls are going missing from their clan Enchantments run deep on the magical Isle of Cadence The capricious spirits that live there find mirth in the lives of the humans who call the land home, but that mischief turns to malevolence as girls begin to go missing Adaira, heiress of the east, knows the spirits only answer to a bard\'s music, enticing them to return the missing girls. But there\'s only one bard capable of drawing the spirits forth by song: her childhood enemy, Jack Tamerlaine. He hasn\'t stepped foot on Cadence in ten long years, content to study music at the Mainland university. But as Jack and Adaira reluctantly work together it becomes apparent the trouble with the spirits is far more sinister than first thought and an older, darker secret lurks beneath the surface, threatening to undo them all. \'An alluring and rich tale, at once a fast-paced mystery and a love story as warm as a heart Ava Reid, bestselling author of The Wolf and the Woodsman',
      'These violent delights have violent ends And in their triumph die, like fire and powder Which as they kiss consume: the sweetest honey Is loathsome in his own deliciousness And in the taste confounds the appetite: Therefore love moderately; long love doth so Too swift arrives as tardy as too slow.” Nearly a decade after taking mandatory Elizabethan-era English literature classes in university, the iambic pentameter of William Shakespeare has crept back into my life. Unexpectedly though, it came in the form of Chloe Gong’s debut novel, These Violent Delights. Set in 1920s Shanghai, this tale of star-crossed (ex)lovers twists a knife into Shakespeare’s famous tragedy—it weaves familiar story beats with unexpected turns as Roma and Juliette, the two heirs to rival crime families, navigate intense hostilities, foreign colonizers, a strange and deadly contagion, as well as their past romance. As tension and chaos in Shanghai builds toward a fever pitch, the two become entangled again in ways that fuel the story (to both good and middling results). Question is, to what end? The above warning of Friar Laurence to Romeo in Romeo and Juliet rings ever true: such fiery delight—a connection consumed by fire and powder—is likely to end in disaster. In order to set the scene, there are two major players connected to two major families in Gong’s gang-ridden version of Shanghai. First, Juliette Cai, daughter of the Scarlet Gang’s leader, and the successor to one of the most powerful gangs in the city. She has returned to Shanghai after four years in the United States, a decision intended to punish and banish her for a disastrous fling with a rival heir. Enter said rival heir: Roma Montagov, next in line to the White Flowers, a fearsome Russian family and enemies of the Scarlet Gang. This conflict between the two gangs is the heart of These Violent Delights, pitting the Shanghainese Scarlets against the invading White Flowers in volatile ways. The city is a powder keg on the verge of igniting, made all the worse by French and British political meddling, greedy and advantageous merchants. Worst of all, rumors of a horrendous creature haunting the Huangpu River spread as a mysterious epidemic infects the city, causing its victims to brutally rip out their own throats. This melding of Shakespeare commentary-critique with gang warfare, body horror and mystery results in a great mash-up of genres and styles. Shanghai itself has a captivating noir-ish atmosphere to it, with turn-of-the-century technology clashing with traditional Chinese aesthetics and values. Unfortunately, there just wasn’t enough setting for me to firmly root myself in this Shanghai. I was always craving more, hoping that the world would be fleshed out just enough to pull me in a bit more. The groundwork is there, but more flourish and detail beyond event and character details would have added a lot of richness to an interesting time and place (more descriptions of settings and neighborhoods, the residents and regular folk, diving into a few more locales to immerse me in a time and place). Although, one detail I loved was Gong’s use of language, incorporating local Chinese dialects to create a sense of difference, even amongst those from Shanghai or the countryside. That mess of language becomes even more muddled (and interesting) when English, Russian and French get tossed in the mix. That said, this is a character-driven story through and through, with Juliette and Roma leading the charge as Scarlets and Whites clash, citizens and gang members alike rip out their throats, and ex-lovers finding themselves drawn closer and closer as the pieces of the plague puzzle come together. Now, I really like Juliette and Roma as POV characters, and as a romantic pairing (albeit a poisonous one). They play off each other well, noticing each other’s quirks, ticks and nuances, both physical, verbal and emotional. This is important as four years have passed, their fling turned explosive. Now that their paths cross unexpectedly, it makes for engaging tension. Gong also does a good job of sprinkling the outcomes of their past fling throughout the narrative, giving Juliette and Roma depth while also revealing a lot about their outward and inward personas. They are both morally complex individuals, with troubled pasts and prominent roles in gangster families that challenge their present choices. Unfortunately, their relationship does fall into some cliché traps, with occasionally cheesy, dramatic dialogue and moments of romantic intensity that left me chuckling more than rooting for them. This is technically a Young Adult book, with a love triangle element and many other YA trappings—but the overt violence tells me otherwise. Romance aside, Juliette and Roma carry this novel, their doomed romance balanced by struggles with family, inheritance and the heft of expectations that come with that. Thankfully, they are also accompanied by some pretty great secondary characters. Juliette is rounded about by Kathleen and Rosalind, fraternal twins from her mother’s side of the family. Rosalind is a fairly one-note character, forgettable and a bit dramatic. Kathleen on the other hand, is more complex, perceptive and troubled by a fascinating secret—but there’s a lot left unsaid about her by the end that I wanted more. (Another good hook to get me to read the next book, but still disappointing.) But it was Roma’s crew that I really gravitated towards, with the charming buddy cop vibe of Marshall Seo and Benedikt Montagov. There’s a playfulness between them, almost like teasing siblings, but also an underlying sexual tension that made their scenes more impactful and nuanced. But, like Kathleen, I felt like I was left hanging by the end, knowing there was more to come but just not getting it in this book. (Sequels!)',
    ];

    List<BookOnSaleView> booksOnSale = [
      BookOnSaleView(
        backgroundColorOfBook: CustomColors.yellow,
        bookImage: CustomImages.homePageThirdBook,
        bookName: 'Book of Night',
        bookRating: '4.0',
        bookAuthor: 'Holly Black',
        bookPrice: '\$9.99',
        bookCategory: 'Fantasy',
        numberOfPages: 200,
        bookSynopsis: booksOnSaleSynopsis[0],
        bookHeaderText: booksOnSaleHeaderText[0],
        bookText: booksOnSaleFullText[0],
        onTap: () => bookOnSaleOnPressed(
          BookOnSaleView(
            backgroundColorOfBook: CustomColors.yellow,
            bookImage: CustomImages.homePageThirdBook,
            bookName: 'Book of Night',
            bookRating: '4.0',
            bookAuthor: 'Holly Black',
            bookPrice: '\$9.99',
            bookCategory: 'Fantasy',
            numberOfPages: 200,
            bookSynopsis: booksOnSaleSynopsis[0],
            bookHeaderText: booksOnSaleHeaderText[0],
            bookText: booksOnSaleFullText[0],
            onTap: () {},
          ),
        ),
      ),
      BookOnSaleView(
        backgroundColorOfBook: CustomColors.orange,
        bookImage: CustomImages.homePageFourthBook,
        bookName: 'The Wolf Den',
        bookRating: '4.8',
        bookAuthor: 'Elodie Harper',
        bookPrice: '\$6.99',
        bookCategory: 'Fantasy',
        numberOfPages: 300,
        bookSynopsis: booksOnSaleSynopsis[1],
        bookHeaderText: booksOnSaleHeaderText[1],
        bookText: booksOnSaleFullText[1],
        onTap: () => bookOnSaleOnPressed(
          BookOnSaleView(
            backgroundColorOfBook: CustomColors.orange,
            bookImage: CustomImages.homePageFourthBook,
            bookName: 'The Wolf Den',
            bookRating: '4.8',
            bookAuthor: 'Elodie Harper',
            bookPrice: '\$6.99',
            bookCategory: 'Fantasy',
            numberOfPages: 300,
            bookSynopsis: booksOnSaleSynopsis[1],
            bookHeaderText: booksOnSaleHeaderText[1],
            bookText: booksOnSaleFullText[1],
            onTap: () {},
          ),
        ),
      ),
      BookOnSaleView(
        backgroundColorOfBook: CustomColors.secondBlue,
        bookImage: CustomImages.homePageFifthBook,
        bookName: 'A River Enchanted',
        bookRating: '4.8',
        bookAuthor: 'Holly Black',
        bookPrice: '\$9.99',
        bookCategory: 'Fantasy',
        numberOfPages: 280,
        bookSynopsis: booksOnSaleSynopsis[2],
            bookHeaderText: booksOnSaleHeaderText[2],
            bookText: booksOnSaleFullText[2],
        onTap: () => bookOnSaleOnPressed(
          BookOnSaleView(
            backgroundColorOfBook: CustomColors.secondBlue,
            bookImage: CustomImages.homePageFifthBook,
            bookName: 'A River Enchanted',
            bookRating: '4.8',
            bookAuthor: 'Holly Black',
            bookPrice: '\$9.99',
            bookCategory: 'Fantasy',
            numberOfPages: 280,
            bookSynopsis: booksOnSaleSynopsis[2],
            bookHeaderText: booksOnSaleHeaderText[2],
            bookText: booksOnSaleFullText[2],
            onTap: () {},
          ),
        ),
      ),
      BookOnSaleView(
        backgroundColorOfBook: CustomColors.red,
        bookImage: CustomImages.homePageSixthBook,
        bookName: 'These Violent Delights',
        bookRating: '4.9',
        bookAuthor: 'Holly Black',
        bookPrice: '\$9.99',
        bookCategory: 'Fantasy',
        numberOfPages: 432,
        bookSynopsis: booksOnSaleSynopsis[3],
            bookHeaderText: booksOnSaleHeaderText[3],
            bookText: booksOnSaleFullText[3],
        onTap: () => bookOnSaleOnPressed(
          BookOnSaleView(
            backgroundColorOfBook: CustomColors.red,
            bookImage: CustomImages.homePageSixthBook,
            bookName: 'These Violent Delights',
            bookRating: '4.9',
            bookAuthor: 'Holly Black',
            bookPrice: '\$9.99',
            bookCategory: 'Fantasy',
            numberOfPages: 432,
            bookSynopsis: booksOnSaleSynopsis[3],
            bookHeaderText: booksOnSaleHeaderText[3],
            bookText: booksOnSaleFullText[3],
            onTap: () {},
          ),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        centerTitle: false,
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleSpacing: 20,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontFamily: CustomFonts.playfairDisplay,
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: CustomColors.black,
            ),
            children: [
              TextSpan(text: CustomStrings.homePageFirstAppBarText),
              TextSpan(
                text: CustomStrings.homePageSecondAppBarText,
                style: TextStyle(color: CustomColors.pink),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Image(
              image: CustomIcons.notification,
              width: 40,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),

          /// #header text field
          const CustomTextFieldView(),
          const SizedBox(height: 24),

          /// #categories
          const BookCategoriesView(),
          const SizedBox(height: 25),

          /// #continue reading header text
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              CustomStrings.homePageContinueReadingHeaderText,
              style: TextStyle(
                fontFamily: CustomFonts.playfairDisplay,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: CustomColors.black,
              ),
            ),
          ),
          const SizedBox(height: 12),

          /// #continue reading books
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              children: [
                const SizedBox(width: 20),

                /// #book
                ReadBookView(
                  color: CustomColors.blue,
                  image: CustomImages.homePageFirstBook,
                  bookName: readBooks[0][0],
                  bookAuthor: readBooks[0][1],
                  bookProgress: readBooks[0][2],
                  buttonOnPressed: () {},
                ),
                const SizedBox(width: 25),

                /// #book
                ReadBookView(
                  color: CustomColors.secondWhiteGrey,
                  image: CustomImages.homePageSecondBook,
                  bookName: readBooks[0][0],
                  bookAuthor: readBooks[0][1],
                  bookProgress: readBooks[0][2],
                  buttonOnPressed: () {},
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 25),

          /// #best sellers body text
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              CustomStrings.homePageBestSellersBodyText,
              style: TextStyle(
                fontFamily: CustomFonts.playfairDisplay,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: CustomColors.black,
              ),
            ),
          ),
          const SizedBox(height: 15),

          /// #best seller books
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: (340 * 4 ~/ 2).toDouble(),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 25,
                  childAspectRatio: 160 / 275,
                ),
                itemCount: 4,
                itemBuilder: (_, i) {
                  return booksOnSale[i];
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBarViewHomePage(),
    );
  }
}
