
        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Acadian_Flycatcher', 
            'Acadian Flycatcher', 
            'Empidonax virescens', 
            'The Acadian flycatcher (Empidonax virescens) is a small insect-eating bird of the tyrant flycatcher family....', 
            'https://en.wikipedia.org/wiki/Acadian_flycatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Acorn_Woodpecker', 
            'Acorn Woodpecker', 
            'Melanerpes formicivorus', 
            'The acorn woodpecker (Melanerpes formicivorus) is a medium-sized woodpecker with a length of around 20 cm (8 in), and an average weight of 85 g (3.0 oz). It is found across Central America, as well as North into the western United States and South into parts of Colombia....', 
            'https://en.wikipedia.org/wiki/Acorn_woodpecker'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Avocet', 
            'American Avocet', 
            'Recurvirostra americana', 
            'The American avocet (Recurvirostra americana) is a large wader in the avocet and stilt family, Recurvirostridae, found in North America. It spends much of its time foraging in shallow water or on mud flats, often sweeping its bill from side to side in water as it seeks crustacean and insect prey....', 
            'https://en.wikipedia.org/wiki/American_avocet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Black_Duck', 
            'American Black Duck', 
            'Anas rubripes', 
            'The American black duck (Anas rubripes) is a large dabbling duck in the family Anatidae. It was described by William Brewster in 1902. It is the heaviest species in the genus Anas, weighing 720–1,640 g (1.6–3.6 lb) on average and measuring 54–59 cm (21–23 in) in length with an 88–95 cm (35–37 in) wingspan. It somewhat resembles the female and eclipse male mallard in coloration, but has a darker plumage. The male and female are generally similar in appearance, but the male''s bill is yellow while the female''s is dull green with dark marks on the upper mandible. It is native to eastern North Amer...', 
            'https://en.wikipedia.org/wiki/American_black_duck'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Coot', 
            'American Coot', 
            'Fulica americana', 
            'The American coot (Fulica americana), also known as a mud hen or pouldeau, is a bird of the family Rallidae. Though commonly mistaken for ducks, American coots are only distantly related to ducks, belonging to a separate order. Unlike the webbed feet of ducks, coots have broad, lobed scales on their lower legs and toes that fold back with each step to facilitate walking on dry land. Coots live near water, typically inhabiting wetlands and open water bodies in North America. Groups of coots are called covers or rafts. The oldest known coot lived to be 22 years old.
The American coot is a migrat...', 
            'https://en.wikipedia.org/wiki/American_coot'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Crow', 
            'American Crow', 
            'Corvus brachyrhynchos', 
            'The American crow (Corvus brachyrhynchos) is a large passerine bird species of the family Corvidae. They are a common bird found throughout much of North America, only absent from the tundra biome. American crows are the New World counterpart to the carrion crow and the hooded crow of Eurasia, occupying similar ecological niches.
American crows have all-black plumage, with iridescent feathers. They look similar to other all-black corvids. They are highly intelligent, similar to other Corvidae, and are adaptable to human environments. 
The American crow can be distinguished from the common rave...', 
            'https://en.wikipedia.org/wiki/American_crow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Dipper', 
            'American Dipper', 
            'Cinclus mexicanus', 
            'The American dipper (Cinclus mexicanus), also known as a water ouzel, is a semiaquatic bird species native to western North America and parts of Central America....', 
            'https://en.wikipedia.org/wiki/American_dipper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Goldfinch', 
            'American Goldfinch', 
            'Spinus tristis', 
            'The American goldfinch (Spinus tristis) is a small North American bird in the finch family. It is migratory, ranging from mid-Alberta to North Carolina during the breeding season, and from just south of the Canada–United States border to Mexico during the winter.
The only finch in its subfamily to undergo a complete molt, the American goldfinch displays sexual dichromatism: the male is a vibrant yellow in the summer and an olive color during the winter, while the female is a dull yellow-brown shade which brightens only slightly during the summer. The male displays brightly colored plumage duri...', 
            'https://en.wikipedia.org/wiki/American_goldfinch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Kestrel', 
            'American Kestrel', 
            'Falco sparverius', 
            'The American kestrel (Falco sparverius) is the smallest and most common falcon in North America. Though it has been called the American sparrowhawk, this common name is a misnomer; the American kestrel is a true falcon, while neither the Eurasian sparrowhawk nor the other species called sparrowhawks are in the Falconidae family, hence only very distantly related to the American kestrel. It has a roughly two-to-one range in size over subspecies and sex, varying in size from about the weight of a blue jay to a mourning dove.  It also ranges to South America and is a well-established species that...', 
            'https://en.wikipedia.org/wiki/American_kestrel'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Oystercatcher', 
            'American Oystercatcher', 
            'Haematopus palliatus', 
            'The American oystercatcher (Haematopus palliatus), occasionally called the American pied oystercatcher, is a member of family Haematopodidae. Originally called the "sea pie", it was renamed in 1731 when naturalist Mark Catesby claimed that he had observed the bird eating oysters. The current population of American oystercatchers is estimated to be 43,000. There are estimated to be 1,500 breeding pairs along the Atlantic and Gulf Coasts of the US. The bird is marked by its black and white body and a long, thick orange beak....', 
            'https://en.wikipedia.org/wiki/American_oystercatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Pipit', 
            'American Pipit', 
            'Anthus rubescens', 
            'The American pipit (Anthus rubescens), formerly known as the buff-bellied pipit, is a small songbird native to North America. It was first described by Marmaduke Tunstall in his 1771 Ornithologia Britannica. It was formerly classified as a form of the water pipit. The former subspecies, Siberian pipit, is now considered a distinct species....', 
            'https://en.wikipedia.org/wiki/American_pipit'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Redstart', 
            'American Redstart', 
            'Setophaga ruticilla', 
            'The American redstart (Setophaga ruticilla) is a New World warbler. It is unrelated to the Old World (common) redstart....', 
            'https://en.wikipedia.org/wiki/American_redstart'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Robin', 
            'American Robin', 
            'Turdus migratorius', 
            'The American robin (Turdus migratorius) is a migratory bird of the true thrush genus and Turdidae, the wider thrush family. It is named after the European robin because of its reddish-orange breast, though the two species are not closely related, with the European robin belonging to the Old World flycatcher family. The American robin is widely distributed throughout North America, wintering from southern Canada to central Mexico and along the Pacific coast.
According to the Partners in Flight database (2019), the American robin is the most abundant landbird in North America (with 370 million i...', 
            'https://en.wikipedia.org/wiki/American_robin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Tree_Sparrow', 
            'American Tree Sparrow', 
            'Spizelloides arborea', 
            'The American tree sparrow (Spizelloides arborea), also known as the winter sparrow, is a medium-sized New World sparrow. It breeds in Alaska and Northern Canada and winters in Southern Canada and the Contiguous United States. It is the only member of the genus Spizelloides....', 
            'https://en.wikipedia.org/wiki/American_tree_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_White_Pelican', 
            'American White Pelican', 
            'Pelecanus erythrorhynchos', 
            'The American white pelican (Pelecanus erythrorhynchos) is a large aquatic soaring bird from the order Pelecaniformes. It breeds in interior North America, moving south and to the coasts, as far as Costa Rica, in winter....', 
            'https://en.wikipedia.org/wiki/American_white_pelican'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Wigeon', 
            'American Wigeon', 
            'Mareca americana', 
            'The American wigeon (Mareca americana), also known as the baldpate, is a species of dabbling duck found in North America. Formerly assigned to Anas, this species is classified with the other wigeons in the dabbling duck genus Mareca. It is the New World counterpart of the Eurasian wigeon....', 
            'https://en.wikipedia.org/wiki/American_wigeon'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'American_Woodcock', 
            'American Woodcock', 
            'Scolopax minor', 
            'The American woodcock (Scolopax minor), sometimes colloquially referred to as the timberdoodle, mudbat, bogsucker, night partridge, or Labrador twister is a small shorebird species found primarily in the eastern half of North America. Woodcocks spend most of their time on the ground in brushy, young-forest habitats, where the birds'' brown, black, and gray plumage provides excellent camouflage.
The American woodcock is the only species of woodcock inhabiting North America. Although classified with the sandpipers and shorebirds in the family Scolopacidae, the American woodcock lives mainly in up...', 
            'https://en.wikipedia.org/wiki/American_woodcock'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Anhinga', 
            'Anhinga', 
            '; Anhinga anhinga', 
            'The anhinga (; Anhinga anhinga), sometimes called snakebird, darter, American darter, or water turkey, is a water bird of the warmer parts of the Americas. The word anhinga comes from a''ñinga in the Brazilian Tupi language and means "devil bird" or "snake bird". The origin of the name is apparent when swimming: only the neck appears above water, so the bird looks like a snake ready to strike. They do not have external nares (nostrils) and breathe solely through their epiglottis.
The anhinga is placed in the darter family, Anhingidae, and is closely related to Indian (Anhinga melanogaster), Afr...', 
            'https://en.wikipedia.org/wiki/Anhinga'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Anna_Hummingbird', 
            'Anna Hummingbird', 
            'Calypte anna', 
            'Anna''s hummingbird (Calypte anna) is a North American species of hummingbird  named after Anna Masséna, Duchess of Rivoli.
It is native to western coastal regions of North America. Until the late 20th century, Anna''s hummingbirds migrated from locations as far north as Alaska and coastal British Columbia, returning south to breed in Baja California and Southern California. 
Since the 1970s, ornamental plants in residential areas along the Pacific coast and inland deserts provided expanded nectar and nesting sites, allowing the species to expand its breeding range to northern coastal regions wi...', 
            'https://en.wikipedia.org/wiki/Anna%27s_hummingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Artic_Tern', 
            'Artic Tern', 
            'Sterna paradisaea', 
            'The Arctic tern (Sterna paradisaea) is a tern in the family Laridae. This bird has a circumpolar breeding distribution covering the Arctic and sub-Arctic regions of Europe (as far south as Brittany), Asia, and North America (as far south as Massachusetts). The species is strongly migratory, seeing two summers each year as it migrates along a convoluted route from its northern breeding grounds to the Antarctic coast for the southern summer and back again about six months later. Recent studies have shown average annual round-trip lengths of about 70,900 km (38,300 nmi) for birds nesting in Icela...', 
            'https://en.wikipedia.org/wiki/Arctic_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bald_Eagle', 
            'Bald Eagle', 
            'Haliaeetus leucocephalus', 
            'The bald eagle (Haliaeetus leucocephalus) is a bird of prey found in North America. A sea eagle, it has two known subspecies and forms a species pair with the white-tailed eagle (Haliaeetus albicilla), which occupies the same niche as the bald eagle in the Palearctic. Its range includes most of Canada and Alaska, all of the contiguous United States, and northern Mexico. It is found near large bodies of open water with an abundant food supply and old-growth trees for nesting.
The bald eagle is an opportunistic feeder that subsists mainly on fish, upon which it swoops down and snatches from the ...', 
            'https://en.wikipedia.org/wiki/Bald_eagle'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Baltimore_Oriole', 
            'Baltimore Oriole', 
            'Icterus galbula', 
            'The Baltimore oriole (Icterus galbula) is a small icterid blackbird common in eastern North America as a migratory breeding bird. It received its name from the resemblance of the male''s colors to those on the coat-of-arms of 17th-century Lord Baltimore.  Observations of interbreeding between the Baltimore oriole and the western Bullock''s oriole Icterus bullockii, led to both being classified as a single species, called the northern oriole, from 1973 to 1995. Research by James Rising, a professor of zoology at the University of Toronto, and others showed that the two birds actually did not inte...', 
            'https://en.wikipedia.org/wiki/Baltimore_oriole'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bank_Swallow', 
            'Bank Swallow', 
            'Riparia riparia', 
            'The sand martin (Riparia riparia), also known as the collared sand martin or common sand martin, and in the Americas as the bank swallow, is a migratory passerine bird in the swallow family Hirundinidae. It has a wide range in summer, embracing practically the whole Holarctic area, from Europe, across Asia to the Pacific Ocean, and throughout North America. It winters in eastern and southern Africa, southern Asia, and South America....', 
            'https://en.wikipedia.org/wiki/Sand_martin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Barn_Owl', 
            'Barn Owl', 
            'Unknown', 
            'The barn owls, owls in the genus Tyto, are the most widely distributed genus of owls in the world. They are medium-sized owls with large heads and characteristic heart-shaped faces. They have long, strong legs with powerful talons. The term may be used to describe:

The whole family Tytonidae, though this also includes the bay owls in the genus Phodilus
Tyto, the largest genus of birds in Tytonidae, and particularly these species in that genus:
Three species that are sometimes considered to be a single species known as barn owl or common barn owl:
Western barn owl Tyto alba, from Europe, Afric...', 
            'https://en.wikipedia.org/wiki/Barn_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Barn_Swallow', 
            'Barn Swallow', 
            'Hirundo rustica', 
            'The barn swallow (Hirundo rustica) is the most widespread species of swallow in the world, occurring on all continents, with vagrants reported even in Antarctica. It is a distinctive passerine bird with blue upperparts and a long, deeply forked tail. In Anglophone Europe, it is just called the swallow; in northern Europe, it is the only member of family Hirundinidae called a "swallow" rather than a "martin".
There are six subspecies of barn swallow, which breed across the Northern Hemisphere. Two subspecies, (H. r. savignii and H. r. transitiva) have fairly restricted ranges in the Nile valley...', 
            'https://en.wikipedia.org/wiki/Barn_swallow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Barred_Owl', 
            'Barred Owl', 
            'Strix varia', 
            'The barred owl (Strix varia), also known as the northern barred owl, striped owl or, more informally, hoot owl or eight-hooter owl, is a North American large species of owl. A member of the true owl family, Strigidae, they belong to the genus Strix, which is also the origin of the family''s name under Linnaean taxonomy. Barred owls are largely native to eastern North America, but have expanded their range to the west coast of North America where they are considered invasive. Mature forests are their preferred habitat, but they can also acclimatise to various gradients of open woodlands. Their d...', 
            'https://en.wikipedia.org/wiki/Barred_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Belted_Kingfisher', 
            'Belted Kingfisher', 
            'Megaceryle alcyon', 
            'The belted kingfisher (Megaceryle alcyon) is a large, conspicuous water kingfisher, native to North America....', 
            'https://en.wikipedia.org/wiki/Belted_kingfisher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Guillemot', 
            'Black Guillemot', 
            'Cepphus grylle', 
            'The black guillemot or tystie (Cepphus grylle) is a medium-sized seabird of the Alcidae family, native throughout northern Atlantic coasts and eastern North American coasts. It is resident in much of its range, but large populations from the high arctic migrate southwards in winter. The bird can be seen in and around its breeding habitat of rocky shores, cliffs and islands in single or smalls groups of pairs. They feed mainly by diving towards the sea floor feeding on fish, crustaceans or other benthic invertebrates. They are listed on the IUCN red list as a species of least concern.
Both sexe...', 
            'https://en.wikipedia.org/wiki/Black_guillemot'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Legged_Kittiwake', 
            'Black Legged Kittiwake', 
            'Rissa tridactyla', 
            'The black-legged kittiwake (Rissa tridactyla) is a seabird species in the gull family Laridae. This species was first described by Carl Linnaeus in his landmark 1758 10th edition of Systema Naturae as Larus tridactylus. The English name is derived from its call, a shrill ''kittee-wa-aaake, kitte-wa-aaake''. In North America, this species is known as the black-legged kittiwake to differentiate it from the red-legged kittiwake, but in Europe, where it is the only member of the genus, it is often known just as kittiwake....', 
            'https://en.wikipedia.org/wiki/Black-legged_kittiwake'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Oystercatcher', 
            'Black Oystercatcher', 
            'Haematopus bachmani', 
            'The black oystercatcher (Haematopus bachmani) is a conspicuous black bird found on the shoreline of western North America, ranging from the Aleutian Islands of Alaska to the coast of the Baja California peninsula.
It is the only representative of the oystercatcher family (Haematopodidae) over most of its range, overlapping slightly with the American oystercatcher (H. palliatus) on the coast of Baja California. Within its range it is most commonly referred to as the black oystercatcher, although this name is also used locally for the blackish oystercatcher and the African oystercatcher. Its sci...', 
            'https://en.wikipedia.org/wiki/Black_oystercatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Phoebe', 
            'Black Phoebe', 
            'Sayornis nigricans', 
            'The black phoebe (Sayornis nigricans) is a passerine bird in the tyrant-flycatcher family. It breeds from southwest Oregon and California south through Central and South America. It occurs year-round throughout most of its range and migrates less than the other birds in its genus though its northern populations are partially migratory. Six subspecies are commonly recognized although two are occasionally combined as a separate species, the white-winged phoebe.
The black phoebe has predominantly black plumage, with a white belly and undertail coverts. The sexes are identical in color, and juveni...', 
            'https://en.wikipedia.org/wiki/Black_phoebe'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Rosy_Finch', 
            'Black Rosy Finch', 
            'Leucosticte atrata', 
            'The black rosy finch or black rosy-finch (Leucosticte atrata) is a species of passerine bird in the family Fringillidae native to alpine areas above treeline, of the western United States. It is the most range-restricted member of its genus, and a popular photography subject for birdwatchers....', 
            'https://en.wikipedia.org/wiki/Black_rosy_finch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Scoter', 
            'Black Scoter', 
            'Melanitta americana', 
            'The black scoter or American scoter (Melanitta americana) is a large sea duck, 43 to 49 cm (17 to 19 in) in length. The genus name is derived from Ancient Greek melas "black" and netta "duck". The species name is from the Latin for "American".
Together with the common scoter M. nigra, it forms the subgenus Oidemia; the two are sometimes considered conspecific, the black scoter then being referred to as M. nigra americana. Its French name, used in parts of its Canadian range, is macreuse noire (also meaning "black scoter"). The species is listed as Near Threatened by the IUCN....', 
            'https://en.wikipedia.org/wiki/Black_scoter'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Skimmer', 
            'Black Skimmer', 
            'Rynchops niger', 
            'The black skimmer (Rynchops niger) is a tern-like seabird, one of three similar bird species in the skimmer genus Rynchops in the gull family Laridae. It breeds in North and South America. Northern populations winter in the warmer waters of the Caribbean and the tropical and subtropical Pacific and Atlantic coasts, but South American populations make only shorter movements in response to annual floods which extend their feeding areas in the river shallows....', 
            'https://en.wikipedia.org/wiki/Black_skimmer'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Tern', 
            'Black Tern', 
            'Chlidonias niger', 
            'The black tern (Chlidonias niger) is a small tern generally found in or near inland water that breeds in Europe, Western Asia and North America. In winter the birds migrate to coastal areas of Africa and South America....', 
            'https://en.wikipedia.org/wiki/Black_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Turnstone', 
            'Black Turnstone', 
            'Arenaria melanocephala', 
            'The black turnstone (Arenaria melanocephala) is a species of small wading bird. It is one of two species of turnstone in the genus Arenaria, the ruddy turnstone (A. interpres) being the other. It is now classified in the sandpiper family, Scolopacidae, but was formerly sometimes placed in the plover family, Charadriidae. It is native to the west coast of North America and breeds only in Alaska....', 
            'https://en.wikipedia.org/wiki/Black_turnstone'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Black_Vulture', 
            'Black Vulture', 
            'Coragyps atratus', 
            'The black vulture (Coragyps atratus), also known as the American black vulture, Mexican vulture, zopilote, urubu, or gallinazo, is a bird in the New World vulture family whose range extends from the southeastern United States to Peru, Central Chile and Uruguay in South America, and common throughout Brazil where it can be seen in large scavenging groups. Although a common and widespread species, it has a somewhat more restricted distribution than its compatriot, the turkey vulture, which breeds well into Canada and all the way south to Tierra del Fuego. It is the only extant member of the genu...', 
            'https://en.wikipedia.org/wiki/Black_vulture'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Blackburnian_Warbler', 
            'Blackburnian Warbler', 
            'Setophaga fusca', 
            'The Blackburnian warbler (Setophaga fusca) is a small New World warbler. They breed in eastern North America, from southern Canada, westwards to the southern Canadian Prairies, the Great Lakes region and New England, to North Carolina. They are migratory, wintering in southern Central America and South America, and are very rare vagrants to western Europe. The common name honors the English botanist Anna Blackburne....', 
            'https://en.wikipedia.org/wiki/Blackburnian_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Blackpoll_Warbler', 
            'Blackpoll Warbler', 
            'Setophaga striata', 
            'The blackpoll warbler (Setophaga striata) is a New World warbler. Breeding males are mostly black and white. They have a prominent black cap, white cheeks, and white wing bars. The blackpoll breeds in forests of northern North America, from Alaska throughout most of Canada, to the Adirondack Mountains of New York as well as New England in the Northeastern United States. They are a common migrant throughout much of North America. In fall, they fly south to the Greater Antilles and the northeastern coasts of South America in a non-stop long-distance migration over open water, averaging 2,500 km ...', 
            'https://en.wikipedia.org/wiki/Blackpoll_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Blue_Grosbeak', 
            'Blue Grosbeak', 
            'Passerina caerulea', 
            'The blue grosbeak (Passerina caerulea), is a medium-sized North American passerine bird in the cardinal family Cardinalidae. It is mainly migratory, wintering in Central America and breeding in northern Mexico and the southern United States. The male is blue with two brown wing bars. The female is mainly brown with scattered blue feathers on the upperparts and two brown wing bars....', 
            'https://en.wikipedia.org/wiki/Blue_grosbeak'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Blue_Jay', 
            'Blue Jay', 
            'Cyanocitta cristata', 
            'The blue jay (Cyanocitta cristata) is a passerine bird in the family Corvidae, native to eastern North America. It lives in most of the eastern and central United States; some eastern populations may be migratory. Resident populations are also in Newfoundland, Canada; breeding populations are found across southern Canada. It breeds in both deciduous and coniferous forests, and is common in residential areas. Its coloration is predominantly blue, with a white chest and underparts, and a blue crest; it has a black, U-shaped collar around its neck and a black border behind the crest. Males and fe...', 
            'https://en.wikipedia.org/wiki/Blue_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bobolink', 
            'Bobolink', 
            'Dolichonyx oryzivorus', 
            'The bobolink (Dolichonyx oryzivorus) is a small New World blackbird and the only member of the genus Dolichonyx. An old name for this species is the "rice bird", from its tendency to feed on cultivated grains during winter and migration. The bobolink breeds in the summer in the United States and Canada, with most of the summer range in the northern U.S. Bobolinks winter in southern South America, primarily Paraguay, Argentina, and Bolivia. Bobolink numbers are rapidly declining due to factors such as agricultural intensification and habitat loss; they are considered threatened in Canada, and a...', 
            'https://en.wikipedia.org/wiki/Bobolink'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bohemian_Waxwing', 
            'Bohemian Waxwing', 
            'Bombycilla garrulus', 
            'The Bohemian waxwing (Bombycilla garrulus) is a starling-sized passerine bird that breeds in the northern forests of the Palearctic and North America. It has mainly buff-grey plumage, black face markings and a pointed crest. Its wings are patterned with white and bright yellow, and some of the wing feathers have red tips, the resemblance of which to sealing wax gives these birds their common name. The two or three subspecies show only minor differences in appearance. Females are similar to males, although young birds are less well-marked and have few or no waxy wingtips. Although the Bohemian ...', 
            'https://en.wikipedia.org/wiki/Bohemian_waxwing'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Boreal_Chickadee', 
            'Boreal Chickadee', 
            'Poecile hudsonicus', 
            'The boreal chickadee (Poecile hudsonicus) is a small passerine songbird in the tit family Paridae. It is found in the boreal forests of Alaska, Canada and the northern United States and remains within this range all year. This bird is known for its high pitched trill patterns used in communication with other birds and food storage habits in preparation for winter months....', 
            'https://en.wikipedia.org/wiki/Boreal_chickadee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Brant', 
            'Brant', 
            'Unknown', 
            'Brant may refer to:...', 
            'https://en.wikipedia.org/wiki/Brant'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bridled_Titmouse', 
            'Bridled Titmouse', 
            'Baeolophus wollweberi', 
            'The bridled titmouse (Baeolophus wollweberi) is a small songbird, a passerine bird in the tit family Paridae.
These birds range from 11.5 – 12.7 cm. (4.5 to 5 in.) long. It is small, crested and gray with a black and white patterned face, a black bib. Its crest is boarded with black and white (sometimes gray) underparts. A standard nest ranges from 5 – 9 eggs colored white, speckled, or reddish brown.
Their preferred habitat are oak or oak-juniper mixed woodland riparian areas of mountains in eastern and southeastern Arizona – (the Mogollon Plateau and White Mountains of Arizona), and extreme ...', 
            'https://en.wikipedia.org/wiki/Bridled_titmouse'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bronzed_Cowbird', 
            'Bronzed Cowbird', 
            'Molothrus aeneus', 
            'The bronzed cowbird (Molothrus aeneus), also known as the red-eyed cowbird, is a small icterid native to North America....', 
            'https://en.wikipedia.org/wiki/Bronzed_cowbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Brown_Creeper', 
            'Brown Creeper', 
            'Certhia americana', 
            'The brown creeper (Certhia americana), also known as the American treecreeper, is a small songbird, the only North American member of the treecreeper family Certhiidae....', 
            'https://en.wikipedia.org/wiki/Brown_creeper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Brown_Pelican', 
            'Brown Pelican', 
            'Pelecanus occidentalis', 
            'The brown pelican (Pelecanus occidentalis) is a bird of the pelican family, Pelecanidae, one of three species found in the Americas and one of two that feed by diving into water. It is found on the Atlantic Coast from New Jersey to the mouth of the Amazon River, and along the Pacific Coast from British Columbia to Peru, including the Galapagos Islands. The nominate subspecies in its breeding plumage has a white head with a yellowish wash on the crown. The nape and neck are dark maroon–brown. The upper sides of the neck have white lines along the base of the gular pouch, and the lower fore neck...', 
            'https://en.wikipedia.org/wiki/Brown_pelican'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Brown_Thrasher', 
            'Brown Thrasher', 
            'Toxostoma rufum', 
            'The brown thrasher (Toxostoma rufum), sometimes erroneously called the brown thrush or fox-coloured thrush, is a bird in the family Mimidae, which also includes the New World catbirds and mockingbirds. The brown thrasher is abundant throughout the eastern and central United States and southern and central Canada, and it is the only thrasher to live primarily east of the Rockies and central Texas. It is the state bird of Georgia.
As a member of the genus Toxostoma, the bird is relatively large-sized among the other thrashers. It has brown upper parts with a white under part with dark streaks. B...', 
            'https://en.wikipedia.org/wiki/Brown_thrasher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bufflehead', 
            'Bufflehead', 
            'Bucephala albeola', 
            'The bufflehead (Bucephala albeola) is a small sea duck of the genus Bucephala, the goldeneyes. It breeds in Alaska and Canada and migrates in winter to southern North America. This species was first described by Carl Linnaeus in his landmark 1758 10th edition of Systema Naturae as Anas albeola....', 
            'https://en.wikipedia.org/wiki/Bufflehead'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Burrowing_Owl', 
            'Burrowing Owl', 
            'Athene cunicularia', 
            'The burrowing owl (Athene cunicularia), also called the shoco, is a small, long-legged, primarily terrestrial—though not flightless—species of owl native to the open landscapes of North and South America. They are typically found in grasslands, rangelands, agricultural areas, deserts, or any other open, dry area with low vegetation. They nest and roost in burrows, and, despite their common name, do not often construct these dwellings themselves, rather repurposing disused burrows or tunnels previously excavated and inhabited by other species, such as American badgers (Taxidea taxus), foxes (Vu...', 
            'https://en.wikipedia.org/wiki/Burrowing_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Bushtit', 
            'Bushtit', 
            'Unknown', 
            'The bushtits or long-tailed tits are small passerine birds from the family Aegithalidae, containing 13 species in three genera, all but one of which (Psaltriparus) are found in Eurasia. Bushtits are active birds with long tails compared to their size, moving almost constantly while they forage for insects in shrubs and trees. During non-breeding season, birds live in flocks of up to 50 individuals. Several bushtit species display cooperative breeding behavior, also called helpers at the nest....', 
            'https://en.wikipedia.org/wiki/Aegithalidae'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cackling_Goose', 
            'Cackling Goose', 
            'Branta hutchinsii', 
            'The cackling goose (Branta hutchinsii) is a species of goose found in North America and East Asia....', 
            'https://en.wikipedia.org/wiki/Cackling_goose'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cactus_Wren', 
            'Cactus Wren', 
            'Campylorhynchus brunneicapillus', 
            'The cactus wren (Campylorhynchus brunneicapillus) is a species of wren that is endemic to the deserts of the southwestern United States and northern and central Mexico. It is the state bird of Arizona, and the largest wren in the United States. Its plumage is brown, with black and white spots as markings. It has a distinctive white eyebrow that sweeps to the nape of the neck. The chest is white, whereas the underparts are cinnamon-buff colored. Both sexes appear similar. The tail, as well as flight feathers, are barred in black and white. Their song is a loud raspy chirrup; akin in the descrip...', 
            'https://en.wikipedia.org/wiki/Cactus_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'California_Gull', 
            'California Gull', 
            'Larus californicus', 
            'The California gull (Larus californicus) is a medium-sized gull, smaller on average than the herring gull, but larger on average than the ring-billed gull (though it may overlap in size with both). Although named after California, it can be found annually across most of western North America, from the Canadian prairie provinces in the northeast and south through western Mexico....', 
            'https://en.wikipedia.org/wiki/California_gull'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'California_Quail', 
            'California Quail', 
            'Callipepla californica', 
            'The California quail (Callipepla californica), also known as the California valley quail or Valley quail, is a small ground-dwelling bird in the New World quail family. These birds have a curving crest, plume or topknot   made of six feathers, that droops forward: black in males and brown in females; the flanks are brown with white streaks. Males have a dark brown cap and a black face with a brown back, a grey-blue chest and a light brown belly. Females and immature birds are mainly grey-brown with a light-colored belly.
Their closest relative is Gambel''s quail, which has a more southerly dist...', 
            'https://en.wikipedia.org/wiki/California_quail'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'California_Thrasher', 
            'California Thrasher', 
            'Toxostoma redivivum', 
            'The California thrasher (Toxostoma redivivum) is a large member of family Mimidae found primarily in chaparral habitat in California in the United States and Baja California in Mexico. It is the only species of the genus Toxostoma throughout most of its range....', 
            'https://en.wikipedia.org/wiki/California_thrasher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'California_Towhee', 
            'California Towhee', 
            'Melozone crissalis', 
            'The California towhee (Melozone crissalis) is a bird of the family Passerellidae, native to the coastal regions of western Oregon and California in the United States and Baja California  and Baja California Sur in Mexico.
The taxonomy of this species has been debated. At the higher level, some authors place the towhees in the family Fringillidae. Within the group, there has been debate about whether the distinction between this species and the similar canyon towhee (Melozone fuscus) should be at the specific or subspecific level. The two species used to be grouped together as the brown towhee,...', 
            'https://en.wikipedia.org/wiki/California_towhee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Calliope_Hummingbird', 
            'Calliope Hummingbird', 
            ' kə-LY-ə-pee; Selasphorus calliope', 
            'The calliope hummingbird ( kə-LY-ə-pee; Selasphorus calliope) is the smallest bird native to the United States and Canada. It has a western breeding range mainly from California to British Columbia, and migrates to the Southwestern United States, Mexico, and Central America for its wintering grounds. The calliope hummingbird is the smallest known long-distance bird migrant, completing  migrations twice per year of some 9,000 km (5,600 mi).
It was previously considered the only member of the genus Stellula (meaning little star), but research evidence suggests its existing placement in the genus...', 
            'https://en.wikipedia.org/wiki/Calliope_hummingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Canada_Goose', 
            'Canada Goose', 
            'Branta canadensis', 
            'The Canada goose (Branta canadensis) is a large species of goose with a black head and neck, white cheeks, white under its chin, and a brown body. It is native to the arctic and temperate regions of North America, and it is occasionally found during migration across the Atlantic in northern Europe. It has been introduced to France, the United Kingdom, Ireland, Scandinavia, New Zealand, Japan, Chile, Argentina, and the Falkland Islands. Like most geese, the Canada goose is primarily herbivorous and normally migratory; often found on or close to fresh water, the Canada goose is also common in br...', 
            'https://en.wikipedia.org/wiki/Canada_goose'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Canada_Warbler', 
            'Canada Warbler', 
            'Cardellina canadensis', 
            'The Canada warbler (Cardellina canadensis) is a small boreal songbird of the New World warbler family (Parulidae). It summers in Canada and northeastern United States and winters in northern South America....', 
            'https://en.wikipedia.org/wiki/Canada_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Canvasback', 
            'Canvasback', 
            'Aythya valisineria', 
            'The canvasback (Aythya valisineria) is a species of diving duck, the largest found in North America....', 
            'https://en.wikipedia.org/wiki/Canvasback'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Canyon_Towhee', 
            'Canyon Towhee', 
            'Melozone fusca', 
            'The canyon towhee (Melozone fusca) is a bird of the family Passerellidae.  Until 1989, the canyon towhee and the California towhee were considered to be a single species which was called the brown towhee....', 
            'https://en.wikipedia.org/wiki/Canyon_towhee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Canyon_Wren', 
            'Canyon Wren', 
            'Catherpes mexicanus', 
            'The canyon wren (Catherpes mexicanus) is a small North American songbird of the wren family Troglodytidae. A non-migratory species, these birds are found throughout western North America in dry, rocky environments such as cliffs, outcrops, and canyons. It is a small bird that is hard to see on its rocky habitat, and is often located by its loud distinctive song. It is currently in a monotypic taxon and is the only species in the genus Catherpes....', 
            'https://en.wikipedia.org/wiki/Canyon_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cape_Glossy_Starling', 
            'Cape Glossy Starling', 
            'Lamprotornis nitens', 
            'The Cape starling (Lamprotornis nitens), also known as red-shouldered glossy-starling or Cape glossy starling, is a species of starling in the family Sturnidae. It is found in Southern Africa, where it lives in woodlands, bushveld and in suburbs....', 
            'https://en.wikipedia.org/wiki/Cape_starling'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cape_May_Warbler', 
            'Cape May Warbler', 
            'Setophaga tigrina', 
            'The Cape May warbler (Setophaga tigrina) is a species of New World warbler. It breeds in northern North America. Its breeding range spans all but the westernmost parts of southern Canada, the Great Lakes region, and New England. It is migratory, wintering in the West Indies. This species is a very rare vagrant to western Europe, with two records in Britain as of October 2013. The English name refers to Cape May, New Jersey, where George Ord collected the specimen that was later described by Alexander Wilson....', 
            'https://en.wikipedia.org/wiki/Cape_May_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cardinal', 
            'Cardinal', 
            'Catholic Church', 
            'Cardinal or The Cardinal most commonly refers to

Cardinal (Catholic Church), a senior official of the Catholic Church
Member of the College of Cardinals
Cardinal number in mathematics
Large cardinal
Cardinal direction, one of the primary directions: north, south, east, and west
Cardinal or The Cardinal may also refer to:...', 
            'https://en.wikipedia.org/wiki/Cardinal'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Carolina_Chickadee', 
            'Carolina Chickadee', 
            'Poecile carolinensis', 
            'The Carolina chickadee (Poecile carolinensis) is a small passerine bird in the tit family Paridae....', 
            'https://en.wikipedia.org/wiki/Carolina_chickadee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Carolina_Wren', 
            'Carolina Wren', 
            'Thryothorus ludovicianus', 
            'The Carolina wren (Thryothorus ludovicianus) is a species of wren that is common in the Eastern United States, the extreme south of Ontario, Canada, and the extreme northeast of Mexico. Severe winters restrict the northern limits of their range, while favorable weather conditions lead to a northward extension of their breeding range. Their preferred habitat is in dense cover in forest, farm edges, and suburban areas. This wren is the state bird of South Carolina.
Seven recognized subspecies occur across the range of these wrens and they differ slightly in song and appearance. The birds are gen...', 
            'https://en.wikipedia.org/wiki/Carolina_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Caspian_Tern', 
            'Caspian Tern', 
            'Hydroprogne caspia', 
            'The Caspian tern (Hydroprogne caspia) is the world''s largest species of tern, with a subcosmopolitan but scattered distribution. Despite its extensive range, it is monotypic of its genus, and has no accepted subspecies. The genus name is from Ancient Greek hudro-, "water-", and Latin progne, "swallow". The specific caspia is from Latin and, like the English name, refers to the Caspian Sea....', 
            'https://en.wikipedia.org/wiki/Caspian_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cattle_Egret', 
            'Cattle Egret', 
            'formerly genus Bubulcus', 
            'The cattle egrets (formerly genus Bubulcus) are a cosmopolitan clade of herons (family Ardeidae) in the genus Ardea found in the tropics, subtropics, warm temperate, and increasingly in cooler temperate zones. As currently treated, the clade contains two species, the western cattle egret and the eastern cattle egret, although some authorities (particularly in the past) regarded them as a single species. Despite the similarities in plumage to the egrets of the genus Egretta, they have recently been found to be genetically embedded within the genus Ardea, and are now included there. Originally n...', 
            'https://en.wikipedia.org/wiki/Cattle_egret'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cave_Swallow', 
            'Cave Swallow', 
            'Petrochelidon fulva', 
            'The cave swallow (Petrochelidon fulva) is a medium-sized, squarish-tailed swallow belonging to the same genus as the more familiar and widespread cliff swallow of North America. The cave swallow, also native to the Americas, nests and roosts primarily in caves and sinkholes.
Cave swallows are found in Mexico and the Greater Antilles, with fall and winter vagrants reaching the east and Gulf Coasts of the U.S. Breeding colonies occur in south-eastern New Mexico, Texas, Florida, the Greater Antilles, portions of southern Mexico, and along the west coast of South America. Five subspecies are curre...', 
            'https://en.wikipedia.org/wiki/Cave_swallow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cedar_Waxwing', 
            'Cedar Waxwing', 
            'Bombycilla cedrorum', 
            'The cedar waxwing (Bombycilla cedrorum) is a member of the family Bombycillidae or waxwing family of passerine birds. It is a medium-sized bird that is mainly brown, gray, and yellow. Some of the wing feathers have red tips which resemble sealing wax, giving these birds their common name. It is a native of North and Central America, breeding in open wooded areas in southern Canada and wintering in the southern half of the United States, Central America, and the far northwest of South America. Its diet includes cedar cones, fruit, holly berries, and insects. The cedar waxwing is listed as least...', 
            'https://en.wikipedia.org/wiki/Cedar_waxwing'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cerulean_Warbler', 
            'Cerulean Warbler', 
            'Setophaga cerulea', 
            'The cerulean warbler (Setophaga cerulea) is a small songbird in the family Parulidae. It is a long-distance migrant, breeding in eastern North American hardwood forests and wintering on the Eastern slope of the Andes in South America during non-breeding season, preferring subtropical forests.
It displays strong sexual dichromatism: Adult males have cerulean blue and white upperparts, with a black necklace across the breast and black streaks on the back and flanks. Females and immature birds have bluish-green upperparts, a pale stripe over the eye, no streaking, and are yellow below. All have t...', 
            'https://en.wikipedia.org/wiki/Cerulean_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Chihuahuan_Raven', 
            'Chihuahuan Raven', 
            'Corvus cryptoleucus', 
            'The Chihuahuan raven (Corvus cryptoleucus) is a species in the family Corvidae that is native to the United States and Mexico....', 
            'https://en.wikipedia.org/wiki/Chihuahuan_raven'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Chimney_Swift', 
            'Chimney Swift', 
            'Chaetura pelagica', 
            'The chimney swift (Chaetura pelagica) is a bird belonging to the swift family Apodidae. A member of the genus Chaetura, it is closely related to both Vaux''s swift and Chapman''s swift; in the past, the three were sometimes considered to be conspecific. It has no subspecies. The chimney swift is a medium-sized, sooty gray bird with very long, slender wings and very short legs. Like all swifts, it is incapable of perching on flat surfaces, and can only perch on vertical surfaces. Many fly around all day and only come down at night when roosting.
The chimney swift feeds primarily on flying insects...', 
            'https://en.wikipedia.org/wiki/Chimney_swift'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Chipping_Sparrow', 
            'Chipping Sparrow', 
            'Spizella passerina', 
            'The chipping sparrow (Spizella passerina) is a species of New World sparrow, a passerine bird in the family Passerellidae. It is widespread, fairly tame, and common across most of its North American range.
The chipping sparrow has five subspecies. This bird is a partial migrant with northerly populations flying southwards in the fall to overwinter in Mexico and the southern United States, and flying northward again in spring.
It molts twice a year. In its breeding plumage it has orangish-rust upper parts, gray head and underparts and a distinctive reddish cap. In non-breeding plumage, the cap ...', 
            'https://en.wikipedia.org/wiki/Chipping_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cinnamon_Teal', 
            'Cinnamon Teal', 
            'Spatula cyanoptera', 
            'The cinnamon teal (Spatula cyanoptera) is a species of duck found in western North and South America. It is a small dabbling duck, with bright reddish plumage on the male and duller brown plumage on the female. It lives in marshes and ponds, and feeds mostly on plants. The cinnamon teal duck is closely related to the north american dabbling duck.(Wilson et al.)...', 
            'https://en.wikipedia.org/wiki/Cinnamon_teal'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cliff_Swallow', 
            'Cliff Swallow', 
            'Unknown', 
            'Petrochelidon is a genus of birds known as cliff-nesting swallows....', 
            'https://en.wikipedia.org/wiki/Petrochelidon'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Eider', 
            'Common Eider', 
            'Unknown', 
            'The common eider (pronounced ) (Somateria mollissima), also called St. Cuthbert''s duck or Cuddy''s duck, is a large (50–71 cm (20–28 in) in body length) sea-duck that is distributed over the northern coasts of Europe, North America and eastern Siberia. It breeds in Arctic and some northern temperate regions, but winters somewhat farther south in temperate zones, when it can form large flocks on coastal waters. It can fly at speeds up to 113 km/h (70 mph).
The eider''s nest is built close to the sea and is lined with eiderdown, plucked from the female''s breast. This soft and warm lining has long ...', 
            'https://en.wikipedia.org/wiki/Common_eider'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Gallinule', 
            'Common Gallinule', 
            'Gallinula galeata', 
            'The common gallinule (Gallinula galeata) is a bird in the family Rallidae. It was split from the common moorhen by the American Ornithologists'' Union in July 2011. It lives around well-vegetated marshes, ponds, canals, and other wetlands in the Americas. The common gallinule is one of the most conspicuous rail species in North America, along with the American coot....', 
            'https://en.wikipedia.org/wiki/Common_gallinule'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Goldeneye', 
            'Common Goldeneye', 
            'Bucephala clangula', 
            'The common goldeneye or simply goldeneye (Bucephala clangula) is a medium-sized sea duck of the genus Bucephala, the goldeneyes. Its closest relative is the similar Barrow''s goldeneye. The genus name is derived from the Ancient Greek boukephalos ("bullheaded", from bous, "bull" and kephale, "head"), a reference to the bulbous head shape of the bufflehead. The species name is derived from the Latin clangere ("to resound").
Common goldeneyes are aggressive and territorial ducks, and have elaborate courtship displays....', 
            'https://en.wikipedia.org/wiki/Common_goldeneye'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Grackle', 
            'Common Grackle', 
            'Quiscalus quiscula', 
            'The common grackle (Quiscalus quiscula) is a species of large icterid bird found in large numbers through much of North America. First described in 1758 by Carl Linnaeus, the common grackle has three subspecies. Adult common grackles have a long and dark bill, pale yellow eyes, and a long tail. Adults often have a bluish iridescent appearance on their head, especially males. Common grackles can be found widely across North America east of the Rocky Mountains....', 
            'https://en.wikipedia.org/wiki/Common_grackle'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Ground_Dove', 
            'Common Ground Dove', 
            'Columbina passerina', 
            'The common ground dove (Columbina passerina) is a small bird that inhabits the southern United States, parts of Central America, the Caribbean and northern South America. It is considered to be the smallest dove that inhabits the United States. As its name suggests, the bird spends the majority of its time on the ground walking but still has the ability to fly....', 
            'https://en.wikipedia.org/wiki/Common_ground_dove'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Loon', 
            'Common Loon', 
            'Gavia immer', 
            'The common loon or great northern diver (Gavia immer) is a large member of the loon, or diver, family of birds. Breeding adults have a plumage that includes a broad black head and neck with a greenish, purplish, or bluish sheen, blackish or blackish-grey upperparts, and pure white underparts except some black on the undertail coverts and vent. Non-breeding adults are brownish with a dark neck and head marked with dark grey-brown. Their upperparts are dark brownish-grey with an unclear pattern of squares on the shoulders, and the underparts, lower face, chin, and throat are whitish. The sexes l...', 
            'https://en.wikipedia.org/wiki/Common_loon'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Merganser', 
            'Common Merganser', 
            'Mergus merganser', 
            'The common merganser or goosander (Mergus merganser) is a large sea duck of rivers and lakes in forested areas of Europe, Asia, and North America. The common merganser eats mainly fish. It nests in holes in trees. The name "common merganser" is used in North America, while "goosander" is used in Eurasia....', 
            'https://en.wikipedia.org/wiki/Common_merganser'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Nighthawk', 
            'Common Nighthawk', 
            'Chordeiles minor', 
            'The common nighthawk or bullbat (Chordeiles minor) is a medium-sized  crepuscular or nocturnal bird of the Americas within the nightjar (Caprimulgidae) family, whose presence and identity are best revealed by its vocalization. Typically dark (gray, black and brown), displaying cryptic colouration and intricate patterns, this bird is difficult to spot with the naked eye during the day. This bird is most conspicuous when in its buoyant and erratic flight. The most remarkable feature of this aerial insectivore is its small beak that belies the massiveness of its mouth. Some claim appearance simil...', 
            'https://en.wikipedia.org/wiki/Common_nighthawk'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Raven', 
            'Common Raven', 
            'Corvus corax', 
            'The common raven or northern raven (Corvus corax) is a large all-black passerine bird. It is the most widely distributed of all corvids, found across the Northern Hemisphere. There are 11 accepted subspecies with little variation in appearance, although recent research has demonstrated significant genetic differences among populations from various regions. It is one of the two largest corvids, alongside the thick-billed raven, and is the heaviest passerine bird; at maturity, the common raven averages 63 centimetres (25 inches) in length and 1.47 kilograms (3.2 pounds) in weight, up to 2 kg (4....', 
            'https://en.wikipedia.org/wiki/Common_raven'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Redpoll', 
            'Common Redpoll', 
            'Acanthis flammea', 
            'The  redpoll (Acanthis flammea) is a species of small passerine bird in the finch family Fringillidae. It is the only species placed in the genus Acanthis. It breeds in the Arctic and north temperate Holarctic tundra and taiga. The redpoll was formerly widely treated as three species: the common or mealy redpoll, the arctic or hoary redpoll (A. hornemanni), and the lesser redpoll (A. cabaret)....', 
            'https://en.wikipedia.org/wiki/Redpoll'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Tern', 
            'Common Tern', 
            'Sterna hirundo', 
            'The common tern (Sterna hirundo) is a seabird in the family Laridae. This bird has a circumpolar distribution, its four subspecies breeding in temperate and subarctic regions of Europe, Asia and North America. It is strongly migratory, wintering in coastal tropical and subtropical regions. Breeding adults have light grey upperparts, white to very light grey underparts, a black cap, orange-red legs, and a narrow pointed bill. Depending on the subspecies, the bill may be mostly red with a black tip or all black. There are several similar species, including the partly sympatric Arctic tern, which...', 
            'https://en.wikipedia.org/wiki/Common_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Common_Yellowthroat', 
            'Common Yellowthroat', 
            'Geothlypis trichas', 
            'The common yellowthroat (Geothlypis trichas) is a New World warbler. It is an abundant breeder in North America, ranging from southern Canada to central Mexico. In the northern parts of its range the birds are migratory, wintering in the southern parts of the breeding range, Central America and the West Indies. Southern forms are largely resident. Historically, it has also known as the "yellow bandit", Maryland yellow-throat, and yellow-breasted warbler....', 
            'https://en.wikipedia.org/wiki/Common_yellowthroat'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Cordilleran_Flycatcher', 
            'Cordilleran Flycatcher', 
            'Empidonax difficilis', 
            'The western flycatcher (Empidonax difficilis) is a small insectivorous bird in the family Tyrannidae.  It is native to western North America, where it breeds in the Rocky Mountains and Pacific Coast forests and mountain ranges from California to Alaska and south to central Mexico; northern populations migrate south to Mexico for the winter....', 
            'https://en.wikipedia.org/wiki/Western_flycatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Crested_Auklet', 
            'Crested Auklet', 
            'Aethia cristatella', 
            'The crested auklet (Aethia cristatella) is a small seabird of the family Alcidae, distributed throughout the northern Pacific and the Bering Sea.  The species feeds by diving in deep waters, eating krill and a variety of small marine animals. It nests in dense colonies of up to 1 million individuals in the Bering Sea and the Sea of Okhotsk.  It often breeds in mixed-species colonies with the least auklet, a smaller congener.
The species is known for its sexual ornaments, found in both males and females. These include colorful plumage with a forehead crest, a striking scent recalling citrus fru...', 
            'https://en.wikipedia.org/wiki/Crested_auklet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Crested_Caracara', 
            'Crested Caracara', 
            'Caracara plancus', 
            'The crested caracara (Caracara plancus) is a bird of prey (raptor) in the falcon family, Falconidae. It was formerly placed in the genus Polyborus before being given in its own genus, Caracara. It is native to and found in the southern and southeastern United States, Mexico (where it is present in every state) and the majority of mainland Latin America, as well as some Caribbean islands. The crested caracara is quite adaptable and hardy, for a species found predominantly in the neotropics; it can be found in a range of environments and ecosystems, including semi-arid and desert climates, marit...', 
            'https://en.wikipedia.org/wiki/Crested_caracara'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Dickcissel', 
            'Dickcissel', 
            'Spiza americana', 
            'The dickcissel (Spiza americana) is a small seed-eating migratory bird in the family Cardinalidae. It breeds on the prairie grasslands of the Midwestern United States and winters in Central America, northern Colombia, and northern Venezuela. It is the only member of the genus Spiza, though some sources list another supposedly extinct species....', 
            'https://en.wikipedia.org/wiki/Dickcissel'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Downy_Woodpecker', 
            'Downy Woodpecker', 
            'Dryobates pubescens', 
            'The downy woodpecker (Dryobates pubescens) is a species of woodpecker, the smallest in North America. Length ranges from 14 to 18 cm (5.5 to 7.1 in). Downy woodpeckers primarily live in forested areas throughout the United States and Canada, with the exception of deserts in the southwest and the northern tundra. The bird nests in tree cavities and feeds primarily on insects, although it supplements its diet with seeds and berries. The downy woodpecker is very similar in appearance to the hairy woodpecker, although they are not closely related....', 
            'https://en.wikipedia.org/wiki/Downy_woodpecker'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Dunlin', 
            'Dunlin', 
            'Calidris alpina', 
            'The dunlin (Calidris alpina) is a small wader in the genus Calidris. The English name is a dialect form of "dunling", first recorded in 1531–1532. It derives from dun, "dull brown", with the suffix -ling, meaning a person or thing with the given quality.
It is a circumpolar breeder in Arctic or subarctic regions. Birds that breed in western Europe are short-distance migrants largely staying on western and southern European and northwest African coasts; those breeding in far northern Europe and Asia are long-distance migrants, wintering south to Africa, southeast and west Asia. Birds that breed...', 
            'https://en.wikipedia.org/wiki/Dunlin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eared_Grebe', 
            'Eared Grebe', 
            'Podiceps nigricollis', 
            'The black-necked grebe or eared grebe (Podiceps nigricollis) is a member of the grebe family of water birds. It was described in 1831 by Christian Ludwig Brehm. Its breeding plumage features distinctive ochre-coloured feathers which extend behind its eye and over its ear coverts. The rest of the upper parts, including the head, neck, and breast, are coloured black to blackish brown. The flanks are tawny rufous to maroon-chestnut, and the abdomen is white. In its non-breeding plumage, this bird has greyish-black upper parts, including the top of the head and a vertical stripe on the back of the...', 
            'https://en.wikipedia.org/wiki/Black-necked_grebe'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Bluebird', 
            'Eastern Bluebird', 
            'Sialia sialis', 
            'The eastern bluebird (Sialia sialis) is a small North American migratory thrush found in open woodlands, farmlands, and orchards.
The bright-blue breeding plumage of the male, easily observed on a wire or open perch, makes this species a favorite of birders. The male''s call includes sometimes soft warbles of jeew or chir-wi, or the melodious song chiti WEEW wewidoo.
It is the state bird of Missouri and New York....', 
            'https://en.wikipedia.org/wiki/Eastern_bluebird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Kingbird', 
            'Eastern Kingbird', 
            'Tyrannus tyrannus', 
            'The eastern kingbird (Tyrannus tyrannus) is a large tyrant flycatcher native to the Americas. The bird is predominantly dark gray with white underbelly and pointed wings. Eastern kingbirds are conspicuous and are commonly found in open areas with scattered trees and bushes, where they perch while foraging for insects. The Eastern kingbird is migratory, with its breeding range spread across North America and its wintering range in Central and South America....', 
            'https://en.wikipedia.org/wiki/Eastern_kingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Meadowlark', 
            'Eastern Meadowlark', 
            'Sturnella magna', 
            'The eastern meadowlark (Sturnella magna) is a medium-sized icterid bird, very similar in appearance to its sister species, the western meadowlark. It occurs from eastern North America to northern South America, where it is also most widespread in the east. The Chihuahuan meadowlark was formerly considered to be conspecific with the eastern meadowlark....', 
            'https://en.wikipedia.org/wiki/Eastern_meadowlark'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Phoebe', 
            'Eastern Phoebe', 
            'Sayornis phoebe', 
            'The eastern phoebe (Sayornis phoebe) is a small passerine bird. The genus name Sayornis is constructed from the specific part of Charles Lucien Bonaparte''s name for Say''s phoebe, Muscicapa saya, and Ancient Greek ornis, "bird". Phoebe is an alternative name for the Roman moon-goddess Diana, but it may also have been chosen to imitate the bird''s call....', 
            'https://en.wikipedia.org/wiki/Eastern_phoebe'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Screech_Owl', 
            'Eastern Screech Owl', 
            'Megascops asio', 
            'The eastern screech owl (Megascops asio) or eastern screech-owl is a small owl that is relatively common in Eastern North America, from Mexico to Canada. This species resides in most types of woodland habitats across its range, and is relatively adaptable to urban and developed areas compared to other owls. Although it often lives in close proximity to humans, the eastern screech owl frequently avoids detection due to its strictly nocturnal habits....', 
            'https://en.wikipedia.org/wiki/Eastern_screech_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Towhee', 
            'Eastern Towhee', 
            'Pipilo erythrophthalmus', 
            'The eastern towhee (Pipilo erythrophthalmus), also known as chewink, joree, or joree bird, is a large New World sparrow. The taxonomy of the towhees has been under debate in recent decades, and formerly this bird and the spotted towhee were considered a single species, the rufous-sided towhee.
Their breeding habitat is brushy areas across eastern North America. They nest either low in bushes or on the ground under shrubs. Northern birds migrate to the southern United States. There has been one record of this species as a vagrant to western Europe: a single bird in Great Britain in 1966.
The so...', 
            'https://en.wikipedia.org/wiki/Eastern_towhee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eastern_Wood_Pewee', 
            'Eastern Wood Pewee', 
            'Contopus virens', 
            'The eastern wood pewee (Contopus virens) is a small tyrant flycatcher from North, Central and South America. This bird and the western wood pewee (C. sordidulus) were formerly considered a single species. The two species are virtually identical in appearance, and can be distinguished most easily by their calls....', 
            'https://en.wikipedia.org/wiki/Eastern_wood_pewee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Elegant_Tern', 
            'Elegant Tern', 
            'Thalasseus elegans', 
            'The elegant tern (Thalasseus elegans) is a tern in the family Laridae. It breeds on the Pacific coast of southern California in the United States and western Mexico, and migrates south to Peru, Ecuador and Chile for the northern winter; in the late summer and fall, some also disperse north to Oregon and more rarely Washington.
This species breeds in very dense colonies on coasts and islands, including Isla Rasa and Montague Island in Mexico, as well as South Bay Salt Works (San Diego) and Bolsa Chica Ecological Reserve in California. Exceptionally, vagrants can occur inland on suitable large f...', 
            'https://en.wikipedia.org/wiki/Elegant_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Eurasian_Collared_Dove', 
            'Eurasian Collared Dove', 
            'Streptopelia decaocto', 
            'The Eurasian collared dove (Streptopelia decaocto), often simply just collared dove, is a dove species native to Europe, Asia, and northern Africa. It has also been introduced to Japan, North and Central America, and the islands in the Caribbean....', 
            'https://en.wikipedia.org/wiki/Eurasian_collared_dove'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'European_Goldfinch', 
            'European Goldfinch', 
            'Carduelis carduelis', 
            'The European goldfinch or simply the goldfinch (Carduelis carduelis) is a small passerine bird in the finch family that is native to the Palearctic zone in Europe, northern Africa, and western Asia. It has been introduced to other areas, including Australia, New Zealand, Uruguay and the United States.
The breeding male has a red face with black markings around the eyes, and a black-and-white head. The back and flanks are buff or chestnut brown. The black wings have a broad yellow bar. The tail is black and the rump is white. Males and females are very similar, but females have a slightly small...', 
            'https://en.wikipedia.org/wiki/European_goldfinch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'European_Starling', 
            'European Starling', 
            'Sturnus vulgaris', 
            'The common starling (Sturnus vulgaris), also known simply as the starling in Great Britain and Ireland, and as the European starling in North America, is a medium-sized passerine bird in the starling family, Sturnidae. It is about 20 cm (8 in) long and has glossy black plumage with a metallic sheen, which is speckled with white at some times of the year. The legs are pink and the bill is black in winter and yellow in summer; young birds have browner plumage than the adults. Its gift for mimicry has been noted in literature including the Mabinogion and the works of Pliny the Elder and William S...', 
            'https://en.wikipedia.org/wiki/Common_starling'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Evening_Grosbeak', 
            'Evening Grosbeak', 
            'Hesperiphona vespertina', 
            'The evening grosbeak (Hesperiphona vespertina) is a passerine bird in the finch family Fringillidae found in North America.
The evening grosbeak is bulky, with a large bill and short tail. The bird has a distinct appearance, with the adult male featuring a bright yellow forehead and body, brown head, and white wing patches, while the adult female has a mainly olive-brown body with greyer underparts and white wing patches.
The evening grosbeak breeds in coniferous and mixed forests across Canada, the western mountainous areas of the United States, and Mexico. Its migration pattern is variable, ...', 
            'https://en.wikipedia.org/wiki/Evening_grosbeak'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Field_Sparrow', 
            'Field Sparrow', 
            'Spizella pusilla', 
            'The field sparrow (Spizella pusilla) is a small New World sparrow in the family Passerellidae. It is about 140 mm (6 in) long and weighs about 12.5 g (0.4 oz). The head is grey with a rust-coloured crown, white eye-ring and pink bill. The upper parts are brown streaked with black and buff, the breast is buff, the belly is white and the tail is forked. There are two different colour morphs, one being greyer and the other more rufous.
The field sparrow is distributed across eastern Canada and the eastern United States, with northern populations migrating southwards to southern United States and ...', 
            'https://en.wikipedia.org/wiki/Field_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Fish_Crow', 
            'Fish Crow', 
            'Corvus ossifragus', 
            'The fish crow (Corvus ossifragus) is a species of crow associated with wetland habitats in the eastern and southeastern United States....', 
            'https://en.wikipedia.org/wiki/Fish_crow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Florida_Jay', 
            'Florida Jay', 
            'Aphelocoma coerulescens[A]', 
            'The Florida scrub jay (Aphelocoma coerulescens[A]) is one of the species of scrub jay native to North America. It is the only species of bird endemic to the U.S. state of Florida and one of only 15 species endemic to the continental United States. Because of this, it is keenly sought by birders. It is known to have been present in Florida as a distinct species for at least 2 million years, and is possibly derived from the ancestors of Woodhouse''s scrub jay....', 
            'https://en.wikipedia.org/wiki/Florida_scrub_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Florida_Scrub_Jay', 
            'Florida Scrub Jay', 
            'Aphelocoma coerulescens[A]', 
            'The Florida scrub jay (Aphelocoma coerulescens[A]) is one of the species of scrub jay native to North America. It is the only species of bird endemic to the U.S. state of Florida and one of only 15 species endemic to the continental United States. Because of this, it is keenly sought by birders. It is known to have been present in Florida as a distinct species for at least 2 million years, and is possibly derived from the ancestors of Woodhouse''s scrub jay....', 
            'https://en.wikipedia.org/wiki/Florida_scrub_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Forsters_Tern', 
            'Forsters Tern', 
            'Sterna forsteri', 
            'Forster''s tern (Sterna forsteri) is a tern in the family Laridae. The genus name Sterna is derived from Old English "stearn", "tern", and forsteri commemorates the naturalist Johann Reinhold Forster.
It breeds inland in North America in the northern United States and southern Canada, and migrates south to winter in the southern United States, Mexico, the Caribbean, and northern Central America. It is also a rare but annual vagrant in western Europe, and has wintered in Ireland and Great Britain on a number of occasions.
This species breeds in colonies in marshes. It nests in a ground scrape an...', 
            'https://en.wikipedia.org/wiki/Forster%27s_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Fox_Sparrow', 
            'Fox Sparrow', 
            'Passerella iliaca', 
            'The fox sparrow (Passerella iliaca) is a large New World sparrow. It is the only member of the genus Passerella, although some authors split the species into four (see below)....', 
            'https://en.wikipedia.org/wiki/Fox_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Frigatebird', 
            'Frigatebird', 
            'Unknown', 
            'Frigatebirds are a family of seabirds called Fregatidae which are found across all tropical and subtropical oceans. The five extant species are classified in a single genus, Fregata. All have predominantly black plumage, long, deeply forked tails and long hooked bills. Females have white underbellies and males have a distinctive red gular pouch which they inflate during the breeding season to attract females. Their wings are long and pointed and can span up to 2.3 metres (7.5 ft), the largest wing area to body mass ratio of any bird.
Able to soar for weeks on wind currents, frigatebirds spend ...', 
            'https://en.wikipedia.org/wiki/Frigatebird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Gadwall', 
            'Gadwall', 
            'Mareca strepera', 
            'The gadwall (Mareca strepera) is a common and widespread dabbling duck in the family Anatidae....', 
            'https://en.wikipedia.org/wiki/Gadwall'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Geococcyx', 
            'Geococcyx', 
            'genus Geococcyx', 
            'The roadrunners (genus Geococcyx), also known as chaparral birds or chaparral cocks, are two species of fast-running ground cuckoos with long tails and crests. They are found in the southwestern and south-central United States, Mexico and Central America, usually in the desert. Although capable of flight, roadrunners generally run away from predators. On the ground, some have been measured at 32 km/h (20 mph)....', 
            'https://en.wikipedia.org/wiki/Roadrunner'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Gila_Woodpecker', 
            'Gila Woodpecker', 
            'Melanerpes uropygialis', 
            'The Gila woodpecker (Melanerpes uropygialis) is a medium-sized woodpecker of the desert regions of the southwestern United States and western Mexico. In the U.S., they range through southeastern California, southern Nevada, Arizona, and New Mexico....', 
            'https://en.wikipedia.org/wiki/Gila_woodpecker'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Glossy_Ibis', 
            'Glossy Ibis', 
            'Plegadis falcinellus', 
            'The glossy ibis (Plegadis falcinellus) is a water bird in the order Pelecaniformes and the ibis and spoonbill family Threskiornithidae. The scientific name derives from Ancient Greek plegados and Latin, falcis, both meaning "sickle" and referring to the distinctive shape of the bill....', 
            'https://en.wikipedia.org/wiki/Glossy_ibis'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Golden_Eagle', 
            'Golden Eagle', 
            'Aquila chrysaetos', 
            'The golden eagle (Aquila chrysaetos) is a bird of prey living in the Northern Hemisphere. It is the most widely distributed species of eagle. Like all eagles, it belongs to the family Accipitridae. They are one of the best-known birds of prey in the Northern Hemisphere. These birds are dark brown, with lighter golden-brown plumage on their napes. Immature eagles of this species typically have white on the tail and often have white markings on the wings. Golden eagles use their agility and speed combined with powerful feet and large, sharp talons to hunt a variety of prey, mainly hares, rabbits...', 
            'https://en.wikipedia.org/wiki/Golden_eagle'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Grasshopper_Sparrow', 
            'Grasshopper Sparrow', 
            'Ammodramus savannarum', 
            'The grasshopper sparrow (Ammodramus savannarum) is a small New World sparrow. It belongs to the genus Ammodramus, which contains three species that inhabit grasslands and prairies. Grasshopper sparrows are sometimes found in crop fields and they will readily colonize reclaimed grassland. In the core of their range, grasshopper sparrows are dependent upon large areas of grassland where they avoid trees and shrubs. They seek out heterogenous patches of prairie that contain clumps of dead grass or other vegetation where they conceal their nest, and also contain barer ground where they forage for ...', 
            'https://en.wikipedia.org/wiki/Grasshopper_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Gray_Catbird', 
            'Gray Catbird', 
            'Dumetella carolinensis', 
            'The gray catbird (Dumetella carolinensis), also spelled grey catbird, is a medium-sized North American and Central American perching bird of the mimid family. It is the only member of the "catbird" genus Dumetella. Like the black catbird (Melanoptila glabrirostris), it is among the basal lineages of the Mimidae, probably a closer relative of the Caribbean thrasher and trembler assemblage than of the mockingbirds and Toxostoma thrashers. In some areas it is known as the slate-colored mockingbird....', 
            'https://en.wikipedia.org/wiki/Gray_catbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Gray_Jay', 
            'Gray Jay', 
            'Perisoreus canadensis', 
            'The Canada jay (Perisoreus canadensis), also known as the grey jay, gray jay, camp robber, moose bird, gorby, or whisky jack, is a passerine bird of the family Corvidae. It is found in boreal forests of North America, north to the tree line, and in the Rocky Mountains subalpine zone south to New Mexico and Arizona. A fairly large songbird, the Canada jay has pale grey underparts, darker grey upperparts, and a grey-white head with a darker grey nape. It is one of three members of the genus Perisoreus, a genus more closely related to the magpie genus Cyanopica than to other birds known as jays. ...', 
            'https://en.wikipedia.org/wiki/Canada_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Gray_Kingbird', 
            'Gray Kingbird', 
            'Tyrannus dominicensis', 
            'The gray kingbird or grey kingbird (Tyrannus dominicensis), also known as pitirre, petchary or white-breasted kingbird, is a passerine bird in the tyrant flycatchers family Tyrannidae. The species was first described on the island of Hispaniola, then called Santo Domingo, thus the dominicensis name....', 
            'https://en.wikipedia.org/wiki/Gray_kingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Great_Blue_Heron', 
            'Great Blue Heron', 
            'Ardea herodias', 
            'The great blue heron (Ardea herodias) is a large wading bird in the heron family Ardeidae, common near the shores of open water and in wetlands over most of North and Central America, as well as far northwestern South America, the Caribbean and the Galápagos Islands. It is occasionally found in the Azores and is a rare vagrant to Europe. An all-white population found in south Florida and the Florida Keys is known as the great white heron. Debate exists about whether these white birds are a color morph of the great blue heron, a subspecies of it, or an entirely separate species....', 
            'https://en.wikipedia.org/wiki/Great_blue_heron'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Great_Cormorant', 
            'Great Cormorant', 
            'Phalacrocorax carbo', 
            'The great cormorant (Phalacrocorax carbo), also known as just cormorant in Britain, as black shag or kawau in New Zealand, formerly also known as the great black cormorant across the Northern Hemisphere, the black cormorant in Australia, and the large cormorant in India, is a widespread member of the cormorant family of seabirds. It breeds in much of the Old World, Australasia, and the Atlantic coast of North America....', 
            'https://en.wikipedia.org/wiki/Great_cormorant'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Great_Crested_Flycatcher', 
            'Great Crested Flycatcher', 
            'Myiarchus crinitus', 
            'The great crested flycatcher (Myiarchus crinitus) is a large insect-eating bird of the tyrant flycatcher family. It is the most widespread member of the genus Myiarchus in North America, and is found over most of the eastern and mid-western portions of the continent. It dwells mostly in the treetops and rarely is found on the ground....', 
            'https://en.wikipedia.org/wiki/Great_crested_flycatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Great_Egret', 
            'Great Egret', 
            'Ardea alba', 
            'The great egret (Ardea alba), also known as the common egret, large egret, great white egret, or great white heron, is a large, widely distributed egret.  The four subspecies are found in Asia, Africa, the Americas, and southern Europe.  Recently, it has also been spreading to more northern areas of Europe. Distributed across most of the tropical and warmer temperate regions of the world, it builds tree nests in colonies close to water....', 
            'https://en.wikipedia.org/wiki/Great_egret'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Great_Grey_Shrike', 
            'Great Grey Shrike', 
            'Lanius excubitor', 
            'The great grey shrike (Lanius excubitor) is a large and predatory songbird species in the shrike family (Laniidae). It forms a superspecies with its parapatric southern relatives, the Iberian grey shrike (L. meridionalis), the Chinese grey shrike (L. sphenocerus) and the American loggerhead shrike (L. ludovicianus). Males and females are similar in plumage, pearly grey above with a black eye-mask and white underparts.
Breeding takes place generally north of 50° northern latitude in northern Europe and Asia. Most populations migrate south in winter to temperate regions. The great grey shrike is...', 
            'https://en.wikipedia.org/wiki/Great_grey_shrike'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Great_Horned_Owl', 
            'Great Horned Owl', 
            'Bubo virginianus', 
            'The great horned owl (Bubo virginianus), also known as the tiger owl (originally derived from early naturalists'' description as the "winged tiger" or "tiger of the air") or the hoot owl, is a large owl native to the Americas. It is an extremely adaptable bird with a vast range and is the most widely distributed true owl in the Americas. Its diet consists primarily of rabbits and hares, rats and mice, and voles; it remains one of the few regular predators of skunk. Hunting also includes rodents, larger mid-sized mammals, birds, reptiles, amphibians, and invertebrates. 
In ornithological study, ...', 
            'https://en.wikipedia.org/wiki/Great_horned_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Greater_Roadrunner', 
            'Greater Roadrunner', 
            'Geococcyx californianus', 
            'The greater roadrunner (Geococcyx californianus) is a long-legged bird in the cuckoo family, Cuculidae, from the Aridoamerica region in the Southwestern United States and Mexico. The scientific name means "Californian earth-cuckoo". Along with the lesser roadrunner, it is one of two species in the genus Geococcyx. This roadrunner is also known as the chaparral cock, ground cuckoo, and snake killer....', 
            'https://en.wikipedia.org/wiki/Greater_roadrunner'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Greater_Scaup', 
            'Greater Scaup', 
            'Aythya marila', 
            'The greater scaup (Aythya marila), just scaup in Europe or, colloquially, "bluebill" in North America, is a mid-sized diving duck, larger than the closely related lesser scaup and tufted duck. It spends the summer months breeding in Iceland, east across Scandinavia, northern Russia and Siberia, Alaska, and northern Canada. During the winter, it migrates south to the coasts of Europe, eastern Asia, and North America.
Male greater scaup average slightly larger than the females but with much overlap; they have a light blue-grey bill and yellow eyes. Their heads are dark, with a green to purple (d...', 
            'https://en.wikipedia.org/wiki/Greater_scaup'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Greater_Yellowlegs', 
            'Greater Yellowlegs', 
            'Tringa melanoleuca', 
            'The greater yellowlegs (Tringa melanoleuca) is a large shorebird in the family Scolopacidae. It breeds in central Canada and southern Alaska and winters in southern North America, Central America, the West Indies and South America....', 
            'https://en.wikipedia.org/wiki/Greater_yellowlegs'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Green_Heron', 
            'Green Heron', 
            'Butorides virescens', 
            'The green heron (Butorides virescens) is a small heron of North and Central America. Butorides is from Middle English butor "bittern" and Ancient Greek -oides, "resembling", and virescens is Latin for "greenish".
It was long considered conspecific with its sister species the striated heron (Butorides striata), and together they were called "green-backed heron". Birds of the nominate subspecies (no matter which taxonomic arrangement is preferred) are extremely rare vagrants to western Europe—for example, a sighting in Pembrokeshire in 2018 was only the second recorded sighting in Wales; individ...', 
            'https://en.wikipedia.org/wiki/Green_heron'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Green_Jay', 
            'Green Jay', 
            'Cyanocorax luxuosus', 
            'The green jay (Cyanocorax luxuosus) is a species of the New World jays, found in Central America, Mexico, and South Texas. Adults are about 27 cm (11 in) long and variable in color across their range; they usually have blue and black heads, green wings and mantle, bluish-green tails, black bills, yellow or brown eye rings, and dark legs. The basic diet consists of arthropods, vertebrates, seeds, and fruit. The nest is usually built in a thorny bush; the female incubates the clutch of three to five eggs. This is a common species of jay with a wide range and the International Union for Conservat...', 
            'https://en.wikipedia.org/wiki/Green_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Green_Kingfisher', 
            'Green Kingfisher', 
            'Chloroceryle americana', 
            'The green kingfisher (Chloroceryle americana) is a species of "water kingfisher" in the subfamily Cerylinae of the family Alcedinidae. It is found from southern Texas in the United States south through Central America, and in every mainland South American country except Chile....', 
            'https://en.wikipedia.org/wiki/Green_kingfisher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Green_Violetear', 
            'Green Violetear', 
            'Colibri thalassinus', 
            'The Mexican violetear (Colibri thalassinus) is a medium-sized, metallic green hummingbird species commonly found in forested areas from Mexico to Nicaragua. This species, together with the lesser violetear were previously considered conspecific, and together called the green violetear....', 
            'https://en.wikipedia.org/wiki/Mexican_violetear'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hairy_Woodpecker', 
            'Hairy Woodpecker', 
            'Leuconotopicus villosus', 
            'The hairy woodpecker (Leuconotopicus villosus) is a medium-sized woodpecker that is found over a large area of North America. It is approximately 250 mm (9.8 in) in length with a 380 mm (15 in) wingspan. With an estimated population in 2020 of almost nine million individuals, the hairy woodpecker is listed by the IUCN as a species of least concern. The species was previously placed in the genus Dryobates....', 
            'https://en.wikipedia.org/wiki/Hairy_woodpecker'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Harlequin_Duck', 
            'Harlequin Duck', 
            'Histrionicus histrionicus', 
            'The harlequin duck (Histrionicus histrionicus) is a small sea duck. It takes its name from Harlequin (Italian Arlecchino, French Arlequin), a colourfully dressed character in Commedia dell''arte. The species name comes from the Latin word histrio, meaning "actor". Other names include painted duck, totem pole duck, rock duck, glacier duck, mountain duck, white-eyed diver, squeaker, lords and ladies and blue streak....', 
            'https://en.wikipedia.org/wiki/Harlequin_duck'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hermit_Thrush', 
            'Hermit Thrush', 
            'Catharus guttatus', 
            'The hermit thrush (Catharus guttatus) is a medium-sized North American thrush....', 
            'https://en.wikipedia.org/wiki/Hermit_thrush'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hermit_Warbler', 
            'Hermit Warbler', 
            'Setophaga occidentalis', 
            'The hermit warbler (Setophaga occidentalis) is a small perching bird. It is a species of New World warbler or wood-warbler. They are a migratory bird, the breeding range spanning the majority of the west coast of the United States. Their winter range includes parts of Mexico and Central America as well as parts of the southern California coast....', 
            'https://en.wikipedia.org/wiki/Hermit_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Herring_Gull', 
            'Herring Gull', 
            'Unknown', 
            'Herring gull is a common name for several birds in the genus Larus, all formerly treated as a single species. 
Three species are still combined in some taxonomies:

American herring gull (Larus smithsonianus) – North America
European herring gull (Larus argentatus) – Northern Europe
Vega gull (Larus vegae) – East Asia
Additional species formerly included within this species include:

Armenian gull (Larus armenicus) – Caucasus and Middle East
Caspian gull (Larus cachinnans) – Eastern Europe and Central Asia
Yellow-legged gull (Larus michahellis) – Southern Europe, North Africa and Middle East...', 
            'https://en.wikipedia.org/wiki/Herring_gull'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hoary_Redpoll', 
            'Hoary Redpoll', 
            'Acanthis flammea', 
            'The  redpoll (Acanthis flammea) is a species of small passerine bird in the finch family Fringillidae. It is the only species placed in the genus Acanthis. It breeds in the Arctic and north temperate Holarctic tundra and taiga. The redpoll was formerly widely treated as three species: the common or mealy redpoll, the arctic or hoary redpoll (A. hornemanni), and the lesser redpoll (A. cabaret)....', 
            'https://en.wikipedia.org/wiki/Redpoll'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hooded_Merganser', 
            'Hooded Merganser', 
            'Lophodytes cucullatus', 
            'The hooded merganser (Lophodytes cucullatus) is a species of fish-eating duck in the subfamily Anatinae. It is the only extant species in the genus Lophodytes. The genus name derives from the Greek language: lophos meaning ''crest'', and dutes meaning ''diver''. The bird is striking in appearance; both sexes have crests that they can raise or lower, and the breeding plumage of the male is handsomely patterned and coloured. The hooded merganser has a sawbill but is not classified as a typical merganser.
Hooded mergansers are the second-smallest species of merganser, with only the smew of Europe and...', 
            'https://en.wikipedia.org/wiki/Hooded_merganser'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hooded_Oriole', 
            'Hooded Oriole', 
            'Icterus cucullatus', 
            'The hooded oriole (Icterus cucullatus) is a medium-sized New World oriole. The male of this species ranges in color from a bright orange to a paler yellow, with a black back, face, tail and bib, with the wing containing two white bars. The female is more of an olive color with some yellow accents....', 
            'https://en.wikipedia.org/wiki/Hooded_oriole'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Hooded_Warbler', 
            'Hooded Warbler', 
            'Setophaga citrina', 
            'The hooded warbler (Setophaga citrina) is a New World warbler. It breeds in eastern North America across the eastern United States and into southernmost Canada (Ontario). It is migratory, wintering in Central America and the West Indies. Hooded warblers are very rare vagrants to western Europe.
Recent genetic research has suggested that the type species of Wilsonia (hooded warbler W. citrina) and of Setophaga (American redstart S. ruticilla) are closely related and should be merged into the same genus. As the name Setophaga (published in 1827) takes priority over Wilsonia (published in 1838), ...', 
            'https://en.wikipedia.org/wiki/Hooded_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Horned_Grebe', 
            'Horned Grebe', 
            'Podiceps auritus', 
            'The horned grebe or Slavonian grebe (Podiceps auritus) is a relatively small and threatened species of waterbird in the family Podicipedidae. There are two subspecies, P. a. auritus (Slavonian grebe), which breeds in Eurasia, and P. a. cornutus (horned grebe), which breeds in North America. The Eurasian subspecies is distributed over most of northern Europe and northern Asia, breeding from Iceland east to the Russian Far East. The North American subspecies spans most of Canada and some of the United States. A small population was cited in Greenland in 1973, but is not mapped or further mention...', 
            'https://en.wikipedia.org/wiki/Horned_grebe'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Horned_Lark', 
            'Horned Lark', 
            'Eremophila alpestris', 
            'The horned lark or shore lark (Eremophila alpestris) is a species of lark in the family Alaudidae found across the northern hemisphere. It is known as "horned lark" in North America due to its horn-like feathers and "shore lark" in Europe due to being found on shorelines in the winter....', 
            'https://en.wikipedia.org/wiki/Horned_lark'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Horned_Puffin', 
            'Horned Puffin', 
            'Fratercula corniculata', 
            'The horned puffin (Fratercula corniculata) is an auk found in the North Pacific Ocean, including the coasts of Alaska, Siberia and British Columbia. It is a pelagic seabird that feeds primarily by diving for fish. It nests in colonies, often with other auks.
It is similar in appearance to the Atlantic puffin, its closest relative of the North Atlantic, but differs by a "horn" of black skin located above the eye, present in adult birds....', 
            'https://en.wikipedia.org/wiki/Horned_puffin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'House_Finch', 
            'House Finch', 
            'Haemorhous mexicanus', 
            'The house finch (Haemorhous mexicanus) is a North American bird in the finch family. It is native to Mexico and southwestern United States, but has since been introduced to the eastern part of North America and Hawaiʻi; it is now found year-round in almost all parts of the United States and most of Mexico, with some residing near the border of Canada. There are estimated to be 40 million house finches across North America, making it the second-most populous finch, just behind the American goldfinch. The house finch and the other two American rosefinches (Cassin''s and purple finch) are placed i...', 
            'https://en.wikipedia.org/wiki/House_finch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'House_Sparrow', 
            'House Sparrow', 
            'Passer domesticus', 
            'The house sparrow (Passer domesticus) is a bird of the sparrow family Passeridae, found in most parts of the world. It is a small bird that has a typical length of 16 cm (6.3 in) and a mass of 24–39.5 g (0.85–1.39 oz). Females and young birds are coloured pale brown and grey, and males have brighter black, white, and brown markings. One of about 25 species in the genus Passer, the house sparrow is native to most of Europe, the Mediterranean Basin, and a large part of Asia. Its intentional or accidental introductions to many regions, including parts of Australasia, Africa, and the Americas, mak...', 
            'https://en.wikipedia.org/wiki/House_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'House_Wren', 
            'House Wren', 
            'Unknown', 
            'The house wren complex has been split into eight species:

Northern house wren, Troglodytes aedon
Southern house wren, Troglodytes musculus
Cozumel wren, Troglodytes beani
Kalinago wren, Troglodytes martinicensis
St. Lucia wren, Troglodytes mesoleucus
St. Vincent wren, Troglodytes musicus
Grenada wren, Troglodytes grenadensis
Cobb''s wren, Troglodytes cobbi...', 
            'https://en.wikipedia.org/wiki/House_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Inca_Dove', 
            'Inca Dove', 
            'Columbina inca', 
            'The Inca dove or Mexican dove (Columbina inca) is a small New World dove. The species was first described by French surgeon and naturalist René Lesson in 1847. It reaches a length of 16.5–23 cm (6.5–9.1 in) and weighs 30–58 g (1.1–2.0 oz). The Inca dove has an average wingspan of 28.5 cm and a max wingspan of 32 cm. It is a slender species, with a gray-brown body covered in feathers that resemble a scaled pattern. The tail is long and square and edged with white feathers that may flare out in flight. The underwings are reddish, like other ground doves, and upon takeoff, the wings produce a dis...', 
            'https://en.wikipedia.org/wiki/Inca_dove'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Indigo_Bunting', 
            'Indigo Bunting', 
            'Passerina cyanea', 
            'The indigo bunting (Passerina cyanea) is a small seed-eating bird in the cardinal family, Cardinalidae. It is migratory, ranging from southern Canada to northern Florida during the breeding season, and from southern Florida to northern South America during the winter. It often migrates by night, using the stars to navigate. Its habitat is farmland, brush areas, and open woodland. The indigo bunting is closely related to the lazuli bunting and interbreeds with the species where their ranges overlap.
The indigo bunting is a small bird, measuring 11.5–13 cm (4.5–5.1 in) in length. It displays sex...', 
            'https://en.wikipedia.org/wiki/Indigo_bunting'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Ivory_Gull', 
            'Ivory Gull', 
            'Pagophila eburnea', 
            'The ivory gull (Pagophila eburnea) is a small gull, the only species in the genus Pagophila. It is a resident breeding bird in the high Arctic and has a circumpolar distribution through Greenland, northernmost North America, and Eurasia....', 
            'https://en.wikipedia.org/wiki/Ivory_gull'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Juniper_Titmouse', 
            'Juniper Titmouse', 
            'Baeolophus ridgwayi', 
            'The juniper titmouse (Baeolophus ridgwayi) is a passerine bird in the tit family Paridae. The American Ornithologists'' Union split the plain titmouse into the oak titmouse and the juniper titmouse in 1996, due to distinct differences in song, preferred habitat, and genetic makeup.
The juniper titmouse is a small, gray bird with small tuft or crest. Male and female are visually similar.
This titmouse lives year-round primarily in the Great Basin, but is resident from southeastern Oregon and central Colorado south to the eastern Mojave Desert in California and central Arizona, as far as west Tex...', 
            'https://en.wikipedia.org/wiki/Juniper_titmouse'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Kentucky_Warbler', 
            'Kentucky Warbler', 
            'Geothlypis formosa', 
            'The Kentucky warbler (Geothlypis formosa) is a small species of New World warbler. It is a sluggish and heavy warbler with a short tail, preferring to spend most of its time on or near the ground, except when singing....', 
            'https://en.wikipedia.org/wiki/Kentucky_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Killdeer', 
            'Killdeer', 
            'Charadrius vociferus', 
            'The killdeer (Charadrius vociferus) is a large plover found in the Americas. Its shrill, two-syllable call is often heard, sounding like "kill deer". It was described and given its current scientific name in 1758 by Carl Linnaeus in the 10th edition of his Systema Naturae. Three subspecies are described. Its upperparts are mostly brown with rufous fringes, the head has patches of white and black, and two black bands cross the breast. The belly and the rest of the breast are white. The nominate (or originally described) subspecies breeds from southeastern Alaska and southern Canada to Mexico. I...', 
            'https://en.wikipedia.org/wiki/Killdeer'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Lark_Bunting', 
            'Lark Bunting', 
            'Calamospiza melanocorys', 
            'The lark bunting (Calamospiza melanocorys) is a medium-sized American bunting native to central and western North America. It was designated the state bird of Colorado in 1931....', 
            'https://en.wikipedia.org/wiki/Lark_bunting'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Lark_Sparrow', 
            'Lark Sparrow', 
            'Chondestes grammacus', 
            'The lark sparrow (Chondestes grammacus) is a fairly large New World sparrow. It is the only member of the genus Chondestes....', 
            'https://en.wikipedia.org/wiki/Lark_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Laughing_Gull', 
            'Laughing Gull', 
            'Leucophaeus atricilla', 
            'The laughing gull (Leucophaeus atricilla) is a medium-sized gull of North and South America. Named from its laugh-like call, it is an opportunistic omnivore and scavenger. It breeds in large colonies mostly along the Atlantic coast of North America, the Caribbean, and northern South America. The two subspecies are L. a. megalopterus, which can be seen from southeast Canada down to Central America, and L. a. atricilla, which occurs from the West Indies to the Venezuelan islands. The laughing gull was long placed in the genus Larus until its present placement in Leucophaeus....', 
            'https://en.wikipedia.org/wiki/Laughing_gull'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Laysan_Albatross', 
            'Laysan Albatross', 
            'Phoebastria immutabilis', 
            'The Laysan albatross (Phoebastria immutabilis) is a large seabird that ranges across the North Pacific. The Northwestern Hawaiian Islands are home to 99.7% of the population. This small (for its family) gull-like albatross is the second-most common seabird in the Hawaiian Islands, with an estimated population of 1.18 million birds, and is currently expanding (or possibly re-expanding) its range to new islands. The Laysan albatross was first described as Diomedea immutabilis by Lionel Walter Rothschild, in 1893, on the basis of a specimen from Laysan Island....', 
            'https://en.wikipedia.org/wiki/Laysan_albatross'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Lazuli_Bunting', 
            'Lazuli Bunting', 
            'Passerina amoena', 
            'The lazuli bunting (Passerina amoena) is a North American songbird named for the gemstone lapis lazuli....', 
            'https://en.wikipedia.org/wiki/Lazuli_bunting'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Least_Auklet', 
            'Least Auklet', 
            'Aethia pusilla', 
            'The least auklet (Aethia pusilla) is a seabird and the smallest species of auk. It is the most abundant seabird in North America, and one of the most abundant in the world, with a population of around nine million birds. They breed on the islands of Alaska and Siberia, and spend the winter close to the edge of the ice sheet.  Their largest colonies are on the Aleutian Islands, St. Lawrence Island and Little Diomede Island....', 
            'https://en.wikipedia.org/wiki/Least_auklet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Least_Flycatcher', 
            'Least Flycatcher', 
            'Empidonax minimus', 
            'The least flycatcher (Empidonax minimus) (also called chebec, or chebecker, after the sound it makes) is a small insect-eating bird. It is the smallest Empidonax flycatcher in eastern North America....', 
            'https://en.wikipedia.org/wiki/Least_flycatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Least_Sandpiper', 
            'Least Sandpiper', 
            'Calidris minutilla', 
            'The least sandpiper (Calidris minutilla) is the smallest shorebird. The genus name is from Ancient Greek kalidris or skalidris, a term used by Aristotle for some grey-coloured waterside birds. The specific minutilla is Medieval Latin for "very small".
Within the genus Calidris the least sandpiper is most closely related to the white-rumped sandpiper (Calidris fuscicollis)....', 
            'https://en.wikipedia.org/wiki/Least_sandpiper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Least_Tern', 
            'Least Tern', 
            'Sternula antillarum', 
            'The least tern (Sternula antillarum) is a species of tern that breeds in North America and locally in northern South America. It is closely related to, and was formerly often considered conspecific with, the little tern of the Old World. Other close relatives include the yellow-billed tern and Peruvian tern, both from South America.
It is a small tern, 22–24 cm (8.7–9.4 in) long, with a wingspan of 50 cm (20 in), and weighing 39–52 g (1.4–1.8 oz). The upper parts are a fairly uniform pale gray, and the underparts white. The head is white, with a black cap and line through the eye to the base o...', 
            'https://en.wikipedia.org/wiki/Least_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Lesser_Goldfinch', 
            'Lesser Goldfinch', 
            'Spinus psaltria', 
            'The lesser goldfinch (Spinus psaltria) is a small finch in the genus Spinus native to the Americas.
As is the case for most species in the genus Spinus, lesser goldfinch males have a black forehead, which females lack. Males in this species vary strikingly in the color of their back across their range, from green in western North America to black in the eastern Rocky Mountains and Texas south to northern South America; this variation has resulted in five subspecies being recognized....', 
            'https://en.wikipedia.org/wiki/Lesser_goldfinch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Lesser_Scaup', 
            'Lesser Scaup', 
            'Aythya affinis', 
            'The lesser scaup (Aythya affinis) is a small North American diving duck that migrates south as far as Central America in winter. It is colloquially known as the little bluebill or broadbill because of its distinctive blue bill. The origin of the name scaup may stem from the bird''s preference for feeding on scalp—the Scottish word for clams, oysters, and mussels; however, some credit it to the female''s discordant scaup call as the name''s source. It is apparently a very close relative of the Holarctic greater scaup or "bluebill" (A. marila), with which it forms a superspecies. The scientific nam...', 
            'https://en.wikipedia.org/wiki/Lesser_scaup'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Lesser_Yellowlegs', 
            'Lesser Yellowlegs', 
            'Tringa flavipes', 
            'The lesser yellowlegs (Tringa flavipes) is a medium-sized shorebird. It breeds in the boreal forest region of North America....', 
            'https://en.wikipedia.org/wiki/Lesser_yellowlegs'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Little_Blue_Heron', 
            'Little Blue Heron', 
            'Egretta caerulea', 
            'The little blue heron (Egretta caerulea) is a small heron of the genus Egretta. It is a small, darkly colored heron with a two-toned bill. Juveniles are entirely white, bearing resemblance to the snowy egret. During the breeding season, adults develop different coloration on the head, legs, and feet.
They have a range that encompasses much of the Americas, from the United States to northern South America. Some populations are migratory. They can be found in both saltwater and freshwater ecosystems. Their preference for either one depends on where they live.
Nesting behaviors are documented by ...', 
            'https://en.wikipedia.org/wiki/Little_blue_heron'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Loggerhead_Shrike', 
            'Loggerhead Shrike', 
            'Lanius ludovicianus', 
            'The loggerhead shrike (Lanius ludovicianus) is a passerine bird in the family Laniidae. It is the only member of the shrike family endemic to North America; the related northern shrike (L. borealis) occurs north of its range, however it is also found in Siberia. It is nicknamed the butcherbird after its carnivorous tendencies, as it consumes prey such as insects, amphibians, lizards, small mammals and small birds, and some prey end up displayed and stored at a site, for example in a tree. Due to its small size and weak talons, this predatory bird relies on impaling its prey upon thorns or barb...', 
            'https://en.wikipedia.org/wiki/Loggerhead_shrike'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Louisiana_Waterthrush', 
            'Louisiana Waterthrush', 
            'Parkesia motacilla', 
            'The Louisiana waterthrush (Parkesia motacilla) is a New World warbler, that breeds in eastern North America and winters in the West Indies and Central America. Plain brown above, it is white below, with black streaks and with buff flanks and undertail, distinguishing it from the closely related northern waterthrush. The habitats it prefers are streams and their surroundings, and other wet areas....', 
            'https://en.wikipedia.org/wiki/Louisiana_waterthrush'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Magnolia_Warbler', 
            'Magnolia Warbler', 
            'Setophaga magnolia', 
            'The magnolia warbler (Setophaga magnolia) is a member of the wood warbler family Parulidae....', 
            'https://en.wikipedia.org/wiki/Magnolia_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mallard', 
            'Mallard', 
            '', 
            'The mallard () or wild duck (Anas platyrhynchos) is a dabbling duck that breeds throughout the temperate and subtropical Americas, Eurasia, and North Africa. It has been introduced to New Zealand, Australia, Peru, Brazil, Uruguay, Argentina, Chile, Colombia, the Falkland Islands, and South Africa. Belonging to the subfamily Anatinae of the waterfowl family Anatidae, mallards live in wetlands, eat water plants and small animals, and are social animals preferring to congregate in groups or flocks of varying sizes.
Males (drakes) have green heads, while the females (hens) have mainly brown-speckl...', 
            'https://en.wikipedia.org/wiki/Mallard'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mangrove_Cuckoo', 
            'Mangrove Cuckoo', 
            'Coccyzus minor', 
            'The mangrove cuckoo (Coccyzus minor) is a species of cuckoo that is native to the Neotropics....', 
            'https://en.wikipedia.org/wiki/Mangrove_cuckoo'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Marbled_Godwit', 
            'Marbled Godwit', 
            'Limosa fedoa', 
            'The marbled godwit (Limosa fedoa) is a large migratory shorebird in the family Scolopacidae. On average, it is the largest of the four species of godwit....', 
            'https://en.wikipedia.org/wiki/Marbled_godwit'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Marsh_Wren', 
            'Marsh Wren', 
            'Cistothorus palustris', 
            'The marsh wren (Cistothorus palustris) is a small North American songbird of the wren family. It was formerly called the long-billed marsh wren to distinguish it from the sedge wren, then known as the short-billed marsh wren....', 
            'https://en.wikipedia.org/wiki/Marsh_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Merlin', 
            'Merlin', 
            'Unknown', 
            'Merlin (Welsh: Myrddin, Cornish: Merdhyn, Breton: Merzhin) is a mythical figure prominently featured in the legend of King Arthur and best known as a magician, along with several other main roles. The familiar depiction of Merlin, based on an amalgamation of historical and legendary figures, was introduced by the 12th-century Catholic cleric Geoffrey of Monmouth and then built on by the French poet Robert de Boron and prose successors in the 13th century. Geoffrey’s account presented Merlin as a prophet and royal advisor to Arthur''s father, Uther Pendragon. 
Geoffrey seems to have combined ear...', 
            'https://en.wikipedia.org/wiki/Merlin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mew_Gull', 
            'Mew Gull', 
            'Unknown', 
            'Mew gull has been split into the following two species:

Common gull, Larus canus
Short-billed gull, Larus brachyrhynchus
The name can also refer to:

Percival Mew Gull, 1930s British racing aircraft...', 
            'https://en.wikipedia.org/wiki/Mew_gull'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mexican_Jay', 
            'Mexican Jay', 
            'Aphelocoma wollweberi', 
            'The Mexican jay (Aphelocoma wollweberi)  formerly known as the gray-breasted jay, is a New World jay native to the Sierra Madre Oriental, Sierra Madre Occidental, and Central Plateau of Mexico and parts of the southwestern United States. In May 2011, the American Ornithologists'' Union voted to split the Mexican jay into two species, one retaining the common name Mexican jay and one called the Transvolcanic jay. The Mexican jay is a medium-sized jay with blue upper parts and pale gray underparts. It resembles the Woodhouse''s scrub-jay, but has an unstreaked throat and breast. It feeds largely o...', 
            'https://en.wikipedia.org/wiki/Mexican_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mississippi_Kite', 
            'Mississippi Kite', 
            'Ictinia mississippiensis', 
            'The Mississippi kite (Ictinia mississippiensis) is a small bird of prey in the family Accipitridae.  Mississippi kites have narrow, pointed wings and are graceful in flight, often appearing to float in the air.  It is common to see several circling in the same area....', 
            'https://en.wikipedia.org/wiki/Mississippi_kite'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mockingbird', 
            'Mockingbird', 
            'Unknown', 
            'Mockingbirds are a group of New World passerine birds from the family Mimidae. They are best known for the habit of some species mimicking the songs of other birds and the sounds of insects and amphibians, often loudly and in rapid succession and for being extremely territorial when raising hatchlings. Studies have shown the ability of some species to identify individual humans and treat them differently based on learned threat assessments.
The only mockingbird commonly found in North America is the northern mockingbird. Mockingbirds are known for singing late at night, even past midnight.
The...', 
            'https://en.wikipedia.org/wiki/Mockingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Monk_Parakeet', 
            'Monk Parakeet', 
            'Myiopsitta monachus', 
            'The monk parakeet (Myiopsitta monachus), also known as the monk parrot or Quaker parrot, is a species of true parrot in the family Psittacidae. It is a small to medium, bright-green parrot with a greyish breast and greenish-yellow abdomen. Its average lifespan is approximately 15 years. It originates from the temperate to subtropical areas of South America. Self-sustaining feral populations occur in many places, mainly in areas of similar climate in North America and Europe....', 
            'https://en.wikipedia.org/wiki/Monk_parakeet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mottled_Duck', 
            'Mottled Duck', 
            'Anas fulvigula', 
            'The mottled duck (Anas fulvigula) or mottled mallard is a medium-sized species of dabbling duck. It is intermediate in appearance between the female mallard and the American black duck. It is closely related to those species, and is sometimes erroneously considered a subspecies of the former.
Along the Gulf of Mexico coast, the mottled duck is one of the most frequently banded waterfowl. This is due in part to the fact that it is mostly non-migratory. Approximately one out of every 20 mottled ducks is banded, making it an extremely prized and sought after bird among hunters....', 
            'https://en.wikipedia.org/wiki/Mottled_duck'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mountain_Bluebird', 
            'Mountain Bluebird', 
            'Sialia currucoides', 
            'The mountain bluebird (Sialia currucoides) is a migratory small thrush that is found in mountainous districts of western North America. It has a light underbelly and black eyes. Adult males have thin bills and are bright turquoise-blue and somewhat lighter underneath. Adult females have duller blue wings and tail, grey breast, grey crown, throat and back. In fresh fall plumage, the female''s throat and breast are tinged with red-orange which is brownish near the flank, contrasting with white tail underparts. Their call is a thin ''few'' while their song is a warbled high ''chur chur''. The mountain...', 
            'https://en.wikipedia.org/wiki/Mountain_bluebird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mountain_Chickadee', 
            'Mountain Chickadee', 
            'Poecile gambeli', 
            'The mountain chickadee (Poecile gambeli) is a small songbird, a passerine bird in the tit family Paridae....', 
            'https://en.wikipedia.org/wiki/Mountain_chickadee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mourning_Dove', 
            'Mourning Dove', 
            'Zenaida macroura', 
            'The mourning dove (Zenaida macroura) is a member of the dove family, Columbidae. The bird is also known as the American mourning dove, the rain dove, the chueybird, and colloquially as the turtle dove, and it was once known as the Carolina pigeon and Carolina turtledove. It is one of the most abundant and widespread North American birds and a popular gamebird, with more than 20 million birds (up to 70 million in some years) shot annually in the U.S., both for sport and meat. Its ability to sustain its population under such pressure is due to its prolific breeding; in warm areas, one pair may r...', 
            'https://en.wikipedia.org/wiki/Mourning_dove'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mourning_Warbler', 
            'Mourning Warbler', 
            'Geothlypis philadelphia', 
            'The mourning warbler (Geothlypis philadelphia) is a small songbird of the New World warbler family. Mourning warblers are native to eastern and central North America as well as some countries in Central America. They are neotropical migrants and tend to be found in dense second growth forests. They are under the Wood-warbler category, which consists of arboreal and terrestrial colorful passerines. Wood warblers are in the order Passeriformes, which are perching birds including more than half of all bird species, and the family Parulidae which also includes the common yellowthroat, black and wh...', 
            'https://en.wikipedia.org/wiki/Mourning_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Mute_Swan', 
            'Mute Swan', 
            'Cygnus olor', 
            'The mute swan (Cygnus olor) is a species of swan and a member of the waterfowl family Anatidae. It is native to much of Europe and parts of Asia and (as a rare winter visitor) the far north of Africa. It is an introduced species in North America, home to the largest populations outside of its native range, with additional smaller introductions in Australasia and Southern Africa. The name "mute" derives from it being less vocal than other swan species. Measuring 125 to 160 cm (49 to 63 in) in length, this large swan is wholly white in plumage, with an orange beak bordered with black. It is reco...', 
            'https://en.wikipedia.org/wiki/Mute_swan'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Myrtle_Warbler', 
            'Myrtle Warbler', 
            'Setophaga coronata', 
            'The myrtle warbler (Setophaga coronata) is a small New World warbler. It is considered a subspecies of the yellow-rumped warbler and its own species by different classification societies. The myrtle warbler has a northerly and easterly distribution, with the Audubon''s warbler farther west. It breeds in much of Canada and the northeastern United States. It is migratory, wintering in the southeastern United States, eastern Central America, and the Caribbean. It is a rare vagrant to western Europe, and has wintered in Great Britain.
The summer male myrtle warbler has a slate blue back, and yellow...', 
            'https://en.wikipedia.org/wiki/Myrtle_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Nashville_Warbler', 
            'Nashville Warbler', 
            'Leiothlypis ruficapilla', 
            'The Nashville warbler (Leiothlypis ruficapilla) is a small songbird in the New World warbler family, found in North and Central America. It breeds in parts of the northern and western United States and southern Canada, and migrates to winter in southern California and Texas, Mexico, and the north of Central America. It has a gray head and a green back, and its underparts are yellow and white....', 
            'https://en.wikipedia.org/wiki/Nashville_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Neotropic_Cormorant', 
            'Neotropic Cormorant', 
            'Nannopterum brasilianum', 
            'The neotropic cormorant or olivaceous cormorant (Nannopterum brasilianum) is a medium-sized cormorant found throughout the American tropics and subtropics, from the middle Rio Grande and the Gulf and Californian coasts of the United States south through Mexico and Central America to southern South America, where it is called by the indigenous name of biguá. It also breeds in the Bahamas, Cuba, and Trinidad. It can be found both on coasts (including some mangrove areas) and in inland waters. There are at least two subspecies: N. b. mexicanum from Nicaragua northwards and N. b. brasilianum furth...', 
            'https://en.wikipedia.org/wiki/Neotropic_cormorant'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Nighthawk', 
            'Nighthawk', 
            'Unknown', 
            'Nighthawks are ten New World species of nightjar in the family Caprimulgidae.
The nightjar family Caprimulgidae has been traditionally divided into two subfamilies, Chordeilinae containing the nighthawks in four genera, and Caprimulginae containing all the remaining species. The subfamily Chordeilinae had been introduced in 1851 by the American ornithologist John Cassin. The nighthawks were placed in four genera: Chordeiles Swainson, 1832 containing five species, Lurocalis Cassin, 1851 containing two species, Podager Wagler, 1832 containing the nacunda nighthawk, and Nyctiprogne Bonaparte, 185...', 
            'https://en.wikipedia.org/wiki/Nighthawk'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Bobwhite', 
            'Northern Bobwhite', 
            'Colinus virginianus', 
            'The northern bobwhite (Colinus virginianus), also known as the Virginia quail or (in its home range) bobwhite quail, is a ground-dwelling bird native to Canada, the United States, Mexico, and Cuba, with introduced populations elsewhere in the Caribbean, Europe, and Asia. It is a member of the group of species known as New World quail (Odontophoridae). They were initially placed with the Old World quail in the pheasant family (Phasianidae), but are not particularly closely related. The name "bobwhite" is an onomatopoeic derivation from its characteristic whistling call. Despite its secretive na...', 
            'https://en.wikipedia.org/wiki/Northern_bobwhite'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Cardinal', 
            'Northern Cardinal', 
            'Cardinalis cardinalis', 
            'The northern cardinal (Cardinalis cardinalis), also commonly known as the common cardinal, red cardinal, or simply cardinal, is a bird in the genus Cardinalis. It can be found in southeastern Canada, through the eastern United States from Maine to Minnesota to Texas, New Mexico, southern Arizona, southern California and south through Mexico, Belize, and Guatemala. It is also an introduced species in a few locations such as Bermuda and all major islands of Hawaii since its introduction in 1929. Its habitat includes woodlands, gardens, shrublands, and wetlands. It is the state bird of Illinois, ...', 
            'https://en.wikipedia.org/wiki/Northern_cardinal'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Flicker', 
            'Northern Flicker', 
            'Colaptes auratus', 
            'The northern flicker or common flicker (Colaptes auratus) is a medium-sized bird of the woodpecker family. It is native to most of North America, parts of Central America, Cuba, and the Cayman Islands, and is one of the few woodpecker species that migrate. Over 100 common names for the northern flicker are known, including yellowhammer (not to be confused with the Eurasian yellowhammer (Emberiza citrinella)), clape, gaffer woodpecker, harry-wicket, heigh-ho, wake-up, walk-up, wick-up, yarrup, and gawker bird. Many of these names derive from attempts to imitate some of its calls....', 
            'https://en.wikipedia.org/wiki/Northern_flicker'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Fulmar', 
            'Northern Fulmar', 
            'Fulmarus glacialis', 
            'The northern fulmar, Arctic fulmar, or simply fulmar (Fulmarus glacialis), is an abundant seabird found primarily in subarctic regions of the North Atlantic and North Pacific oceans. There has been one confirmed sighting in the Southern Hemisphere, with a single bird seen south of New Zealand. Fulmars come in one of two colour morphs; a light one in temperate populations, with white head and body and grey wings and tail, and a dark one in arctic populations, which is uniformly grey; intermediate birds are common. Though similar in appearance to gulls, fulmars are in fact members of the family ...', 
            'https://en.wikipedia.org/wiki/Northern_fulmar'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Gannet', 
            'Northern Gannet', 
            'Morus bassanus', 
            'The northern gannet (Morus bassanus) is a seabird, the largest species of the gannet family, Sulidae. It is native to the coasts of the Atlantic Ocean, breeding in Western Europe and Northeastern North America. It is the largest seabird in the northern Atlantic. The sexes are similar in appearance. The adult northern gannet has a mainly white streamlined body with a long neck, and long and slender wings. It is 87–100 cm (34+1⁄2–39+1⁄2 in) long with a 170–180 cm (67–71 in) wingspan. The head and nape have a buff tinge that is more prominent in breeding season, and the wings are edged with dark ...', 
            'https://en.wikipedia.org/wiki/Northern_gannet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Harrier', 
            'Northern Harrier', 
            'Circus hudsonius', 
            'The northern harrier (Circus hudsonius), also known as the marsh hawk or ring-tailed hawk, is a bird of prey. It breeds throughout the northern parts of the Northern Hemisphere in Canada and the northernmost United States.
The northern harrier migrates south in winter, with breeding birds in Canada and northern Great Plains of the U.S. moving to the American south, Mexico, and Central America. In the midwestern, mountain west, and north Atlantic states of the U.S., they may be present all year. This bird inhabits prairies, open areas, and marshes....', 
            'https://en.wikipedia.org/wiki/Northern_harrier'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Mockingbird', 
            'Northern Mockingbird', 
            'Mimus polyglottos', 
            'The northern mockingbird (Mimus polyglottos) is a mockingbird commonly found in North America, of the family Mimidae. The species is also found in some parts of the Caribbean, as well as on the Hawaiian Islands. It is typically a permanent resident across much of its range, but northern mockingbirds may move farther south during inclement weather or prior to the onset of winter. The northern mockingbird has gray to brown upper feathers and a paler belly. Its tail and wings have white patches which are visible in flight.
The species is known for its ability to mimic bird calls and other types o...', 
            'https://en.wikipedia.org/wiki/Northern_mockingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Parula', 
            'Northern Parula', 
            'Setophaga americana', 
            'The northern parula (Setophaga americana) is a small New World warbler. It is migratory and breeds in eastern North America from southern Canada to Florida....', 
            'https://en.wikipedia.org/wiki/Northern_parula'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Pintail', 
            'Northern Pintail', 
            'Anas acuta', 
            'The pintail or northern pintail (Anas acuta) is a duck species with wide geographic distribution that breeds in the northern areas of Europe and across the Palearctic and North America. It is migratory and winters south of its breeding range as far as the equator. Unusually for a bird with such a large range, it has no geographical subspecies, although the possibly conspecific duck Eaton''s pintail is considered to be a separate species.
The Northern Pintail is a large duck, and the long central tail feathers of the male give the species its English and scientific names. Both sexes have blue-gr...', 
            'https://en.wikipedia.org/wiki/Northern_pintail'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Pygmy_Owl', 
            'Northern Pygmy Owl', 
            'Glaucidium californicum', 
            'The northern pygmy owl (Glaucidium californicum) is a small owl native to western North America....', 
            'https://en.wikipedia.org/wiki/Northern_pygmy_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Shoveler', 
            'Northern Shoveler', 
            '; Spatula clypeata', 
            'The northern shoveler (; Spatula clypeata), often known simply as the shoveler where other related species do not occur, is a common and widespread duck. It breeds in northern areas of Europe and throughout the Palearctic and across most of North America, and winters in southern Europe, the Indian subcontinent, Southeast Asia, Central America, the Caribbean, and northern South America. It is a rare vagrant to Australia. In North America, it breeds along the southern edge of Hudson Bay and west of this body of water, and as far south as the Great Lakes west to Colorado, Nevada, and Oregon.
The ...', 
            'https://en.wikipedia.org/wiki/Northern_shoveler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Shrike', 
            'Northern Shrike', 
            'Lanius borealis', 
            'The northern shrike (Lanius borealis) is a large songbird species in the shrike family (Laniidae) native to North America and Siberia. Long considered a subspecies of the great grey shrike, it was classified as a distinct species in 2017. Six subspecies are recognised....', 
            'https://en.wikipedia.org/wiki/Northern_shrike'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northern_Waterthrush', 
            'Northern Waterthrush', 
            'Parkesia noveboracensis', 
            'The northern waterthrush (Parkesia noveboracensis) is a species of ground-feeding migratory New World warbler of the genus Parkesia. It breeds in the northern part of North America, in Alaska, Canada, and the northern United States; it winters in Florida, Central America, the West Indies, Venezuela, Colombia, and Ecuador.  It is a rare vagrant to other South American countries and to western Europe. Its closest relative is the Louisiana waterthrush....', 
            'https://en.wikipedia.org/wiki/Northern_waterthrush'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Northwestern_Crow', 
            'Northwestern Crow', 
            'Corvus brachyrhynchos', 
            'The American crow (Corvus brachyrhynchos) is a large passerine bird species of the family Corvidae. They are a common bird found throughout much of North America, only absent from the tundra biome. American crows are the New World counterpart to the carrion crow and the hooded crow of Eurasia, occupying similar ecological niches.
American crows have all-black plumage, with iridescent feathers. They look similar to other all-black corvids. They are highly intelligent, similar to other Corvidae, and are adaptable to human environments. 
The American crow can be distinguished from the common rave...', 
            'https://en.wikipedia.org/wiki/American_crow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Oak_Titmouse', 
            'Oak Titmouse', 
            'Baeolophus inornatus', 
            'The oak titmouse (Baeolophus inornatus) is a passerine bird in the tit family Paridae. The American Ornithologists'' Union split the plain titmouse into the oak titmouse and the juniper titmouse in 1996, due to distinct differences in song, preferred habitat, and genetic makeup.
The oak titmouse is a small, brown-tinged gray bird with a small tuft or crest. The face is plain, and the undersides are a lighter gray. Sexes are similar, as there is very little to no sexual dimorphism....', 
            'https://en.wikipedia.org/wiki/Oak_titmouse'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Orchard_Oriole', 
            'Orchard Oriole', 
            'Icterus spurius', 
            'The orchard oriole (Icterus spurius) is the smallest species of icterid. The subspecies of the Caribbean coast of Mexico, I. s. fuertesi, is sometimes considered a separate species, the ochre oriole or Fuertes''s oriole.
The orchard oriole is a small bird with a length of 5.9-7.1 inches, a weight of 0.6-1.0 ounces, and a wingspan of 9.8 inches. Adult males have chestnut or ochre underparts, while adult females and juveniles have olive-green upper parts and yellowish breasts and bellies. They inhabit semi-open areas with deciduous trees in eastern North America, southern Tamaulipas, and Veracruz...', 
            'https://en.wikipedia.org/wiki/Orchard_oriole'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Osprey', 
            'Osprey', 
            '; Pandion haliaetus', 
            'The osprey (; Pandion haliaetus), historically known as sea hawk, river hawk, and fish hawk, is a diurnal, fish-eating bird of prey with a cosmopolitan range. It is a large raptor, reaching more than 60 cm (24 in) in length and a wingspan of 180 cm (71 in). It is brown on the upperparts and predominantly greyish on the head and underparts.
The osprey tolerates a wide variety of habitats, nesting in any location near a body of water providing an adequate food supply. It is found on all continents except Antarctica, although in South America it occurs only as a non-breeding migrant.
As its other...', 
            'https://en.wikipedia.org/wiki/Osprey'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Ovenbird', 
            'Ovenbird', 
            'Seiurus aurocapilla', 
            'The ovenbird (Seiurus aurocapilla) is a small songbird of the New World warbler family Parulidae. It is the only species placed in the genus Seiurus. This migratory bird breeds in eastern North America and winters in Central America, many Caribbean islands, Florida and northern Venezuela....', 
            'https://en.wikipedia.org/wiki/Ovenbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pacific_Loon', 
            'Pacific Loon', 
            'Gavia pacifica', 
            'The Pacific loon or Pacific diver (Gavia pacifica) is a medium-sized member of the loon, or diver, family....', 
            'https://en.wikipedia.org/wiki/Pacific_loon'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pacific_Wren', 
            'Pacific Wren', 
            'Troglodytes pacificus', 
            'The Pacific wren (Troglodytes pacificus) is a very small North American bird and a member of the mainly New World wren family Troglodytidae. It was once lumped with Troglodytes hiemalis of eastern North America and Troglodytes troglodytes of Eurasia as the winter wren.
It breeds along the Pacific coast from Alaska to California and inland as far as Wyoming and the Black Hills of South Dakota. It migrates through and winters across the western half of the United States and Canada.
The scientific name is taken from the Greek word troglodytes (from trogle a hole, and dyein to creep), meaning ''cav...', 
            'https://en.wikipedia.org/wiki/Pacific_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Painted_Bunting', 
            'Painted Bunting', 
            'Passerina ciris', 
            'The painted bunting (Passerina ciris) is a species of bird in the cardinal family, Cardinalidae. It is native to North America. The bright plumage of the male develops beginning in the second year of life; in the first year, they can be distinguished from the female only by close inspection....', 
            'https://en.wikipedia.org/wiki/Painted_bunting'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Palm_Warbler', 
            'Palm Warbler', 
            'Setophaga palmarum', 
            'The palm warbler (Setophaga palmarum) is a small songbird in the New World warbler family....', 
            'https://en.wikipedia.org/wiki/Palm_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Parakeet_Auklet', 
            'Parakeet Auklet', 
            'Aethia psittacula', 
            'The parakeet auklet (Aethia psittacula) is a small seabird of the North Pacific. Parakeet Auklets used to be placed on its own in the genus Cyclorrhynchus (Kaup, 1829) but recent morphological and genetic evidence suggest it should be placed in the genus Aethia, making them closely related to crested auklets and least auklets. It is associated with the boreal waters of Alaska, Kamchatka and Siberia. It breeds on the cliffs, slopes and boulder fields of offshore islands, generally moving south during the winter....', 
            'https://en.wikipedia.org/wiki/Parakeet_auklet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pelagic_Cormorant', 
            'Pelagic Cormorant', 
            'Urile pelagicus', 
            'The pelagic cormorant (Urile pelagicus), also known as Baird''s cormorant or violet-green cormorant, is a small member of the cormorant family Phalacrocoracidae. Analogous to other smallish cormorants, it is also called the pelagic shag occasionally. This seabird lives along the coasts of the northern Pacific; during winter it can also be found in the open ocean. Pelagic cormorants have relatively short wings due to their need for economical movement underwater, and consequently have the highest flight costs of any bird.
It was formerly classified in the genus Phalacrocorax, but a 2014 study su...', 
            'https://en.wikipedia.org/wiki/Pelagic_cormorant'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Peregrine_Falcon', 
            'Peregrine Falcon', 
            'Falco peregrinus', 
            'The peregrine falcon (Falco peregrinus), also known simply as the peregrine, is a cosmopolitan bird of prey (raptor) in the family Falconidae renowned for its speed. A large, crow-sized falcon, it has a blue-grey back, barred white underparts and a black head. As is typical for bird-eating (avivore) raptors, peregrine falcons are sexually dimorphic, with females being considerably larger than males. Historically, the bird has also been known as the "black-cheeked falcon" in Australia, and the "duck hawk" in North America.
The breeding range includes land regions from the Arctic tundra to the t...', 
            'https://en.wikipedia.org/wiki/Peregrine_falcon'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Phainopepla', 
            'Phainopepla', 
            'Phainopepla nitens', 
            'The phainopepla or northern phainopepla (Phainopepla nitens) is the most northerly representative of the mainly tropical Central American family Ptiliogonatidae, the silky flycatchers. Its name is from the Greek phain pepla meaning "shining robe" in reference to the male''s plumage....', 
            'https://en.wikipedia.org/wiki/Phainopepla'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Philadelphia_Vireo', 
            'Philadelphia Vireo', 
            'Vireo philadelphicus', 
            'The Philadelphia vireo (Vireo philadelphicus) is a small North American songbird in the vireo family (Vireonidae). "Vireo" is a Latin word referring to a green migratory bird, perhaps the female golden oriole, possibly the European greenfinch. The specific philadelphicus is for the city of Philadelphia....', 
            'https://en.wikipedia.org/wiki/Philadelphia_vireo'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pied_Kingfisher', 
            'Pied Kingfisher', 
            'Ceryle rudis', 
            'The pied kingfisher (Ceryle rudis) is a species of water kingfisher widely distributed across Africa and Asia. Originally described by Carl Linnaeus in 1758, it has five recognised subspecies. Its black and white plumage and crest, as well as its habit of hovering over clear lakes and rivers before diving for fish, make it distinctive. Males have a double band across the breast, while females have a single broken breast band. They are usually found in pairs or small family groups. When perched, they often bob their head and flick up their tail....', 
            'https://en.wikipedia.org/wiki/Pied_kingfisher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pigeon_Guillemot', 
            'Pigeon Guillemot', 
            'Cepphus columba', 
            'The pigeon guillemot (Cepphus columba) () is a species of bird in the auk family, Alcidae. One of three species in the genus Cepphus, it is most closely related to the spectacled guillemot. There are five subspecies of the pigeon guillemot; all subspecies, when in breeding plumage, are dark brown with a black iridescent sheen and a distinctive wing patch broken by a brown-black wedge. Its non-breeding plumage has mottled grey and black upperparts and white underparts. The long bill is black, as are the claws. The legs, feet, and inside of the mouth are red. It closely resembles the black guill...', 
            'https://en.wikipedia.org/wiki/Pigeon_guillemot'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pileated_Woodpecker', 
            'Pileated Woodpecker', 
            'Unknown', 
            'The pileated woodpecker ( PY-lee-ay-tid, PIL-ee-; Dryocopus pileatus) is a large, crow-sized woodpecker with a prominent red crest, white neck stripe, and a mostly black body. These woodpeckers are native to North America, where it is the largest confirmed extant woodpecker species, and they are the third largest extant species of woodpecker in the world, after the great slaty woodpecker and the black woodpecker. It inhabits deciduous forests in eastern North America, the Great Lakes, the boreal forests of Canada, and parts of the Pacific Coast. The woodpecker is primarily an insectivore and e...', 
            'https://en.wikipedia.org/wiki/Pileated_woodpecker'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pine_Grosbeak', 
            'Pine Grosbeak', 
            'Pinicola enucleator', 
            'The pine grosbeak (Pinicola enucleator) is a large member of the true finch family, Fringillidae. It is the only species in the genus Pinicola. It is found in coniferous woods across Alaska, the western mountains of the United States, Canada, and in subarctic Fennoscandia and across the Palearctic to Siberia. The species is a frugivore, especially in winter, favoring small fruits, such as rowans (mountain-ashes in the New World). With fruit-crop abundance varying from year to year, pine grosbeak is one of many subarctic-resident bird species that exhibit irruptive behavior. In irruption years,...', 
            'https://en.wikipedia.org/wiki/Pine_grosbeak'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pine_Siskin', 
            'Pine Siskin', 
            'Spinus pinus', 
            'The pine siskin (Spinus pinus) is a North American bird in the finch family. It is a migratory bird with an extremely sporadic winter range....', 
            'https://en.wikipedia.org/wiki/Pine_siskin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pine_Warbler', 
            'Pine Warbler', 
            'Setophaga pinus', 
            'The pine warbler (Setophaga pinus) is a small songbird of the New World warbler family Parulidae. It is a permanent resident in the southeastern United States and also breeds in southeastern Canada and the northeastern United States, where it is migratory. Unlike other wood-warblers, in addition to insects the pine warbler also sometimes consumes seeds....', 
            'https://en.wikipedia.org/wiki/Pine_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Plumbeous_Vireo', 
            'Plumbeous Vireo', 
            'Vireo plumbeus', 
            'The plumbeous vireo (Vireo plumbeus) is a small North American songbird in the family Vireonidae, the vireos, greenlets, and shrike-babblers. It is found from the U. S. states of Montana and South Dakota south to Honduras....', 
            'https://en.wikipedia.org/wiki/Plumbeous_vireo'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pomarine_Jaeger', 
            'Pomarine Jaeger', 
            'Stercorarius pomarinus', 
            'The pomarine jaeger (Stercorarius pomarinus), pomarine skua, or pomatorhine skua, is a seabird in the skua family Stercorariidae. It is a migrant, wintering at sea in the tropical oceans....', 
            'https://en.wikipedia.org/wiki/Pomarine_jaeger'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Prairie_Falcon', 
            'Prairie Falcon', 
            'Falco mexicanus', 
            'The prairie falcon (Falco mexicanus) is a medium-sized falcon found in Western North America. A separate species from the peregrine falcon, with which it shares some visual similarities, the prairie falcon is, essentially, an arid-climate divergence of earlier peregrine falcon lineage. It is thus able to thrive on a more meager, opportunistic diet compared to that of the peregrine, and is generally lighter in weight than a peregrine of similar wingspan.  Having evolved in harsher and desert environments, often with low prey density, the prairie falcon has developed into an aggressive and oppor...', 
            'https://en.wikipedia.org/wiki/Prairie_falcon'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Prairie_Warbler', 
            'Prairie Warbler', 
            'Setophaga discolor', 
            'The prairie warbler (Setophaga discolor) is a small songbird of the New World warbler family....', 
            'https://en.wikipedia.org/wiki/Prairie_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Prothonotary_Warbler', 
            'Prothonotary Warbler', 
            'Protonotaria citrea', 
            'The prothonotary warbler (Protonotaria citrea) is a small songbird of the New World warbler family. It is named for its plumage, which resembles the yellow robes once worn by papal clerks (named prothonotaries) in the Roman Catholic Church.
The prothonotary warbler is the only member of the genus Protonotaria and the only eastern warbler that nests in natural or artificial cavities.
These warblers often move with quick, jerky, movements and will even crawl upside down on sticks or trees. During the spring they are often seen in wetlands gathering nesting material, or food, for their mate....', 
            'https://en.wikipedia.org/wiki/Prothonotary_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Purple_Finch', 
            'Purple Finch', 
            'Haemorhous purpureus', 
            'The purple finch (Haemorhous purpureus) is a bird in the finch family, Fringillidae. It breeds in the northern United States, southern Canada, and the west coast of North America....', 
            'https://en.wikipedia.org/wiki/Purple_finch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Purple_Gallinule', 
            'Purple Gallinule', 
            'Porphyrio martinica', 
            'The purple gallinule (Porphyrio martinica) is a species of swamphen found in the Americas. It is in the order Gruiformes, meaning "crane-like", an order which also contains cranes, rails, and crakes. The purple gallinule is a rail species, placing it into the family Rallidae. It is also known locally as the yellow-legged gallinule. The specific name martinica denotes "of Martinique"....', 
            'https://en.wikipedia.org/wiki/American_purple_gallinule'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Purple_Martin', 
            'Purple Martin', 
            'Progne subis', 
            'The purple martin (Progne subis) is a passerine bird in the swallow family Hirundinidae. It is the largest swallow in North America. Despite its name, the purple martin is not truly purple. The dark blackish-blue feathers have an iridescent sheen caused by the diffraction of incident light giving them a bright blue to navy blue or deep purple appearance. In some light, they may even appear green in color.
Being migratory, their breeding range extends from central Alberta down through the eastern United States. Subspecies breed in Baja California, Arizona, and New Mexico. Most make a brief stop...', 
            'https://en.wikipedia.org/wiki/Purple_martin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pygmy_Nuthatch', 
            'Pygmy Nuthatch', 
            'Sitta pygmaea', 
            'The pygmy nuthatch (Sitta pygmaea) is a tiny songbird, native to western North America....', 
            'https://en.wikipedia.org/wiki/Pygmy_nuthatch'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Pyrrhuloxia', 
            'Pyrrhuloxia', 
            'Cardinalis sinuatus', 
            'The pyrrhuloxia  or desert cardinal (Cardinalis sinuatus) is a medium-sized North American songbird found in the American southwest and northern Mexico. This distinctive species with a short, stout bill, red crest, and red wings closely resembles the northern cardinal and the vermilion cardinal, which are in the same genus....', 
            'https://en.wikipedia.org/wiki/Pyrrhuloxia'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Red_Crossbill', 
            'Red Crossbill', 
            'Loxia curvirostra', 
            'The red crossbill or common crossbill (Loxia curvirostra) is a small passerine bird in the finch family Fringillidae. Crossbills have distinctive mandibles, crossed at the tips, which enable them to extract seeds from conifer cones and other fruits.
Adults are often brightly coloured, with red or orange males and green or yellow females, but there is wide variation in beak size and shape, and call types, leading to different classifications of variants, some of which have been named as subspecies. The species is known as "red crossbill" in North America and "common crossbill" in Europe....', 
            'https://en.wikipedia.org/wiki/Red_crossbill'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Red_Shouldered_Hawk', 
            'Red Shouldered Hawk', 
            'Buteo lineatus', 
            'The red-shouldered hawk (Buteo lineatus) is a medium-sized buteo. Its breeding range spans eastern North America and along the coast of California and northern to northeastern-central Mexico. It is a permanent resident throughout most of its range, though northern birds do migrate, mostly to central Mexico. The main conservation threat to the widespread species is deforestation....', 
            'https://en.wikipedia.org/wiki/Red-shouldered_hawk'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Red_Tailed_Hawk', 
            'Red Tailed Hawk', 
            'Buteo jamaicensis', 
            'The red-tailed hawk (Buteo jamaicensis) is a bird of prey and one of the most common hawks in North America. In the United States, it is one of three species colloquially known as the "chickenhawk". The red-tailed hawk breeds throughout most of the continent, from western Alaska and northern Canada to as far south as Panama and the West Indies. The red-tailed hawk occupies a wide range of habitats and altitudes including deserts, grasslands, coniferous and deciduous forests, agricultural fields and urban areas. It is absent in areas of unbroken forest and in the high arctic. It is legally prot...', 
            'https://en.wikipedia.org/wiki/Red-tailed_hawk'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Reddish_Egret', 
            'Reddish Egret', 
            'Egretta rufescens', 
            'The reddish egret (Egretta rufescens) is a medium-sized heron that is a resident breeder in Central America, the Bahamas, the Caribbean, the Gulf Coast of the United States (primarily Texas), and Mexico. The egret is known for its unusual foraging behavior compared to other herons as well as its association with mud flats, its habitat of choice. 
In the past, this bird was a victim of the plume trade and is North America''s "rarest and least studied ardeid."...', 
            'https://en.wikipedia.org/wiki/Reddish_egret'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Redhead', 
            'Redhead', 
            'Unknown', 
            'Red hair, also known as ginger hair, is a human hair color found in 2–6% of people of Northern or Northwestern European ancestry and smaller amounts in other populations. It is most common in individuals homozygous for a recessive allele on chromosome 16 that produces an altered version of the MC1R protein.
Red hair varies in hue from a deep burgundy or bright copper, or auburn, to burnt orange or red-orange to strawberry blond. Characterized by high levels of the reddish pigment pheomelanin and relatively low levels of the dark pigment eumelanin, it is typically associated with fair skin colo...', 
            'https://en.wikipedia.org/wiki/Red_hair'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Rhinoceros_Auklet', 
            'Rhinoceros Auklet', 
            'Cerorhinca monocerata', 
            'The rhinoceros auklet (Cerorhinca monocerata) is a seabird and a close relative of the puffins. It is the only extant species of the genus Cerorhinca. Given its close relationship with the puffins, the common name rhinoceros puffin has been proposed for the species.
It ranges widely across the North Pacific, feeding on small fish and nesting in colonies. Its name is derived from a horn-like extension of the beak (the anatomic term for this extension is the rhamphotheca). This horn is only present in breeding adults, and like the elaborate sheath on the bill of puffins is shed every year. This ...', 
            'https://en.wikipedia.org/wiki/Rhinoceros_auklet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Ringed_Kingfisher', 
            'Ringed Kingfisher', 
            'Megaceryle torquata', 
            'The ringed kingfisher (Megaceryle torquata) is a large, conspicuous, and noisy kingfisher bird commonly found along the lower Rio Grande Valley in southeasternmost Texas in the United States through Central America to Tierra del Fuego in South America....', 
            'https://en.wikipedia.org/wiki/Ringed_kingfisher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Rock_Pigeon', 
            'Rock Pigeon', 
            'Columba livia', 
            'The rock dove (Columba livia), also known as the rock pigeon or common pigeon, is a member of the bird family Columbidae (doves and pigeons). In common usage, it is often simply referred to as the "pigeon", although the rock dove is the wild form of the bird; the pigeons familiar to most people are the domesticated forms of the wild rock dove.
Wild rock doves are uniformly pale grey with two black bars on each wing, with few differences being seen between males and females; i.e. they are not strongly sexually dimorphic. The domestic pigeon, often, but invalidly, called "Columba livia domestica...', 
            'https://en.wikipedia.org/wiki/Rock_dove'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Rock_Wren', 
            'Rock Wren', 
            'Salpinctes obsoletus', 
            'The rock wren (Salpinctes obsoletus) is a small songbird of the wren family native to western North America, Mexico and Central America.  It is the only species in the genus Salpinctes....', 
            'https://en.wikipedia.org/wiki/Rock_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Roseate_Spoonbill', 
            'Roseate Spoonbill', 
            'Platalea ajaja', 
            'The roseate spoonbill (Platalea ajaja) is a social wading bird of the ibis and spoonbill family, Threskiornithidae. It is a resident breeder in both South and North America. The roseate spoonbill''s pink color is diet-derived, consisting of the carotenoid pigment canthaxanthin, like the American flamingo....', 
            'https://en.wikipedia.org/wiki/Roseate_spoonbill'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Royal_Tern', 
            'Royal Tern', 
            'Thalasseus maximus', 
            'The royal tern (Thalasseus maximus) is a tern in the family Laridae. The species is endemic to the Americas, though vagrants have been identified in Europe....', 
            'https://en.wikipedia.org/wiki/Royal_tern'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Ruddy_Duck', 
            'Ruddy Duck', 
            'Oxyura jamaicensis', 
            'The ruddy duck (Oxyura jamaicensis) is a species of duck in the family Anatidae. The ruddy duck is one of six species within the stiff-tailed ducks (genus Oxyura). Stiff-tailed ducks occupy heavily vegetated habitats in North and South America as well as the British Isles, France, and Spain. In the 1940s, the ruddy duck was introduced to the United Kingdom, where it has since established a growing population. Outside the Americas, the ruddy duck is considered a highly invasive species, prompting many countries to initiate culling projects to eradicate it from the native ecosystem.
The generic ...', 
            'https://en.wikipedia.org/wiki/Ruddy_duck'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Ruddy_Turnstone', 
            'Ruddy Turnstone', 
            'Arenaria interpres', 
            'The ruddy turnstone (Arenaria interpres) is a small cosmopolitan wading bird, one of two species of turnstone in the genus Arenaria.
It is now classified in the sandpiper family Scolopacidae but was formerly sometimes placed in the plover family Charadriidae. It is a highly migratory bird, breeding in northern parts of Eurasia and North America, and flying south to winter on coastlines almost worldwide. It is the only species of turnstone in much of its range and is often known simply as turnstone....', 
            'https://en.wikipedia.org/wiki/Ruddy_turnstone'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Ruffed_Grouse', 
            'Ruffed Grouse', 
            'Bonasa umbellus', 
            'The ruffed grouse (Bonasa umbellus) is a medium-sized grouse occurring in forests from the Appalachian Mountains across Canada to Alaska. It is the most widely distributed game bird in North America. It is not migratory. It is the only species in the genus Bonasa. The ruffed grouse is sometimes incorrectly referred to as a "partridge", an unrelated phasianid, and occasionally confused with the grey partridge, a bird of open areas rather than woodlands.
The ruffed grouse is the state game bird of Pennsylvania, United States....', 
            'https://en.wikipedia.org/wiki/Ruffed_grouse'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Rufous_Hummingbird', 
            'Rufous Hummingbird', 
            'Selasphorus rufus', 
            'The rufous hummingbird (Selasphorus rufus) is a small hummingbird, about 8 cm (3 in) long with a long, straight and slender bill. These birds are known for their extraordinary flight skills, flying 3,200 kilometres (2,000 miles) during their migratory transits. It is one of nine species in the genus Selasphorus....', 
            'https://en.wikipedia.org/wiki/Rufous_hummingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Rusty_Blackbird', 
            'Rusty Blackbird', 
            'Euphagus carolinus', 
            'The rusty blackbird (Euphagus carolinus) is a medium-sized New World blackbird, closely related to grackles ("rusty grackle" is an older name for the species). It is a bird that prefers wet forested areas, breeding in the boreal forest and muskeg across northern Canada, and migrating southeast to the United States during winter.
Formerly abundant, the rusty blackbird has undergone one of the most rapid declines of any abundant bird species in North America in recent years, for reasons that are not well understood....', 
            'https://en.wikipedia.org/wiki/Rusty_blackbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Sage_Thrasher', 
            'Sage Thrasher', 
            'Oreoscoptes montanus', 
            'The sage thrasher (Oreoscoptes montanus) is a medium-sized passerine bird in the  family Mimidae. It is the only species in the genus Oreoscoptes and the smallest of the thrashers. It is found in the regions of western North America, breeding from the Great Basin to southern British Columbia, and migrates south to southern United States and northern Mexico for winter. Sage thrashers are commonly found in shrubsteppe habitat and are strongly associated with sagebrush (Artemisia spp.) for which it relies on for nesting....', 
            'https://en.wikipedia.org/wiki/Sage_thrasher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Sanderling', 
            'Sanderling', 
            'Calidris alba', 
            'The sanderling (Calidris alba) is a small wading bird. The name derives from Old English sand-yrðling, "sand-ploughman". The genus name is from Ancient Greek kalidris or skalidris, a term used by Aristotle for some grey-coloured waterside birds. The specific, alba, is Latin for "white".
It is a circumpolar Arctic breeder, being among the most extreme northern breeding birds in the world, nesting only on the coldest tundra, north of the 5°C July isotherm; in Europe, its southernmost breeding locality is Svalbard, where only a handful (5–15) pairs breed. It is a long-distance migrant, wintering ...', 
            'https://en.wikipedia.org/wiki/Sanderling'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Sandhill_Crane', 
            'Sandhill Crane', 
            'Antigone canadensis', 
            'The sandhill crane (Antigone canadensis) is a species complex of large cranes of North America and extreme northeastern Siberia. The common name of this bird refers to its habitat, such as the Platte River, on the edge of Nebraska''s Sandhills on the American Great Plains. Sandhill cranes are known to frequent the edges of bodies of water. The central Platte River Valley in Nebraska is the most important stopover area for the nominotypical subspecies, the lesser sandhill crane (A. c. canadensis), with up to 450,000 of these birds migrating through annually....', 
            'https://en.wikipedia.org/wiki/Sandhill_crane'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Savannah_Sparrow', 
            'Savannah Sparrow', 
            'Passerculus sandwichensis', 
            'The Savannah sparrow (Passerculus sandwichensis) is a small New World sparrow that is the only member of the genus Passerculus. It is a widespread and abundant species that occupies open grassland habitats in North America.
Over most of its range it is migratory, breeding in Canada and the northern United States while wintering in Mexico and the southern United States. It is a sexually monomorphic species that is quite variable in appearance. Around 17 subspecies are currently recognised. These are divided into several groups, some of which have sometimes been considered as separate species.
T...', 
            'https://en.wikipedia.org/wiki/Savannah_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Sayornis', 
            'Sayornis', 
            'Unknown', 
            'The genus Sayornis is a small group of medium-sized insect-eating birds, known as phoebes, in the tyrant flycatcher family Tyrannidae....', 
            'https://en.wikipedia.org/wiki/Sayornis'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Scaled_Quail', 
            'Scaled Quail', 
            'Callipepla squamata', 
            'The scaled quail (Callipepla squamata), also commonly called blue quail or cottontop, is a species of the New World quail family. It is a bluish gray bird found in the arid regions of the Southwestern United States to Central Mexico. This species is an early offshoot of the genus Callipepla, diverging in the Pliocene.
This bird is named for the scaly appearance of its breast and back feathers. Along with its scaly markings, the bird is easily identified by its white crest that resembles a tuft of cotton.
The nest is typically a grass-lined hollow containing 9–16 speckled eggs. When disturbed, ...', 
            'https://en.wikipedia.org/wiki/Scaled_quail'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Scarlet_Tanager', 
            'Scarlet Tanager', 
            'Piranga olivacea', 
            'The scarlet tanager (Piranga olivacea) is a medium-sized American songbird. Until recently, it was placed in the tanager family (Thraupidae), but it and other members of its genus are now classified as belonging to the cardinal family (Cardinalidae). The species'' plumage and vocalizations are similar to other members of the cardinal family, although the Piranga species lacks the thick conical bill (well suited to seed and insect eating) that many cardinals possess. The species resides in thick deciduous woodlands and suburbs....', 
            'https://en.wikipedia.org/wiki/Scarlet_tanager'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Seaside_Sparrow', 
            'Seaside Sparrow', 
            'Ammospiza maritima', 
            'The seaside sparrow (Ammospiza maritima) is a species of American sparrow....', 
            'https://en.wikipedia.org/wiki/Seaside_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Semipalmated_Plover', 
            'Semipalmated Plover', 
            'Charadrius semipalmatus', 
            'The semipalmated plover (Charadrius semipalmatus) is a small plover. Charadrius is a Late Latin word for a yellowish bird mentioned in the fourth-century Vulgate. It derives from Ancient Greek kharadrios a bird found in ravines and river valleys (kharadra, "ravine"). The specific semipalmatus is  Latin and comes from  semi, "half" and palma, "palm". Like the English name, this refers to its only partially webbed feet....', 
            'https://en.wikipedia.org/wiki/Semipalmated_plover'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Semipalmated_Sandpiper', 
            'Semipalmated Sandpiper', 
            'Calidris pusilla', 
            'The semipalmated sandpiper (Calidris pusilla) is a very small shorebird. The genus name is from Ancient Greek kalidris or skalidris, a term used by Aristotle for some grey-coloured waterside birds. The specific pusilla is Latin for "very small".
Within the genus Calidris the semipalmated sandpiper is most closely related to the western sandpiper (Calidris mauri). It was formerly sometimes separated with some other stints in either Ereunetes or Erolia, but these placements would leave the rest of Calidris a paraphyletic group....', 
            'https://en.wikipedia.org/wiki/Semipalmated_sandpiper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Sharp_Shinned_Hawk', 
            'Sharp Shinned Hawk', 
            'Accipiter striatus', 
            'The sharp-shinned hawk (Accipiter striatus) or northern sharp-shinned hawk, commonly known as a sharpie, is a small hawk, with males being the smallest hawks in the United States and Canada, but with the species averaging larger than some Neotropical species, such as the tiny hawk. The taxonomy is far from resolved, with some authorities considering the southern taxa to represent three separate species: white-breasted hawk (A. chionogaster), plain-breasted hawk (A. ventralis), and rufous-thighed hawk (A. erythronemius). The American Ornithological Society and some other checklists keep all fou...', 
            'https://en.wikipedia.org/wiki/Sharp-shinned_hawk'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Shiny_Cowbird', 
            'Shiny Cowbird', 
            'Molothrus bonariensis', 
            'The shiny cowbird (Molothrus bonariensis) is a passerine bird in the New World family Icteridae. It breeds in most of South America except for dense forests and areas of high altitude such as mountains. Since 1900 the shiny cowbird''s range has shifted northward, and it was recorded in the Caribbean islands as well as the United States, where it is found breeding in southern Florida. It is a bird associated with open habitats, including disturbed land from agriculture and deforestation.
Adults are sexually dimorphic. Males are all black with a purple-blue iridescence. The female is smaller, wit...', 
            'https://en.wikipedia.org/wiki/Shiny_cowbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Snow_Bunting', 
            'Snow Bunting', 
            'Plectrophenax nivalis', 
            'The snow bunting (Plectrophenax nivalis) is a passerine bird in the family Calcariidae. It is an Arctic specialist, with a circumpolar Arctic breeding range throughout the northern hemisphere. There are small isolated populations on a few high mountain tops south of the Arctic region, including the Cairngorms in central Scotland and the Saint Elias Mountains on the southern Alaska-Yukon border, as well as the Cape Breton Highlands. The snow bunting is the most northerly recorded passerine in the world....', 
            'https://en.wikipedia.org/wiki/Snow_bunting'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Snow_Goose', 
            'Snow Goose', 
            'Anser caerulescens', 
            'The snow goose (Anser caerulescens) is a species of goose native to North America. Both white and dark morphs exist, the latter often known as blue goose. Its name derives from the typically white plumage. The species was previously placed in the genus Chen, but is now typically included in the "gray goose" genus Anser.
Snow geese breed north of the timberline in Greenland, Canada, Alaska, and the northeastern tip of Siberia, and spend winters in warm parts of North America from southwestern British Columbia through parts of the United States to Mexico....', 
            'https://en.wikipedia.org/wiki/Snow_goose'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Snowy_Egret', 
            'Snowy Egret', 
            'Egretta thula', 
            'The snowy egret (Egretta thula) is a small white heron. The genus name comes from Provençal French for the little egret, aigrette, which is a diminutive of aigron, ''heron''. The species name thula is the Mapudungun term for the black-necked swan, applied to this species in error by Chilean naturalist Juan Ignacio Molina in 1782.
The snowy egret is the American counterpart to the very similar Old World little egret, which has become established in the Bahamas. At one time, the plumes of the snowy egret were in great demand as decorations for women''s hats. They were hunted for these plumes and th...', 
            'https://en.wikipedia.org/wiki/Snowy_egret'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Snowy_Owl', 
            'Snowy Owl', 
            'Bubo scandiacus', 
            'The snowy owl (Bubo scandiacus), also known as the polar owl, the white owl and the Arctic owl, is a large, white owl of the true owl family. Snowy owls are native to the Arctic regions of both North America and the Palearctic, breeding mostly on the tundra. It has a number of unique adaptations to its habitat and lifestyle, which are quite distinct from other extant owls. One of the largest species of owl, it is the only owl with mainly white plumage. Males tend to be a purer white overall while females tend to have more extensive flecks of dark brown. Juvenile male snowy owls have dark marki...', 
            'https://en.wikipedia.org/wiki/Snowy_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Solitary_Sandpiper', 
            'Solitary Sandpiper', 
            'Tringa solitaria', 
            'The solitary sandpiper (Tringa solitaria) is a small shorebird. The genus name Tringa is the Neo-Latin name given to the green sandpiper by Aldrovandus in 1599 based on Ancient Greek trungas, a thrush-sized, white-rumped, tail-bobbing wading bird mentioned by Aristotle. The specific solitaria is Latin for "solitary" from solus, "alone"....', 
            'https://en.wikipedia.org/wiki/Solitary_sandpiper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Song_Sparrow', 
            'Song Sparrow', 
            'Melospiza melodia', 
            'The song sparrow (Melospiza melodia) is a medium-sized New World sparrow. Among the native sparrows in North America, it is easily one of the most abundant, variable, and adaptable species....', 
            'https://en.wikipedia.org/wiki/Song_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Sooty_Albatross', 
            'Sooty Albatross', 
            'Phoebetria fusca', 
            'The sooty albatross (Phoebetria fusca), also known to sailors as the Quaker, is a species of marine bird belonging to the albatross family Diomedeidae. It is a medium-sized albatross that sports a sooty-brown or sooty-black color. It can be found in the southern Atlantic Ocean, the southern Indian Ocean, and the Southern Ocean. This bird scavenges for squid, fish, and carrion. Like other albatrosses, these birds mate for life and return to the same breeding spots every season. A single pair will mate every other year on a variety of islands in the southern Atlantic Ocean and the southern India...', 
            'https://en.wikipedia.org/wiki/Sooty_albatross'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Spotted_Catbird', 
            'Spotted Catbird', 
            'Ailuroedus maculosus', 
            'The spotted catbird (Ailuroedus maculosus) is a species of bowerbird (Ptilonorhynchidae) which can be found in north Queensland, the eastern Moluccas and New Guinea. Although it is a member of the bowerbird family it does not build a bower.
Widespread and common throughout its large range, the spotted catbird is evaluated as Least Concern on IUCN Red List of Threatened Species.
It is a chunky rainforest bird with emerald green upperparts, a black spot below the dark red eye, and green-olive underparts with extensive pale spotting.
It inhabits the Wet Tropics of northern Queensland (Cairns regi...', 
            'https://en.wikipedia.org/wiki/Spotted_catbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Spotted_Sandpiper', 
            'Spotted Sandpiper', 
            'Actitis macularius', 
            'The spotted sandpiper (Actitis macularius) is a small shorebird. Together with its sister species the common sandpiper (A. hypoleucos), it makes up the genus Actitis. They replace each other geographically; stray birds may settle down with breeders of the other species and hybridize....', 
            'https://en.wikipedia.org/wiki/Spotted_sandpiper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Spotted_Towhee', 
            'Spotted Towhee', 
            'Pipilo maculatus', 
            'The spotted towhee (Pipilo maculatus) is a large New World sparrow. The taxonomy of the towhees has been debated in recent decades, and until 1995 this bird and the eastern towhee were considered a single species, then named rufous-sided towhee. Another outdated name for the spotted towhee is the Oregon towhee (particularly for the subspecies Pipilo maculatus oregonus). The call may be harsher and more varied than for the eastern towhee....', 
            'https://en.wikipedia.org/wiki/Spotted_towhee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Summer_Tanager', 
            'Summer Tanager', 
            'Piranga rubra', 
            'The summer tanager (Piranga rubra) is a medium-sized American songbird. Formerly placed in the tanager family (Thraupidae), it and other members of its genus are now classified in the cardinal family (Cardinalidae). The species''s plumage and vocalizations are similar to other members of the cardinal family....', 
            'https://en.wikipedia.org/wiki/Summer_tanager'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Surf_Scoter', 
            'Surf Scoter', 
            'Melanitta perspicillata', 
            'The surf scoter (Melanitta perspicillata) is a large sea duck native to North America. Adult males are almost entirely black with characteristic white patches on the forehead and the nape and adult females are slightly smaller and browner. Surf scoters breed in Northern Canada and Alaska and winter along the Pacific and Atlantic coasts of North America. Those diving ducks mainly feed on benthic invertebrates, mussels representing an important part of their diet....', 
            'https://en.wikipedia.org/wiki/Surf_scoter'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Surfbird', 
            'Surfbird', 
            'Calidris virgata', 
            'The surfbird (Calidris virgata) is a small stocky wader in the family Scolopacidae. It was once considered to be allied to the turnstones, and placed in the monotypic genus Aphriza, but is now placed in the genus Calidris.
This bird has a short dark bill, yellow legs and a black band at the end of the white rump. In breeding plumage, it has dark streaks on the brownish head and breast with dark spots on its white underparts; the upperparts are dark with rust colouring on the wings. Birds in winter plumage and immature birds are mainly grey on the upperparts and breast and white on the underpar...', 
            'https://en.wikipedia.org/wiki/Surfbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Swamp_Sparrow', 
            'Swamp Sparrow', 
            'Melospiza georgiana', 
            'The swamp sparrow (Melospiza georgiana) is a medium-sized New World sparrow related to the song sparrow....', 
            'https://en.wikipedia.org/wiki/Swamp_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tennessee_Warbler', 
            'Tennessee Warbler', 
            'Leiothlypis peregrina', 
            'The Tennessee warbler (Leiothlypis peregrina) is a New World warbler that breeds in eastern North America and winters in southern Central America, the Caribbean, and northern South America. The specific name peregrina is from  Latin  peregrinus "wanderer"....', 
            'https://en.wikipedia.org/wiki/Tennessee_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tree_Sparrow', 
            'Tree Sparrow', 
            'Passer montanus', 
            'The Eurasian tree sparrow (Passer montanus) is a passerine bird in the sparrow family with a rich chestnut crown and nape and a black patch on each pure white cheek. The sexes are similarly plumaged, and young birds are a duller version of the adult. This sparrow breeds over most of temperate Eurasia and Southeast Asia, where it is known as the tree sparrow, and it has been introduced elsewhere including the United States, where it is known as the Eurasian tree sparrow or German sparrow to differentiate it from the native American tree sparrow. Although several subspecies are recognised, the a...', 
            'https://en.wikipedia.org/wiki/Eurasian_tree_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tree_Swallow', 
            'Tree Swallow', 
            'Tachycineta bicolor', 
            'The tree swallow (Tachycineta bicolor) is a migratory bird of the family Hirundinidae. Found in the Americas, the tree swallow was first described in 1807 by French ornithologist Louis Vieillot as Hirundo bicolor. It has since been moved to its current genus, Tachycineta, within which its phylogenetic placement is debated. The tree swallow has glossy blue-green upperparts, with the exception of the blackish wings and tail, and white underparts. The bill is black, the eyes dark brown, and the legs and feet pale brown. The female is generally duller than the male, and the first-year female has m...', 
            'https://en.wikipedia.org/wiki/Tree_swallow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tricolored_Heron', 
            'Tricolored Heron', 
            'Egretta tricolor', 
            'The tricolored heron (Egretta tricolor), formerly known as the Louisiana heron, is a small species of heron native to coastal parts of the Americas. The species is more solitary than other species of heron in the Americas and eats a diet consisting mostly of small fish....', 
            'https://en.wikipedia.org/wiki/Tricolored_heron'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tropical_Kingbird', 
            'Tropical Kingbird', 
            'Tyrannus melancholicus', 
            'The tropical kingbird (Tyrannus melancholicus) is a large tyrant flycatcher. This bird breeds from southern Arizona and the lower Rio Grande Valley of Texas in the United States through Central America, South America as far as south as central Argentina and eastern Peru, and on Trinidad and Tobago. Birds from the northernmost and southern breeding areas migrate to warmer parts of the range after breeding....', 
            'https://en.wikipedia.org/wiki/Tropical_kingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Trumpeter_Swan', 
            'Trumpeter Swan', 
            'Cygnus buccinator', 
            'The trumpeter swan (Cygnus buccinator), or simply the trumpeter, is a species of swan found in North America. The heaviest living bird native to North America, it is also the largest extant species of waterfowl, with a wingspan of 185 to 304.8 cm (6 ft 2 in to 10 ft 2 in). It is the American counterpart and a close relative of the whooper swan (Cygnus cygnus) of Eurasia and has even been considered the same species by some authorities. By 1933, fewer than 70 wild individuals were known to exist; extinction seemed imminent until aerial surveys discovered a Pacific population of several thousand...', 
            'https://en.wikipedia.org/wiki/Trumpeter_swan'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tufted_Titmouse', 
            'Tufted Titmouse', 
            'Baeolophus bicolor', 
            'The tufted titmouse (Baeolophus bicolor) is a small songbird native to eastern North America. The species belongs to the tit and chickadee family (Paridae). The black-crested titmouse, found from central and southern Texas southward, was included as a subspecies but now is considered a separate species, Baeolophus atricristatus....', 
            'https://en.wikipedia.org/wiki/Tufted_titmouse'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Tundra_Swan', 
            'Tundra Swan', 
            'Cygnus columbianus', 
            'The tundra swan (Cygnus columbianus) is a small swan of the Holarctic. The two taxa within it are usually regarded as conspecific, but are also sometimes split into two species: Bewick''s swan (Cygnus bewickii) of the Palaearctic and the whistling swan (C. columbianus) proper of the Nearctic. Birds from eastern Russia (roughly east of the Taymyr Peninsula) are sometimes separated as the subspecies C. c. jankowskii, but this is not widely accepted as distinct, with most authors including them in C. c. bewickii.
Bewick''s swan was named in 1830 by William Yarrell after the engraver Thomas Bewick, ...', 
            'https://en.wikipedia.org/wiki/Tundra_swan'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Turkey_Vulture', 
            'Turkey Vulture', 
            'Cathartes aura', 
            'The turkey vulture (Cathartes aura) is the most widespread of the New World vultures. One of three species in the genus Cathartes of the family Cathartidae, the turkey vulture ranges from southern Canada to the southernmost tip of South America. It inhabits a variety of open and semi-open areas, including subtropical forests, shrublands, pastures, and deserts.
Like all New World vultures, it is not closely related to the Old World vultures of Europe, Africa, and Asia. However, the two groups strongly resemble each other due to convergent evolution.
The turkey vulture is a scavenger and feeds a...', 
            'https://en.wikipedia.org/wiki/Turkey_vulture'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Varied_Thrush', 
            'Varied Thrush', 
            'Ixoreus naevius', 
            'The varied thrush (Ixoreus naevius) is a member of the thrush family, Turdidae. It is the only species in the monotypic genus Ixoreus....', 
            'https://en.wikipedia.org/wiki/Varied_thrush'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Veery', 
            'Veery', 
            'Catharus fuscescens', 
            'The veery (Catharus fuscescens) is a small North American thrush species, a member of a group of closely related and similar species in the genus Catharus, also including the gray-cheeked thrush (C. minimus), Bicknell''s thrush (C. bicknelli), Swainson''s thrush (C. ustulatus), and hermit thrush (C. guttatus). Alternate names for this species include Wilson''s thrush (named so after Alexander Wilson) and tawny thrush. Up to six subspecies exist, which are grouped into the eastern veery (C. fuscescens fuscescens), the western veery or willow thrush (C. fuscescens salicicolus), and the Newfoundland...', 
            'https://en.wikipedia.org/wiki/Veery'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Verdin', 
            'Verdin', 
            'Auriparus flaviceps', 
            'The verdin (Auriparus flaviceps) is a species of penduline tit. It is the only species in the genus Auriparus and the only representative of the Old World family Remizidae to be found in North America....', 
            'https://en.wikipedia.org/wiki/Verdin'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Vermilion_Flycatcher', 
            'Vermilion Flycatcher', 
            'Pyrocephalus obscurus', 
            'The vermilion flycatcher (Pyrocephalus obscurus) is a small passerine bird in the tyrant flycatcher family found throughout South America and southern North America. It is a striking exception among the generally drab Tyrannidae due to its vermilion-red coloration. The males have bright red crowns, chests, and underparts, with brownish wings and tails. Females lack the vivid red coloration and can be hard to identify—they may be confused for Say''s phoebe. The vermilion flycatcher''s song is a pit pit pit pidddrrrreeedrr, which is variable and important in establishing a territory. Riparian habi...', 
            'https://en.wikipedia.org/wiki/Vermilion_flycatcher'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Vesper_Sparrow', 
            'Vesper Sparrow', 
            'Pooecetes gramineus', 
            'The vesper sparrow (Pooecetes gramineus) is a medium-sized New World sparrow. The only member of the genus Pooecetes, it is a pale sparrow with brown streaks that breeds across the grasslands of northern North America. It migrates to winter in the southern United States and Mexico....', 
            'https://en.wikipedia.org/wiki/Vesper_sparrow'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Warbling_Vireo', 
            'Warbling Vireo', 
            'Vireo gilvus', 
            'The warbling vireo (Vireo gilvus) is a small North American songbird.
Its breeding habitat is open deciduous and mixed woods from Alaska to Mexico. It often nests in widely spaced trees, often cottonwood or aspen, along streams or rivers. It migrates to Mexico and Central America.
Measurements:

Length: 4.7–5.1 in (12–13 cm)
Weight: 0.3–0.6 oz (10–16 g)
Wingspan: 8.7 in (22 cm)
They are mainly olive-grey on the head and upperparts with white underparts; they have brown eyes and the front of the face is light. There is a white supercilium. They have thick blue-grey legs and a stout bill. Wester...', 
            'https://en.wikipedia.org/wiki/Warbling_vireo'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Bluebird', 
            'Western Bluebird', 
            'Sialia mexicana', 
            'The western bluebird (Sialia mexicana) is a small North American thrush....', 
            'https://en.wikipedia.org/wiki/Western_bluebird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Grebe', 
            'Western Grebe', 
            'Aechmophorus occidentalis', 
            'The western grebe (Aechmophorus occidentalis) is a species in the grebe family of water birds. Folk names include "dabchick", "swan grebe" and "swan-necked grebe".
Western grebe fossils from the Late Pleistocene of southwest North America were described as a distinct species, but later ranked as a paleosubspecies Aechmophorus occidentalis lucasi. Later studies found them to fall within the variation now known to exist in today''s birds....', 
            'https://en.wikipedia.org/wiki/Western_grebe'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Gull', 
            'Western Gull', 
            'Larus occidentalis', 
            'The western gull (Larus occidentalis) is a large white-headed gull that lives on the west coast of North America and the Pacific Ocean. The western gull ranges from British Columbia, Canada, to Baja California, Mexico.
It was previously considered conspecific with the yellow-footed gull (Larus livens) of the Gulf of California....', 
            'https://en.wikipedia.org/wiki/Western_gull'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Kingbird', 
            'Western Kingbird', 
            'Tyrannus verticalis', 
            'The western kingbird (Tyrannus verticalis) is a large tyrant flycatcher found throughout western North America, as far south as Mexico....', 
            'https://en.wikipedia.org/wiki/Western_kingbird'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Meadowlark', 
            'Western Meadowlark', 
            'Sturnella neglecta', 
            'The western meadowlark (Sturnella neglecta) is a medium-sized icterid bird, about 8.5 in (22 cm) in length. It is found across western and central North America and is a full migrant, breeding in Canada and the United States with resident populations also found in Mexico. The western meadowlark nests on the ground in open grasslands and shrublands. It feeds on bugs and seeds. The western meadowlark has distinctive calls described as watery or flute-like, which distinguish it from the closely related eastern meadowlark. The western meadowlark is the state bird of six states: Kansas, Montana, Ne...', 
            'https://en.wikipedia.org/wiki/Western_meadowlark'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Sandpiper', 
            'Western Sandpiper', 
            'Calidris mauri', 
            'The western sandpiper (Calidris mauri) is a small migratory shorebird. The genus name is from Ancient Greek kalidris or skalidris, a term used by Aristotle for some grey-coloured waterside birds. The specific mauri commemorates Italian botanist Ernesto Mauri (1791–1836).
This is one of the most abundant shorebird species in North America, with a population in the millions.
Within the genus Calidris the western sandpiper is most closely related to the semipalmated sandpiper (Calidris pusilla)....', 
            'https://en.wikipedia.org/wiki/Western_sandpiper'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Screech_Owl', 
            'Western Screech Owl', 
            'Megascops kennicottii', 
            'The western screech owl (Megascops kennicottii) is a small owl native to North and Central America, closely related to the eastern screech owl. The scientific name commemorates the American naturalist Robert Kennicott....', 
            'https://en.wikipedia.org/wiki/Western_screech_owl'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Scrub_Jay', 
            'Western Scrub Jay', 
            'Unknown', 
            'Western scrub jay has been split into the following species:

California scrub jay,	Aphelocoma californica
Woodhouse''s scrub jay, 	Aphelocoma woodhouseii
The island scrub jay, A. insularis, is a scrub jay and lives in the West, but was not part of the western scrub jay species....', 
            'https://en.wikipedia.org/wiki/Western_scrub_jay'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Tanager', 
            'Western Tanager', 
            'Piranga ludoviciana', 
            'The western tanager (Piranga ludoviciana), is a medium-sized American songbird. Formerly placed in the tanager family (Thraupidae), it and other members of its genus are classified in the cardinal family (Cardinalidae). The species''s plumage and vocalizations are similar to other members of the cardinal family....', 
            'https://en.wikipedia.org/wiki/Western_tanager'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Western_Wood_Pewee', 
            'Western Wood Pewee', 
            'Contopus sordidulus', 
            'The western wood pewee (Contopus sordidulus) is a small tyrant flycatcher. Adults are gray-olive on the upperparts with light underparts, washed with olive on the breast. They have two wing bars and a dark bill with yellow at the base of the lower mandible. This bird is very similar in appearance to the eastern wood pewee; the two birds were formerly considered to be one species. The call of C. sordidulus is a loud buzzy peeer; the song consists of three rapid descending tsees ending with a descending peeer....', 
            'https://en.wikipedia.org/wiki/Western_wood_pewee'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Whimbrel', 
            'Whimbrel', 
            'common', 
            'Whimbrel may refer to:
Birds:

Eurasian whimbrel (common), Numenius phaeopus
Hudsonian whimbrel, Numenius hudsonicus
Bristle-thighed curlew, Numenius tahitiensis
Other uses:

HMS Whimbrel (U29), last surviving Royal Navy warship present at the Japanese surrender in World War II...', 
            'https://en.wikipedia.org/wiki/Whimbrel'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'White_Ibis', 
            'White Ibis', 
            'Unknown', 
            'White ibis may refer to several birds:

American white ibis, Eudocimus albus
Australian white ibis, Threskiornis molucca
Solomons white ibis or Solomon Islands white ibis, Threskiornis (molucca) pygmaeus
Asiatic white ibis, an alternative name for the black-headed ibis, Threskiornis melanocephala...', 
            'https://en.wikipedia.org/wiki/White_ibis'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'White_Pelican', 
            'White Pelican', 
            'Unknown', 
            'White pelican may refer to:...', 
            'https://en.wikipedia.org/wiki/White_pelican'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Wild_Turkey', 
            'Wild Turkey', 
            'Unknown', 
            'A wild turkey is a heavy North American gamebird.
Wild Turkey may also refer to:

Wild Turkey (bourbon), a brand of whiskey
Wild Turkey (band), a 1970s rock band formed by former Jethro Tull bassist Glenn Cornick and Gentle Giant drummer John Weathers
The act of rolling six consecutive strikes (bowling)...', 
            'https://en.wikipedia.org/wiki/Wild_Turkey'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Willet', 
            'Willet', 
            'Tringa semipalmata', 
            'The willet (Tringa semipalmata) is a large shorebird in the family Scolopacidae. It is a relatively large and robust sandpiper and is the largest of the species called "shanks" in the genus Tringa. Its closest relative is the lesser yellowlegs, a much smaller bird with a very different appearance apart from the fine, clear, and dense pattern of the neck, which both species show in breeding plumage. It breeds in North America and the West Indies and winters in southern North America, Central America, the West Indies and South America....', 
            'https://en.wikipedia.org/wiki/Willet'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Winter_Wren', 
            'Winter Wren', 
            'Troglodytes hiemalis', 
            'The winter wren (Troglodytes hiemalis) is a very small North American bird and a member of the mainly New World wren family Troglodytidae. The species contained the congeneric Pacific wren (Troglodytes pacificus) of western North America and Eurasian wren (Troglodytes troglodytes) of Eurasia until they were split in 2010.
It breeds in coniferous forests from British Columbia to the Atlantic Ocean. It migrates through and winters across southeastern Canada, the eastern half the United States and (rarely) north-eastern Mexico. Small numbers may be casual in the western United States and Canada.
...', 
            'https://en.wikipedia.org/wiki/Winter_wren'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Wood_Duck', 
            'Wood Duck', 
            'Aix sponsa', 
            'The wood duck or Carolina duck (Aix sponsa) is a partially migratory species of perching duck found in North America. The male is one of the most colorful North American waterfowls....', 
            'https://en.wikipedia.org/wiki/Wood_duck'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Wood_Stork', 
            'Wood Stork', 
            'Mycteria americana', 
            'The wood stork (Mycteria americana) is a large wading bird in the family Ciconiidae (storks). Originally described in 1758 by Carl Linnaeus, this stork is native to the subtropics and tropics of the Americas where it persists in habitats with fluctuating water levels. It is the only stork species that breeds in North America. The head and neck are bare of feathers, and dark grey in colour. The plumage is mostly white, with the exception of the tail and some of the wing feathers, which are black with a greenish-purplish sheen.
Globally, the wood stork is considered to be of least concern by the...', 
            'https://en.wikipedia.org/wiki/Wood_stork'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Wood_Thrush', 
            'Wood Thrush', 
            'Hylocichla mustelina', 
            'The wood thrush (Hylocichla mustelina) is a North American passerine bird in the family Turdidae and is the only species placed in the genus Hylocichla. It is closely related to other thrushes such as the American robin and is widely distributed across North America, wintering in Central America and southern Mexico. The wood thrush is the official bird of the District of Columbia.
The wood thrush is a medium-sized thrush, with brown upper parts with mottled brown and white underparts. The male and female are similar in appearance. The song of the male is often cited as being the most beautiful...', 
            'https://en.wikipedia.org/wiki/Wood_thrush'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Wrentit', 
            'Wrentit', 
            'Chamaea fasciata', 
            'The wrentit (Chamaea fasciata) is a small bird that lives in chaparral, oak woodlands, and bushland on the western coast of North America. It is the only species in the genus Chamaea.
Its systematics have been the subject of much debate, the wrentit having been placed in many different families by different authors for as long as it has been known to science. Its common name reflects the uncertainty, and its external resemblance to both tits and wrens. It is not related to either, however. More recent and comprehensive phylogenetic studies support it belonging to the parrotbills....', 
            'https://en.wikipedia.org/wiki/Wrentit'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        

        INSERT INTO species_info (class_name, common_name, scientific_name, description, wiki_url)
        VALUES (
            'Yellow_Warbler', 
            'Yellow Warbler', 
            'Setophaga petechia', 
            'The yellow warbler (Setophaga petechia) is a New World warbler species. Yellow warblers are the most widespread species in the diverse genus Setophaga, breeding in almost the whole of North America, the Caribbean, as well as northern South America....', 
            'https://en.wikipedia.org/wiki/Yellow_warbler'
        ) ON CONFLICT (class_name) DO UPDATE 
        SET description = EXCLUDED.description;
        