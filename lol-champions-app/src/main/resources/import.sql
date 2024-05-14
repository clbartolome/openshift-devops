-- Import Script for testing and local dev

CREATE TABLE IF NOT EXISTS champion ( 
  id serial PRIMARY KEY, 
  name VARCHAR (50), 
  title VARCHAR ( 255 ),
  position VARCHAR ( 255 ));

INSERT INTO champion(id, name, title, position ) VALUES (266,'Aatrox','the Darkin Blade','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (103,'Ahri','the Nine-Tailed Fox','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (84,'Akali','the Rogue Assassin','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (166,'Akshan','the Rogue Sentinel','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (12,'Alistar','the Minotaur','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (32,'Amumu','the Sad Mummy','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (34,'Anivia','the Cryophoenix','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (1,'Annie','the Dark Child','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (523,'Aphelios','the Weapon of the Faithful','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (22,'Ashe','the Frost Archer','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (136,'Aurelion Sol','The Star Forger','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (268,'Azir','the Emperor of the Sands','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (432,'Bard','the Wandering Caretaker','Support');
INSERT INTO champion(id, name, title, position ) VALUES (200,'BelVeth','the Empress of the Void','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (53,'Blitzcrank','the Great Steam Golem','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (63,'Brand','the Burning Vengeance','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (201,'Braum','the Heart of the Freljord','Support');
INSERT INTO champion(id, name, title, position ) VALUES (233,'Briar','the Restrained Hunger','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (51,'Caitlyn','the Sheriff of Piltover','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (164,'Camille','the Steel Shadow','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (69,'Cassiopeia','the Serpents Embrace','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (31,'ChoGath','the Terror of the Void','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (42,'Corki','the Daring Bombardier','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (122,'Darius','the Hand of Noxus','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (131,'Diana','Scorn of the Moon','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (119,'Draven','the Glorious Executioner','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (36,'Dr. Mundo','the Madman of Zaun','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (245,'Ekko','the Boy Who Shattered Time','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (60,'Elise','the Spider Queen','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (28,'Evelynn','Agonys Embrace','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (81,'Ezreal','the Prodigal Explorer','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (9,'Fiddlesticks','the Ancient Fear','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (114,'Fiora','the Grand Duelist','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (105,'Fizz','the Tidal Trickster','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (3,'Galio','the Colossus','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (41,'Gangplank','the Saltwater Scourge','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (86,'Garen','The Might of Demacia','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (150,'Gnar','the Missing Link','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (79,'Gragas','the Rabble Rouser','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (104,'Graves','the Outlaw','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (887,'Gwen','The Hallowed Seamstress','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (120,'Hecarim','the Shadow of War','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (74,'Heimerdinger','the Revered Inventor','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (420,'Illaoi','the Kraken Priestess','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (39,'Irelia','the Blade Dancer','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (427,'Ivern','the Green Father','Support');
INSERT INTO champion(id, name, title, position ) VALUES (40,'Janna','the Storms Fury','Support');
INSERT INTO champion(id, name, title, position ) VALUES (59,'Jarvan IV','the Exemplar of Demacia','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (24,'Jax','Grandmaster at Arms','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (126,'Jayce','the Defender of Tomorrow','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (202,'Jhin','the Virtuoso','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (222,'Jinx','the Loose Cannon','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (145,'KaiSa','Daughter of the Void','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (429,'Kalista','the Spear of Vengeance','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (43,'Karma','the Enlightened One','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (30,'Karthus','the Deathsinger','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (38,'Kassadin','the Void Walker','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (55,'Katarina','the Sinister Blade','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (10,'Kayle','the Righteous','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (141,'Kayn','the Shadow Reaper','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (85,'Kennen','the Heart of the Tempest','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (121,'KhaZix','the Voidreaver','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (203,'Kindred','The Eternal Hunters','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (240,'Kled','the Cantankerous Cavalier','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (96,'KogMaw','the Mouth of the Abyss','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (897,'KSante','the Pride of Nazumah','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (7,'LeBlanc','the Deceiver','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (64,'Lee Sin','the Blind Monk','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (89,'Leona','the Radiant Dawn','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (876,'Lillia','the Bashful Bloom','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (127,'Lissandra','the Ice Witch','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (236,'Lucian','the Purifier','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (117,'Lulu','the Fae Sorceress','Support');
INSERT INTO champion(id, name, title, position ) VALUES (99,'Lux','the Lady of Luminosity','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (54,'Malphite','Shard of the Monolith','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (90,'Malzahar','the Prophet of the Void','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (57,'Maokai','the Twisted Treant','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (11,'Master Yi','the Wuju Bladesman','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (902,'Milio','The Gentle Flame','Support');
INSERT INTO champion(id, name, title, position ) VALUES (21,'Miss Fortune','the Bounty Hunter','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (62,'Wukong','the Monkey King','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (82,'Mordekaiser','the Iron Revenant','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (25,'Morgana','the Fallen','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (950,'Naafiri','the Hound of a Hundred Bites','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (267,'Nami','the Tidecaller','Support');
INSERT INTO champion(id, name, title, position ) VALUES (75,'Nasus','the Curator of the Sands','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (111,'Nautilus','the Titan of the Depths','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (518,'Neeko','the Curious Chameleon','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (76,'Nidalee','the Bestial Huntress','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (895,'Nilah','the Joy Unbound','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (56,'Nocturne','the Eternal Nightmare','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (20,'Nunu & Willump','the Boy and His Yeti','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (2,'Olaf','the Berserker','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (61,'Orianna','the Lady of Clockwork','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (516,'Ornn','The Fire below the Mountain','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (80,'Pantheon','the Unbreakable Spear','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (78,'Poppy','Keeper of the Hammer','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (555,'Pyke','the Bloodharbor Ripper','Support');
INSERT INTO champion(id, name, title, position ) VALUES (246,'Qiyana','Empress of the Elements','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (133,'Quinn','Demacias Wings','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (497,'Rakan','The Charmer','Support');
INSERT INTO champion(id, name, title, position ) VALUES (33,'Rammus','the Armordillo','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (421,'RekSai','the Void Burrower','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (526,'Rell','the Iron Maiden','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (888,'Renata Glasc','the Chem-Baroness','Support');
INSERT INTO champion(id, name, title, position ) VALUES (58,'Renekton','the Butcher of the Sands','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (107,'Rengar','the Pridestalker','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (92,'Riven','the Exile','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (68,'Rumble','the Mechanized Menace','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (13,'Ryze','the Rune Mage','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (360,'Samira','the Desert Rose','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (113,'Sejuani','Fury of the North','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (235,'Senna','the Redeemer','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (147,'Seraphine','the Starry-Eyed Songstress','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (875,'Sett','the Boss','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (35,'Shaco','the Demon Jester','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (98,'Shen','the Eye of Twilight','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (102,'Shyvana','the Half-Dragon','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (27,'Singed','the Mad Chemist','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (14,'Sion','The Undead Juggernaut','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (15,'Sivir','the Battle Mistress','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (72,'Skarner','the Crystal Vanguard','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (37,'Sona','Maven of the Strings','Support');
INSERT INTO champion(id, name, title, position ) VALUES (16,'Soraka','the Starchild','Support');
INSERT INTO champion(id, name, title, position ) VALUES (50,'Swain','the Noxian Grand General','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (517,'Sylas','the Unshackled','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (134,'Syndra','the Dark Sovereign','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (223,'Tahm Kench','The River King','Support');
INSERT INTO champion(id, name, title, position ) VALUES (163,'Taliyah','the Stoneweaver','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (91,'Talon','the Blades Shadow','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (44,'Taric','the Shield of Valoran','Support');
INSERT INTO champion(id, name, title, position ) VALUES (17,'Teemo','the Swift Scout','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (412,'Thresh','the Chain Warden','Support');
INSERT INTO champion(id, name, title, position ) VALUES (18,'Tristana','the Yordle Gunner','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (48,'Trundle','the Troll King','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (23,'Tryndamere','the Barbarian King','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (4,'Twisted Fate','the Card Master','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (29,'Twitch','the Plague Rat','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (77,'Udyr','the Spirit Walker','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (6,'Urgot','the Dreadnought','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (110,'Varus','the Arrow of Retribution','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (67,'Vayne','the Night Hunter','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (45,'Veigar','the Tiny Master of Evil','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (161,'VelKoz','the Eye of the Void','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (711,'Vex','the Gloomist','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (254,'Vi','the Piltover Enforcer','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (234,'Viego','The Ruined King','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (112,'Viktor','the Machine Herald','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (8,'Vladimir','the Crimson Reaper','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (106,'Volibear','the Relentless Storm','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (19,'Warwick','the Uncaged Wrath of Zaun','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (498,'Xayah','the Rebel','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (101,'Xerath','the Magus Ascendant','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (5,'Xin Zhao','the Seneschal of Demacia','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (157,'Yasuo','the Unforgiven','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (777,'Yone','the Unforgotten','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (83,'Yorick','Shepherd of Souls','Fighter');
INSERT INTO champion(id, name, title, position ) VALUES (350,'Yuumi','the Magical Cat','Support');
INSERT INTO champion(id, name, title, position ) VALUES (154,'Zac','the Secret Weapon','Tank');
INSERT INTO champion(id, name, title, position ) VALUES (238,'Zed','the Master of Shadows','Assassin');
INSERT INTO champion(id, name, title, position ) VALUES (221,'Zeri','The Spark of Zaun','Marksman');
INSERT INTO champion(id, name, title, position ) VALUES (115,'Ziggs','the Hexplosives Expert','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (26,'Zilean','the Chronokeeper','Support');
INSERT INTO champion(id, name, title, position ) VALUES (142,'Zoe','the Aspect of Twilight','Mage');
INSERT INTO champion(id, name, title, position ) VALUES (143,'Zyra','Rise of the Thorns','Mage');

ALTER SEQUENCE IF EXISTS hibernate_sequence RESTART WITH 1000;