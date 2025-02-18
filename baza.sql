-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 05:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmfeature`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmovi`
--

CREATE TABLE `filmovi` (
  `id` int(11) NOT NULL,
  `naslov` varchar(255) NOT NULL,
  `sazetak` text NOT NULL,
  `opis` text NOT NULL,
  `zanr` varchar(50) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `prikazi` tinyint(1) DEFAULT NULL,
  `datum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmovi`
--

INSERT INTO `filmovi` (`id`, `naslov`, `sazetak`, `opis`, `zanr`, `slika`, `prikazi`, `datum`) VALUES
(1, 'The Dark Knight', 'Batman se suočava s nemilosrdnim zlikovcem Jokerom, koji pokušava baciti Gotham City u kaos.', '\"The Dark Knight\" je kriminalistički akcijski film koji je postao kultni klasik. Batman, sada već etablirani superheroj, suočava se s najvećim izazovom u karijeri - zlikovcem po imenu Joker, čiji je cilj baciti Gotham City u potpuni kaos. Kroz složenu priču o moralnim dilemama, pravdi i zlu, film nas vodi na uzbudljivo putovanje koje će nas držati na rubu sjedala do samog kraja.\r\n', 'Akcijski', 'slike/thedarkknight.jpg', 0, '2008-07-18'),
(2, 'Spirited Away', 'Desetogodišnja djevojčica Chihiro putuje u čudesni svijet duhova kako bi spasila svoje roditelje i pronašla put natrag u stvarni svijet.', '\"Spirited Away\" je remek-djelo japanskog redatelja Hayao Miyazakija. Priča prati desetogodišnju djevojčicu Chihiro koja se na neočekivan način nađe u svijetu duhova i čudesa. Kako bi spasila svoje roditelje i pronašla put natrag u stvarni svijet, Chihiro mora naučiti snalažljivost i hrabrost. Kroz prekrasnu animaciju, duboke teme i nevjerojatnu maštovitost, \"Spirited Away\" je film koji će oduševiti publiku svih dobnih skupina.\r\n', 'Animirani', 'slike/spiritedaway.jpeg', 0, '2001-07-20'),
(3, 'Psycho', 'Mlada žena pokušava pronaći nestalog gosta u tajanstvenom motelu koji vodi psihički nestabilan vlasnik.', '\"Psycho\" je klasik horora koji je ostavio dubok trag u filmskoj industriji. Film prati mladu ženu Marion Crane koja, nakon krađe novca, traži sklonište u motelu koji vodi tajanstveni Norman Bates. Međutim, brzo otkriva da stvari u motelu nisu onakve kakvima se čine. Kroz napetu atmosferu, iznenađujuće preokrete i nezaboravne scene, \"Psycho\" nas uvlači u mračni um psihički nestabilnog vlasnika motela i ostavlja nas zapanjenima do samog kraja.\r\n', 'Horror', 'slike/psyco.jpeg', 0, '1960-06-16'),
(4, 'The Grand Budapest Hotel', 'Gustave H., legendarni upravitelj hotela, upleten je u krađu i ubojstvo nakon što mu je ostavljeno naslijeđe vrijedno umjetničko djelo.', '\"The Grand Budapest Hotel\" je ekscentrična komedija koja nas vodi na uzbudljivo putovanje kroz 20. stoljeće. Priča prati Gustavea H., legendarnog upravitelja hotela, koji je upleten u krađu i ubojstvo nakon što mu je ostavljeno naslijeđe vrijedno umjetničko djelo. Kroz niz nevjerojatnih događaja, nezaboravnih likova i urnebesnih situacija, film nas vodi na putovanje koje će nas nasmijati i zadiviti svojom originalnošću i šarmom.\r\n', 'Komedija', 'slike/grandbudapesthotel.jpeg', 0, '2014-03-28'),
(5, 'The Matrix', 'Programer Neo otkriva istinu o stvarnosti koja je zapravo simulacija stvorena od strane umjetne inteligencije koja kontrolira ljude.', '\"The Matrix\" je kultni film koji je revolucionirao akcijski žanr. Priča prati programera Nea koji otkriva da je stvarnost u kojoj živi zapravo simulacija stvorena od strane umjetne inteligencije koja kontrolira ljudsku vrstu. Kroz nevjerojatne akcijske scene, filozofske teme i vizualno impresivne efekte, \"The Matrix\" nas uvlači u futuristički svijet u kojem stvarnost nije ono što se čini. Ovaj film ostavlja dubok dojam i potiče nas na razmišljanje o prirodi stvarnosti i slobode.\r\n', 'Akcijski', 'slike/thematrix.jpeg', 0, '1999-03-31'),
(6, 'Thor: Ragnarok', 'Thor se bori za spašavanje Asgarda od propasti u rukama misterioznog i moćnog zlog boga, Hela.', '\"Thor: Ragnarok\" donosi epsku akciju, fantastične efekte i urnebesnu komediju u Marvelovom svemiru. Kada se Thor suoči s prijetnjom uništenja Asgarda od strane nemilosrdne Hela-e, on se nađe zarobljen na udaljenom planetu Sakaar. Tu se udružuje s Hulk-om, bivšim saveznikom, i drugim nevjerojatnim likovima kako bi srušio Hela-u i spasio svoj narod. Uz spektakularne bitke, nevjerojatne vizuale i neočekivane obrate, \"Thor: Ragnarok\" je avantura za cijelu obitelj.\r\n', 'Akcijski', 'slike/thor.jpeg', 0, '2017-11-03'),
(7, 'Shrek', 'Zeleni ogr sa prevelikim srcem, Shrek, kreće se na epsko putovanje kako bi spasio princezu od zlog zmaja i vratio mir u svoje močvare.', '\"Shrek\" je moderna bajka koja je osvojila srca publike diljem svijeta. Shrek, zeleni ogr s nekonvencionalnim načinima, kreće na putovanje kako bi spasio princezu Fionu od zlog zmaja kako bi povratio mir u svoje močvare. Uz humor, avanturu i nezaboravne likove, \"Shrek\" nas uči važnim lekcijama o prijateljstvu, prihvaćanju različitosti i pravom značenju ljubavi.\r\n', 'Animirani', 'slike/shrek.jpeg', 0, '2001-05-18'),
(8, 'The Conjuring', 'Paranormalni istraživači Ed i Lorraine Warren pomažu obitelji koja je uznemirena zlom prisutnošću u njihovoj kući.', '\"The Conjuring\" je napeti horor koji se temelji na istinitim događajima. Ed i Lorraine Warren, poznati paranormalni istraživači, susreću se s jednim od najstrašnijih slučajeva u svojoj karijeri kada pomažu obitelji suočenoj s demonskom prisutnošću u njihovoj kući. Kroz napetu atmosferu, zastrašujuće scene i duboke likove, \"The Conjuring\" će vam držati srce u grlu dok vas vodi na putovanje u neistražene dubine paranormalnog svijeta.\r\n', 'Horror', 'slike/conjuring.jpeg', 1, '2013-07-19'),
(9, 'Inception', 'Vješt lopov ulazi u snove drugih kako bi izvukao vrijedne informacije iz njih, ali se suočava s izazovom u misiji da ugradi ideju umjesto da je ukrade.', '\"Inception\" je filmski spektakl koji će vas ostaviti bez daha. U svijetu gdje se tehnologija omogućuje ulazak u snove drugih, vješti lopov Cobb ulazi u umove mete kako bi izvukao vrijedne informacije. Međutim, njegova najnovija misija iziskuje da umetne ideju umjesto da je ukrade, što predstavlja izazov kakav dosad nije susreo. Kroz složenu priču, neočekivane preokrete i vizualno zadivljujuće scene, \"Inception\" je film koji će vas provesti kroz labirinte uma i stvarnosti.\r\n', 'Science Fiction', 'slike/inception.jpeg', 0, '2010-07-16'),
(10, 'Avatar', 'Marine Jake Sully preuzima misiju na planetu Pandora gdje se sprijatelji s domorocima i bori se protiv vojne prisutnosti korporacija.', '\"Avatar\" je revolucionarno filmsko remek-djelo koje nas uvodi u svijet Pandora, egzotičnu i opasnu planetu naseljenu domorocima Navi. Marine Jake Sully preuzima misiju infiltriranja među Navi kako bi pridobio njihovo povjerenje i pristup dragocjenim resursima. Međutim, kako se sve više povezuje s Navi zajednicom\r\n', 'Science Fiction', 'slike/avatar.jpeg', 0, '2009-12-18'),
(11, 'Deadpool', 'Bivši specijalni operativac pretvara se u plaćenog plaćenika nakon što mu je dijagnosticiran rak, ali nakon eksperimentalnog tretmana stječe nevjerojatnu brzinu zacjeljivanja i postaje antiheroj.', '\"Deadpool\" je nekonvencionalni superherojski film koji je osvojio srca publike svojim jedinstvenim humorom i stilom. Glavni lik, Wade Wilson, podvrgava se eksperimentalnom tretmanu kako bi izliječio rak, ali umjesto toga stječe nevjerojatne moći ozdravljenja, ali i težak ožiljak na licu. Pod imenom Deadpool, postaje plaćeni plaćenik i kreće se na misiju osvete protiv ljudi koji su ga uništili. Kroz nevjerojatne akcijske scene, urnebesni humor i česte prekide četvrtog zida, Deadpool nas vodi na nevjerojatno putovanje koje nas nasmijava i zadivljuje.\r\n', 'Akcijski', 'slike/deadpool.jpeg', 0, '2016-02-12'),
(12, 'The Lion King', 'Simba, mladi lav princ, bježi nakon smrti svog oca, kralja Mufase, ali se kasnije vraća kako bi preuzeo svoje pravo na prijestolje.', '\"The Lion King\" je klasik Disneyjevih animiranih filmova koji je osvojio srca generacija svojom nevjerojatnom pričom, prekrasnom glazbom i impresivnim animacijama. Priča prati mladog lava, Simbu, koji bježi nakon tragedije koja je zadesila njegovu obitelj. Kroz svoje avanture u divljini, Simba odrasta i uči važne životne lekcije o hrabrosti, prijateljstvu i odgovornosti. S nezaboravnim likovima poput duhovitog Timaona i Pumbaa, hrabrog Nale, i zlog Scar-a, \"The Lion King\" je film koji nas podsjeća na moć ljubavi, obitelji i hrabrosti.\r\n', 'Animirani', 'slike/lk.png', 0, '2019-07-19'),
(13, 'Get Out', 'Mladi Afroamerikanac posjećuje kuću svoje djevojke roditelja gdje otkriva mračnu tajnu obitelji.', '\"Get Out\" je horor film koji istražuje teme rasnih predrasuda i manipulacije na dubok i zastrašujući način. Glavni lik, Chris, posjećuje kuću svoje djevojke roditelja za vikend, ali brzo otkriva da je obitelj nije ono što se čini. Kroz napetu atmosferu i iznenađujuće zaplete, film nas vodi na putovanje u tajanstveni svijet u kojem se stvarnost isprepliće s iluzijom. \"Get Out\" je film koji će vam držati srce u grlu dok se sve više uranjate u tajne koje skriva kuća.\r\n', 'Horror', 'slike/getout.jpeg', 1, '2017-02-24'),
(14, 'Interstellar', 'Grupa astronauta putuje kroz crvotočinu u potrazi za novim domom za ljudsku rasu nakon što Zemlja postane nenaseljiva.', '\"Interstellar\" je epski znanstveno-fantastični film koji istražuje granice ljudske istraživačke želje i ljubavi. U bliskoj budućnosti, Zemlja je na rubu propasti, prisiljavajući grupu astronauta na hrabar podvig - putovanje kroz crvotočinu u potrazi za novim domom za ljudsku rasu. Kroz svoje putovanje kroz nepoznati svemir, oni se suočavaju s nevjerojatnim izazovima i otkrivaju tajne koje mijenjaju sve što su ikad znali. \"Interstellar\" je film koji nas podiže iznad naših svakodnevnih briga i vodi nas na putovanje kroz vrijeme i prostor, ostavljajući nas s osjećajem divljenja prema ljudskoj hrabrosti i istraživačkoj žudnji.\r\n', 'Science Fiction', 'slike/inters.jpeg', 0, '2014-11-07'),
(15, 'The Hangover', 'Nakon divljeg momačkog vikenda u Las Vegasu, trojica prijatelja probude se bez sjećanja na prethodnu noć i bez zaručnika.', '\"The Hangover\" je urnebesna komedija koja nas vodi na nezaboravnu avanturu kroz Las Vegas. Nakon divljeg momačkog vikenda, tri prijatelja se bude s glavoboljom, ali bez sjećanja na prethodnu noć i bez zaručnika. Kroz niz nevjerojatnih situacija, oni moraju rekonstruirati događaje iz prošle noći kako bi pronašli svog nestalog prijatelja i izbjegli katastrofu. \"The Hangover\" je film koji vas neće samo nasmijati do suza, već će vas i pods\r\n', 'Komedija', 'slike/hangover.jpeg', 1, '2009-06-05'),
(16, 'Avengers: Infinity War', 'Avengersi udružuju snage s saveznicima kako bi zaustavili moćnog negativca Thanosa od uništenja polovice svemira.', '\"Avengers: Infinity War\" je epski spektakl koji okuplja sve omiljene Marvelove junake u borbi protiv najmoćnijeg negativca dosad. Thanos, tiranski vladar, želi prikupiti sve Infinity Stones kako bi imao neograničenu moć nad svemirom. Avengersi i njihovi saveznici udružuju snage kako bi ga zaustavili, ali borba je teška i puna gubitaka. Kroz epske bitke, neočekivane obrate i duboke emocije, \"Avengers: Infinity War\" ostavlja dubok dojam i priprema teren za završni obračun.\r\n', 'Akcijski', 'slike/aiw.jpeg', 0, '2018-04-27'),
(17, 'Finding Nemo', 'Otac riba, Marlin, kreće na epsko putovanje kako bi pronašao svog izgubljenog sina, Nema, koji je zarobljen u akvariju.', '\"Finding Nemo\" je animirani klasik koji je osvojio srca gledatelja svojom toplom pričom i nevjerojatnom animacijom. Marlin, preplašeni otac riba, kreće na hrabro putovanje kroz oceane kako bi pronašao svog izgubljenog sina, Nema, koji je zarobljen u akvariju. Kroz svoje avanture, on susreće raznolike likove poput Dory, ribe s kratkim pamćenjem, i brkate školjke po imenu Bruce. \"Finding Nemo\" je film o ljubavi, hrabrosti i važnosti obitelji.\r\n', 'Animirani', 'slike/fn.jpeg', 0, '2003-05-30'),
(18, 'The Exorcist', 'Katolički svećenik pokušava izvesti egzorcizam na mladoj djevojci koju je opsjela demonska sila.', '\"The Exorcist\" je ikonični horor film koji je šokirao i fascinirao publiku diljem svijeta. Priča prati mladu djevojku Regan koja postaje opsjednuta demonskom silom, prisiljavajući njezinu majku da zatraži pomoć katoličkog svećenika. Kroz napetu atmosferu, jezive scene i duboke teme vjere i zla, \"The Exorcist\" je film koji vas tjera da se zapitate o granicama ljudske duše i prisustva nadnaravnog.\r\n', 'Horror', 'slike/exorcist.jpeg', 0, '1973-12-26'),
(19, 'Back to the Future', 'Tinejdžer putuje kroz vrijeme u DeLoreanu kako bi spriječio niz nezgoda koje bi mogle uništiti njegovu budućnost.', '\"Back to the Future\" je klasik znanstveno-fantastičnog žanra koji je osvojio srca gledatelja svojom originalnom pričom i šarmantnim likovima. Marty McFly putuje kroz vrijeme u DeLoreanu kako bi spriječio niz nezgoda koje bi mogle uništiti njegovu budućnost. Kroz svoje avanture u prošlosti i budućnosti, on nauči važne lekcije o prijateljstvu, obitelji i odgovornosti. \"Back to the Future\" je film koji će vam donijeti smijeh, uzbuđenje i dozu nostalgije.\r\n', 'Science Fiction', 'slike/btf.jpeg', 0, '1985-07-03'),
(20, 'Monty Python and the Holy Grail', 'Skupina vitezova kreće na epsko putovanje kako bi pronašli Sveti gral, ali nailaze na razne smiješne prepreke.', '\"Monty Python and the Holy Grail\" je kultna komedija koja nas vodi na urnebesno putovanje kroz srednjovjekovni svijet. Skupina neobičnih vitezova kreće na epsku potragu za Svetim gralom, ali put nije ništa manje nego smiješan. Kroz svoje avanture, oni susreću razne čudne likove, smiješne prepreke i apsurdne situacije. \"Monty Python and the Holy Grail\" je film koji će vas nasmijati do suza svojim britanskim humorom i ludim iznenađenjima.\r\n', 'Komedija', 'slike/monty.jpeg', 0, '1975-05-23'),
(21, 'The Shawshank Redemption', 'Bankovni menadžer biva osuđen za ubojstvo svoje supruge i njezinog ljubavnika te pokušava pronaći nadu u zatvoru.', '\"The Shawshank Redemption\" je remek-djelo koje istražuje snagu ljudskog duha usred najtežih okolnosti. Bankovni menadžer Andy Dufresne osuđen je za ubojstvo svoje supruge i njezinog ljubavnika i završava u zatvoru.\r\n', 'Komedija', 'slike/sr.jpeg', 0, '1994-10-14'),
(22, 'The Silence of the Lambs', 'Mlada FBI agentica konzultira zatvorenog serijskog ubojicu, dr. Lectera, kako bi pomogla u hvatanju drugog serijskog ubojice poznatog kao Buffalo Bill.', '\"The Silence of the Lambs\" je napeti triler koji nas uvlači u mračni svijet serijskih ubojica i psihopata. Mlada FBI agentica Clarice Starling konzultira zatvorenog serijskog ubojicu, dr. Lectera, kako bi dobila uvid u um drugog serijskog ubojice, poznatog kao Buffalo Bill. Kroz napetu atmosferu, složene likove i jezive scene, film nas vodi na uzbudljivo putovanje u potrazi za istinom i pravdom.\r\n', 'Akcijski', 'slike/lambs.jpeg', 0, '1991-02-14'),
(23, 'Forrest Gump', 'Forrest Gump, čovjek s nižim IQ-om, prolazi kroz nevjerojatne događaje u američkoj povijesti dok pokušava ostvariti svoje snove i pronaći ljubav.', '\"Forrest Gump\" je nevjerojatna priča o običnom čovjeku koji živi neobičan život. Forrest Gump, čovjek s nižim IQ-om, prolazi kroz nevjerojatne događaje u američkoj povijesti, od ratova do sportskih događaja, dok pokušava ostvariti svoje snove i pronaći pravu ljubav. Kroz svoju iskrenost, dobrotu i nevjerojatnu sreću, Forrest Gump postaje ikona i inspiracija za sve nas.\r\n', 'Komedija', 'slike/gump.jpeg', 0, '1994-07-06'),
(24, 'Gladiator', 'General Maksimus postaje rob gladijator kako bi osvetio smrt svoje obitelji i vratio pravdu u Rimsko Carstvo.', '\"Gladiator\" je epski povijesni film koji nas vodi u drevni Rim i svijet gladijatora. Nakon što je izdan od strane cara, general Maksimus postaje rob gladijator, boreći se za svoj život u arenama dok sanja o osveti i pravdi. Kroz nevjerojatne bitke, političke spletkama i emocionalne trenutke, \"Gladiator\" je film koji nas drži prikovane uz ekran dok pratimo Maksimusa na njegovoj epskoj potrazi za istinom i osvetom.\r\n', 'Akcijski', 'slike/gladiator.jpeg', 0, '2000-05-05'),
(25, 'The Godfather', 'Don Vito Corleone, mafijaški vođa, prenosi vlast na svog sina Michaela dok se obitelj bori s rivalitetima i korupcijom.', '\"The Godfather\" je klasik kriminalističkog žanra koji je definirao generaciju filmskih ljubitelja. Priča prati Dona Vito Corleonea, mafijaškog vođu, dok prenosi vlast na svog sina Michaela dok se obitelj bori s rivalitetima i korupcijom. Kroz svoje složene likove, duboke moralne dileme i nezaboravne dijaloge, \"The Godfather\" je film koji će vas držati prikovane uz ekran dok otkrivate složeni svijet mafije i obiteljske lojalnosti.\r\n', 'Akcijski', 'slike/godfather.jpeg', 0, '1972-03-24'),
(26, 'The Departed', 'Mladi policajac infiltira irski mafijaški klan dok istovremeno tajni informator irskog mafijaškog klana infiltrira policiju.', '\"The Departed\" je napeti triler koji istražuje igru tajni i laži u svijetu mafije i policije. Mladi policajac Billy Costigan infiltira irski mafijaški klan dok istovremeno tajni informator irskog mafijaškog klana infiltrira policiju. Kroz složenu mrežu izdaje i zavjera, film nas vodi na uzbudljivo putovanje gdje svaki lik skriva svoje tajne.', 'Akcijski', 'slike/dep.jpeg', 0, '2006-10-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmovi`
--
ALTER TABLE `filmovi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmovi`
--
ALTER TABLE `filmovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
