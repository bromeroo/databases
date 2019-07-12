3. Write queries to retrieve data that answers the following questions:
Use world.sql db.
i. What are the names of the countries with population greater than 8 million
select Name from country where population>8000000;
+---------------------------------------+
| Name                                  |
+---------------------------------------+
| Afghanistan                           |
| Angola                                |
| Argentina                             |
| Australia                             |
| Austria                               |
| Belgium                               |
| Burkina Faso                          |
| Bangladesh                            |
| Bulgaria                              |
| Belarus                               |
| Bolivia                               |
| Brazil                                |
| Canada                                |
| Chile                                 |
| China                                 |
| Côte d?Ivoire                         |
| Cameroon                              |
| Congo, The Democratic Republic of the |
| Colombia                              |
| Cuba                                  |
| Czech Republic                        |
| Germany                               |
| Dominican Republic                    |
| Algeria                               |
| Ecuador                               |
| Egypt                                 |
| Spain                                 |
| Ethiopia                              |
| France                                |
| United Kingdom                        |
| Ghana                                 |
| Greece                                |
| Guatemala                             |
| Haiti                                 |
| Hungary                               |
| Indonesia                             |
| India                                 |
| Iran                                  |
| Iraq                                  |
| Italy                                 |
| Japan                                 |
| Kazakstan                             |
| Kenya                                 |
| Cambodia                              |
| South Korea                           |
| Sri Lanka                             |
| Morocco                               |
| Madagascar                            |
| Mexico                                |
| Mali                                  |
| Myanmar                               |
| Mozambique                            |
| Malawi                                |
| Malaysia                              |
| Niger                                 |
| Nigeria                               |
| Netherlands                           |
| Nepal                                 |
| Pakistan                              |
| Peru                                  |
| Philippines                           |
| Poland                                |
| North Korea                           |
| Portugal                              |
| Romania                               |
| Russian Federation                    |
| Saudi Arabia                          |
| Sudan                                 |
| Senegal                               |
| Somalia                               |
| Sweden                                |
| Syria                                 |
| Thailand                              |
| Tunisia                               |
| Turkey                                |
| Taiwan                                |
| Tanzania                              |
| Uganda                                |
| Ukraine                               |
| United States                         |
| Uzbekistan                            |
| Venezuela                             |
| Vietnam                               |
| Yemen                                 |
| Yugoslavia                            |
| South Africa                          |
| Zambia                                |
| Zimbabwe                              |
+---------------------------------------+
88 rows in set (0.01 sec)
ii. What are the names of the countries that have “land” in their names ?
select Name from country where Name like'%land%';
+----------------------------------------------+
| Name                                         |
+----------------------------------------------+
| Netherlands Antilles                         |
| Bouvet Island                                |
| Cocos (Keeling) Islands                      |
| Switzerland                                  |
| Cook Islands                                 |
| Christmas Island                             |
| Cayman Islands                               |
| Finland                                      |
| Fiji Islands                                 |
| Falkland Islands                             |
| Faroe Islands                                |
| Greenland                                    |
| Heard Island and McDonald Islands            |
| Ireland                                      |
| Iceland                                      |
| Marshall Islands                             |
| Northern Mariana Islands                     |
| Norfolk Island                               |
| Netherlands                                  |
| New Zealand                                  |
| Poland                                       |
| South Georgia and the South Sandwich Islands |
| Solomon Islands                              |
| Swaziland                                    |
| Turks and Caicos Islands                     |
| Thailand                                     |
| United States Minor Outlying Islands         |
| Virgin Islands, British                      |
| Virgin Islands, U.S.                         |
+----------------------------------------------+
29 rows in set (0.00 sec)
iii. What are the names of the cities with population in between 500,000 and 1 million ?
select Name from city where population between 500000 and 1000000;
+--------------------------------+
| Name                           |
+--------------------------------+
| Amsterdam                      |
| Rotterdam                      |
| Oran                           |
| Dubai                          |
| Rosario                        |
| Lomas de Zamora                |
| Quilmes                        |
| Almirante Brown                |
| La Plata                       |
| Mar del Plata                  |
| Adelaide                       |
| Khulna                         |
| Cotonou                        |
| Santa Cruz de la Sierra        |
| La Paz                         |
| El Alto                        |
| Campinas                       |
| São Gonçalo                    |
| Nova Iguaçu                    |
| São Luís                       |
| Maceió                         |
| Duque de Caxias                |
| São Bernardo do Campo          |
| Teresina                       |
| Natal                          |
| Osasco                         |
| Campo Grande                   |
| Santo André                    |
| João Pessoa                    |
| Jaboatão dos Guararapes        |
| Contagem                       |
| São José dos Campos            |
| Glasgow                        |
| Ouagadougou                    |
| Shubra al-Khayma               |
| Valencia                       |
| Sevilla                        |
| Zaragoza                       |
| Málaga                         |
| Soweto                         |
| Johannesburg                   |
| Port Elizabeth                 |
| Pretoria                       |
| Inanda                         |
| Durban                         |
| Cebu                           |
| Zamboanga                      |
| Pasig                          |
| Ciudad de Guatemala            |
| Port-au-Prince                 |
| Tegucigalpa                    |
| Malang                         |
| Bandar Lampung                 |
| Bekasi                         |
| Padang                         |
| Surakarta                      |
| Madurai                        |
| Haora (Howrah)                 |
| Varanasi (Benares)             |
| Patna                          |
| Srinagar                       |
| Agra                           |
| Coimbatore                     |
| Thane (Thana)                  |
| Allahabad                      |
| Meerut                         |
| Vishakhapatnam                 |
| Jabalpur                       |
| Amritsar                       |
| Faridabad                      |
| Vijayawada                     |
| Gwalior                        |
| Jodhpur                        |
| Nashik (Nasik)                 |
| Hubli-Dharwad                  |
| Solapur (Sholapur)             |
| Ranchi                         |
| Bareilly                       |
| Guwahati (Gauhati)             |
| Shambajinagar (Aurangabad)     |
| Cochin (Kochi)                 |
| Rajkot                         |
| Kota                           |
| Thiruvananthapuram (Trivandrum |
| Pimpri-Chinchwad               |
| Jalandhar (Jullundur)          |
| Gorakhpur                      |
| Chandigarh                     |
| Mosul                          |
| Karaj                          |
| Ahvaz                          |
| Qom                            |
| Kermanshah                     |
| Jerusalem                      |
| Torino                         |
| Palermo                        |
| Genova                         |
| Sendai                         |
| Chiba                          |
| Sakai                          |
| Kumamoto                       |
| Okayama                        |
| Sagamihara                     |
| Hamamatsu                      |
| Kagoshima                      |
| Funabashi                      |
| Higashiosaka                   |
| Hachioji                       |
| Sanaa                          |
| Amman                          |
| Phnom Penh                     |
| Calgary                        |
| Toronto                        |
| North York                     |
| Winnipeg                       |
| Edmonton                       |
| Mississauga                    |
| Scarborough                    |
| Vancouver                      |
| Bangui                         |
| Baotou                         |
| Shenzhen                       |
| Hohhot                         |
| Handan                         |
| Wuxi                           |
| Xuzhou                         |
| Datong                         |
| Yichun                         |
| Benxi                          |
| Luoyang                        |
| Suzhou                         |
| Xining                         |
| Huainan                        |
| Jixi                           |
| Daqing                         |
| Fuxin                          |
| Amoy [Xiamen]                  |
| Liuzhou                        |
| Shantou                        |
| Jinzhou                        |
| Mudanjiang                     |
| Yinchuan                       |
| Changzhou                      |
| Zhangjiakou                    |
| Dandong                        |
| Hegang                         |
| Kaifeng                        |
| Bishkek                        |
| Cartagena                      |
| Cúcuta                         |
| Bucaramanga                    |
| Brazzaville                    |
| Pointe-Noire                   |
| Lubumbashi                     |
| Mbuji-Mayi                     |
| Hamhung                        |
| Chongjin                       |
| Nampo                          |
| Songnam                        |
| Puchon                         |
| Suwon                          |
| Anyang                         |
| Chonju                         |
| Chongju                        |
| Koyang                         |
| Ansan                          |
| Pohang                         |
| Athenai                        |
| Zagreb                         |
| Vientiane                      |
| Riga                           |
| Monrovia                       |
| Bengasi                        |
| Vilnius                        |
| Antananarivo                   |
| Bamako                         |
| Rabat                          |
| Marrakech                      |
| Fès                            |
| Tanger                         |
| Salé                           |
| Nouakchott                     |
| Naucalpan de Juárez            |
| Mexicali                       |
| Culiacán                       |
| Acapulco de Juárez             |
| Tlalnepantla de Baz            |
| Mérida                         |
| Chihuahua                      |
| San Luis Potosí                |
| Guadalupe                      |
| Toluca                         |
| Aguascalientes                 |
| Querétaro                      |
| Morelia                        |
| Hermosillo                     |
| Saltillo                       |
| Torreón                        |
| Centro (Villahermosa)          |
| Chisinau                       |
| Ulan Bator                     |
| Mandalay                       |
| Kathmandu                      |
| Managua                        |
| Ogbomosho                      |
| Kano                           |
| Oslo                           |
| Peshawar                       |
| Quetta                         |
| Islamabad                      |
| Asunción                       |
| Arequipa                       |
| Trujillo                       |
| Chiclayo                       |
| Lisboa                         |
| Lódz                           |
| Kraków                         |
| Wroclaw                        |
| Poznan                         |
| Marseille                      |
| Stockholm                      |
| Köln                           |
| Frankfurt am Main              |
| Essen                          |
| Dortmund                       |
| Stuttgart                      |
| Düsseldorf                     |
| Bremen                         |
| Duisburg                       |
| Hannover                       |
| Mekka                          |
| Medina                         |
| Pikine                         |
| Dakar                          |
| Freetown                       |
| Mogadishu                      |
| Colombo                        |
| Khartum                        |
| Sharq al-Nil                   |
| Helsinki [Helsingfors]         |
| Hims                           |
| Dushanbe                       |
| Taichung                       |
| Tainan                         |
| Panchiao                       |
| N´Djaména                      |
| Tunis                          |
| Gaziantep                      |
| Konya                          |
| Mersin (Içel)                  |
| Antalya                        |
| Ashgabat                       |
| Kampala                        |
| Zaporizzja                     |
| Lviv                           |
| Kryvyi Rig                     |
| Mykolajiv                      |
| Barquisimeto                   |
| Valencia                       |
| Ciudad Guayana                 |
| Volgograd                      |
| Voronez                        |
| Krasnojarsk                    |
| Saratov                        |
| Toljatti                       |
| Uljanovsk                      |
| Izevsk                         |
| Krasnodar                      |
| Jaroslavl                      |
| Habarovsk                      |
| Vladivostok                    |
| Irkutsk                        |
| Barnaul                        |
| Novokuznetsk                   |
| Penza                          |
| Rjazan                         |
| Orenburg                       |
| Lipetsk                        |
| Nabereznyje T?elny             |
| Tula                           |
| Tjumen                         |
| Haiphong                       |
| Detroit                        |
| San Jose                       |
| Indianapolis                   |
| San Francisco                  |
| Jacksonville                   |
| Columbus                       |
| Austin                         |
| Baltimore                      |
| Memphis                        |
| Milwaukee                      |
| Boston                         |
| Washington                     |
| Nashville-Davidson             |
| El Paso                        |
| Seattle                        |
| Denver                         |
| Charlotte                      |
| Fort Worth                     |
| Portland                       |
| Oklahoma City                  |
| Bulawayo                       |
+--------------------------------+
303 rows in set (0.01 sec)
iv. What are the names of all the countries on the continent ‘Europe’ ?
select Name, continent from country where continent='Europe';
+-------------------------------+-----------+
| Name                          | continent |
+-------------------------------+-----------+
| Albania                       | Europe    |
| Andorra                       | Europe    |
| Austria                       | Europe    |
| Belgium                       | Europe    |
| Bulgaria                      | Europe    |
| Bosnia and Herzegovina        | Europe    |
| Belarus                       | Europe    |
| Switzerland                   | Europe    |
| Czech Republic                | Europe    |
| Germany                       | Europe    |
| Denmark                       | Europe    |
| Spain                         | Europe    |
| Estonia                       | Europe    |
| Finland                       | Europe    |
| France                        | Europe    |
| Faroe Islands                 | Europe    |
| United Kingdom                | Europe    |
| Gibraltar                     | Europe    |
| Greece                        | Europe    |
| Croatia                       | Europe    |
| Hungary                       | Europe    |
| Ireland                       | Europe    |
| Iceland                       | Europe    |
| Italy                         | Europe    |
| Liechtenstein                 | Europe    |
| Lithuania                     | Europe    |
| Luxembourg                    | Europe    |
| Latvia                        | Europe    |
| Monaco                        | Europe    |
| Moldova                       | Europe    |
| Macedonia                     | Europe    |
| Malta                         | Europe    |
| Netherlands                   | Europe    |
| Norway                        | Europe    |
| Poland                        | Europe    |
| Portugal                      | Europe    |
| Romania                       | Europe    |
| Russian Federation            | Europe    |
| Svalbard and Jan Mayen        | Europe    |
| San Marino                    | Europe    |
| Slovakia                      | Europe    |
| Slovenia                      | Europe    |
| Sweden                        | Europe    |
| Ukraine                       | Europe    |
| Holy See (Vatican City State) | Europe    |
| Yugoslavia                    | Europe    |
+-------------------------------+-----------+
46 rows in set (0.00 sec)
v. List all the countries in the descending order based on their surface areas.
select Name, SurfaceArea from country order by SurfaceArea desc;
+----------------------------------------------+-------------+
| Name                                         | SurfaceArea |
+----------------------------------------------+-------------+
| Russian Federation                           | 17075400.00 |
| Antarctica                                   | 13120000.00 |
| Canada                                       |  9970610.00 |
| China                                        |  9572900.00 |
| United States                                |  9363520.00 |
| Brazil                                       |  8547403.00 |
| Australia                                    |  7741220.00 |
| India                                        |  3287263.00 |
| Argentina                                    |  2780400.00 |
| Kazakstan                                    |  2724900.00 |
| Sudan                                        |  2505813.00 |
| Algeria                                      |  2381741.00 |
| Congo, The Democratic Republic of the        |  2344858.00 |
| Greenland                                    |  2166090.00 |
| Saudi Arabia                                 |  2149690.00 |
| Mexico                                       |  1958201.00 |
| Indonesia                                    |  1904569.00 |
| Libyan Arab Jamahiriya                       |  1759540.00 |
| Iran                                         |  1648195.00 |
| Mongolia                                     |  1566500.00 |
| Peru                                         |  1285216.00 |
| Chad                                         |  1284000.00 |
| Niger                                        |  1267000.00 |
| Angola                                       |  1246700.00 |
| Mali                                         |  1240192.00 |
| South Africa                                 |  1221037.00 |
| Colombia                                     |  1138914.00 |
| Ethiopia                                     |  1104300.00 |
| Bolivia                                      |  1098581.00 |
| Mauritania                                   |  1025520.00 |
| Egypt                                        |  1001449.00 |
| Nigeria                                      |   923768.00 |
| Venezuela                                    |   912050.00 |
| Tanzania                                     |   883749.00 |
| Namibia                                      |   824292.00 |
| Mozambique                                   |   801590.00 |
| Pakistan                                     |   796095.00 |
| Turkey                                       |   774815.00 |
| Chile                                        |   756626.00 |
| Zambia                                       |   752618.00 |
| Myanmar                                      |   676578.00 |
| Afghanistan                                  |   652090.00 |
| Somalia                                      |   637657.00 |
| Central African Republic                     |   622984.00 |
| Ukraine                                      |   603700.00 |
| Madagascar                                   |   587041.00 |
| Botswana                                     |   581730.00 |
| Kenya                                        |   580367.00 |
| France                                       |   551500.00 |
| Yemen                                        |   527968.00 |
| Thailand                                     |   513115.00 |
| Spain                                        |   505992.00 |
| Turkmenistan                                 |   488100.00 |
| Cameroon                                     |   475442.00 |
| Papua New Guinea                             |   462840.00 |
| Sweden                                       |   449964.00 |
| Uzbekistan                                   |   447400.00 |
| Morocco                                      |   446550.00 |
| Iraq                                         |   438317.00 |
| Paraguay                                     |   406752.00 |
| Zimbabwe                                     |   390757.00 |
| Japan                                        |   377829.00 |
| Germany                                      |   357022.00 |
| Congo                                        |   342000.00 |
| Finland                                      |   338145.00 |
| Vietnam                                      |   331689.00 |
| Malaysia                                     |   329758.00 |
| Norway                                       |   323877.00 |
| Poland                                       |   323250.00 |
| Côte d?Ivoire                                |   322463.00 |
| Oman                                         |   309500.00 |
| Italy                                        |   301316.00 |
| Philippines                                  |   300000.00 |
| Ecuador                                      |   283561.00 |
| Burkina Faso                                 |   274000.00 |
| New Zealand                                  |   270534.00 |
| Gabon                                        |   267668.00 |
| Western Sahara                               |   266000.00 |
| Guinea                                       |   245857.00 |
| United Kingdom                               |   242900.00 |
| Uganda                                       |   241038.00 |
| Ghana                                        |   238533.00 |
| Romania                                      |   238391.00 |
| Laos                                         |   236800.00 |
| Guyana                                       |   214969.00 |
| Belarus                                      |   207600.00 |
| Kyrgyzstan                                   |   199900.00 |
| Senegal                                      |   196722.00 |
| Syria                                        |   185180.00 |
| Cambodia                                     |   181035.00 |
| Uruguay                                      |   175016.00 |
| Tunisia                                      |   163610.00 |
| Suriname                                     |   163265.00 |
| Nepal                                        |   147181.00 |
| Bangladesh                                   |   143998.00 |
| Tajikistan                                   |   143100.00 |
| Greece                                       |   131626.00 |
| Nicaragua                                    |   130000.00 |
| North Korea                                  |   120538.00 |
| Malawi                                       |   118484.00 |
| Eritrea                                      |   117600.00 |
| Benin                                        |   112622.00 |
| Honduras                                     |   112088.00 |
| Liberia                                      |   111369.00 |
| Bulgaria                                     |   110994.00 |
| Cuba                                         |   110861.00 |
| Guatemala                                    |   108889.00 |
| Iceland                                      |   103000.00 |
| Yugoslavia                                   |   102173.00 |
| South Korea                                  |    99434.00 |
| Hungary                                      |    93030.00 |
| Portugal                                     |    91982.00 |
| French Guiana                                |    90000.00 |
| Jordan                                       |    88946.00 |
| Azerbaijan                                   |    86600.00 |
| Austria                                      |    83859.00 |
| United Arab Emirates                         |    83600.00 |
| Czech Republic                               |    78866.00 |
| Panama                                       |    75517.00 |
| Sierra Leone                                 |    71740.00 |
| Ireland                                      |    70273.00 |
| Georgia                                      |    69700.00 |
| Sri Lanka                                    |    65610.00 |
| Lithuania                                    |    65301.00 |
| Latvia                                       |    64589.00 |
| Svalbard and Jan Mayen                       |    62422.00 |
| Togo                                         |    56785.00 |
| Croatia                                      |    56538.00 |
| Bosnia and Herzegovina                       |    51197.00 |
| Costa Rica                                   |    51100.00 |
| Slovakia                                     |    49012.00 |
| Dominican Republic                           |    48511.00 |
| Bhutan                                       |    47000.00 |
| Estonia                                      |    45227.00 |
| Denmark                                      |    43094.00 |
| Netherlands                                  |    41526.00 |
| Switzerland                                  |    41284.00 |
| Taiwan                                       |    36188.00 |
| Guinea-Bissau                                |    36125.00 |
| Moldova                                      |    33851.00 |
| Belgium                                      |    30518.00 |
| Lesotho                                      |    30355.00 |
| Armenia                                      |    29800.00 |
| Solomon Islands                              |    28896.00 |
| Albania                                      |    28748.00 |
| Equatorial Guinea                            |    28051.00 |
| Burundi                                      |    27834.00 |
| Haiti                                        |    27750.00 |
| Rwanda                                       |    26338.00 |
| Macedonia                                    |    25713.00 |
| Djibouti                                     |    23200.00 |
| Belize                                       |    22696.00 |
| Israel                                       |    21056.00 |
| El Salvador                                  |    21041.00 |
| Slovenia                                     |    20256.00 |
| New Caledonia                                |    18575.00 |
| Fiji Islands                                 |    18274.00 |
| Kuwait                                       |    17818.00 |
| Swaziland                                    |    17364.00 |
| East Timor                                   |    14874.00 |
| Bahamas                                      |    13878.00 |
| Vanuatu                                      |    12189.00 |
| Falkland Islands                             |    12173.00 |
| Gambia                                       |    11295.00 |
| Qatar                                        |    11000.00 |
| Jamaica                                      |    10990.00 |
| Lebanon                                      |    10400.00 |
| Cyprus                                       |     9251.00 |
| Puerto Rico                                  |     8875.00 |
| French Southern territories                  |     7780.00 |
| Palestine                                    |     6257.00 |
| Brunei                                       |     5765.00 |
| Trinidad and Tobago                          |     5130.00 |
| Cape Verde                                   |     4033.00 |
| French Polynesia                             |     4000.00 |
| South Georgia and the South Sandwich Islands |     3903.00 |
| Samoa                                        |     2831.00 |
| Luxembourg                                   |     2586.00 |
| Réunion                                      |     2510.00 |
| Mauritius                                    |     2040.00 |
| Comoros                                      |     1862.00 |
| Guadeloupe                                   |     1705.00 |
| Faroe Islands                                |     1399.00 |
| Martinique                                   |     1102.00 |
| Hong Kong                                    |     1075.00 |
| Sao Tome and Principe                        |      964.00 |
| Netherlands Antilles                         |      800.00 |
| Dominica                                     |      751.00 |
| Kiribati                                     |      726.00 |
| Micronesia, Federated States of              |      702.00 |
| Bahrain                                      |      694.00 |
| Tonga                                        |      650.00 |
| Saint Lucia                                  |      622.00 |
| Singapore                                    |      618.00 |
| Guam                                         |      549.00 |
| Andorra                                      |      468.00 |
| Northern Mariana Islands                     |      464.00 |
| Palau                                        |      459.00 |
| Seychelles                                   |      455.00 |
| Antigua and Barbuda                          |      442.00 |
| Barbados                                     |      430.00 |
| Turks and Caicos Islands                     |      430.00 |
| Saint Vincent and the Grenadines             |      388.00 |
| Mayotte                                      |      373.00 |
| Heard Island and McDonald Islands            |      359.00 |
| Virgin Islands, U.S.                         |      347.00 |
| Grenada                                      |      344.00 |
| Malta                                        |      316.00 |
| Saint Helena                                 |      314.00 |
| Maldives                                     |      298.00 |
| Cayman Islands                               |      264.00 |
| Saint Kitts and Nevis                        |      261.00 |
| Niue                                         |      260.00 |
| Saint Pierre and Miquelon                    |      242.00 |
| Cook Islands                                 |      236.00 |
| Wallis and Futuna                            |      200.00 |
| American Samoa                               |      199.00 |
| Aruba                                        |      193.00 |
| Marshall Islands                             |      181.00 |
| Liechtenstein                                |      160.00 |
| Virgin Islands, British                      |      151.00 |
| Christmas Island                             |      135.00 |
| Montserrat                                   |      102.00 |
| Anguilla                                     |       96.00 |
| British Indian Ocean Territory               |       78.00 |
| San Marino                                   |       61.00 |
| Bouvet Island                                |       59.00 |
| Bermuda                                      |       53.00 |
| Pitcairn                                     |       49.00 |
| Norfolk Island                               |       36.00 |
| Tuvalu                                       |       26.00 |
| Nauru                                        |       21.00 |
| Macao                                        |       18.00 |
| United States Minor Outlying Islands         |       16.00 |
| Cocos (Keeling) Islands                      |       14.00 |
| Tokelau                                      |       12.00 |
| Gibraltar                                    |        6.00 |
| Monaco                                       |        1.50 |
| Holy See (Vatican City State)                |        0.40 |
+----------------------------------------------+-------------+
239 rows in set (0.00 sec)
If you have time left and want more practice you can try these optional homework exercises:
1. Write queries that answer the following questions:
i. What are the names of all the cities in the Netherlands?
select Name from city where CountryCode='NLD';
+------------------+
| Name             |
+------------------+
| Amsterdam        |
| Rotterdam        |
| Haag             |
| Utrecht          |
| Eindhoven        |
| Tilburg          |
| Groningen        |
| Breda            |
| Apeldoorn        |
| Nijmegen         |
| Enschede         |
| Haarlem          |
| Almere           |
| Arnhem           |
| Zaanstad         |
| ´s-Hertogenbosch |
| Amersfoort       |
| Maastricht       |
| Dordrecht        |
| Leiden           |
| Haarlemmermeer   |
| Zoetermeer       |
| Emmen            |
| Zwolle           |
| Ede              |
| Delft            |
| Heerlen          |
| Alkmaar          |
+------------------+
28 rows in set (0.01 sec)
ii. What's the population of Rotterdam?
select Name, population from city where Name='Rotterdam';
+-----------+------------+
| Name      | population |
+-----------+------------+
| Rotterdam |     593321 |
+-----------+------------+
1 row in set (0.00 sec)iii. What's the top 10 countries based on surface area?
select Name, SurfaceArea from country order by SurfaceArea desc limit 10;
+--------------------+-------------+
| Name               | SurfaceArea |
+--------------------+-------------+
| Russian Federation | 17075400.00 |
| Antarctica         | 13120000.00 |
| Canada             |  9970610.00 |
| China              |  9572900.00 |
| United States      |  9363520.00 |
| Brazil             |  8547403.00 |
| Australia          |  7741220.00 |
| India              |  3287263.00 |
| Argentina          |  2780400.00 |
| Kazakstan          |  2724900.00 |
+--------------------+-------------+
10 rows in set (0.00 sec)
iv. What's the top 10 cities with the highest population?
select Name, population from city order by population desc limit 10;
+------------------+------------+
| Name             | population |
+------------------+------------+
| Mumbai (Bombay)  |   10500000 |
| Seoul            |    9981619 |
| São Paulo        |    9968485 |
| Shanghai         |    9696300 |
| Jakarta          |    9604900 |
| Karachi          |    9269265 |
| Istanbul         |    8787958 |
| Ciudad de México |    8591309 |
| Moscow           |    8389200 |
| New York         |    8008278 |
+------------------+------------+
10 rows in set (0.01 sec)
v. What's the population of the world ?
select sum(population) from country;
+-----------------+
| sum(population) |
+-----------------+
|      6078749450 |
+-----------------+
1 row in set (0.00 sec)
