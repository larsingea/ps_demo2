#### Analyseområde

dekning av et område analysert med tanke på potensiell skredfare

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>område</td>
      <td>objektets utstrekning<br /><br />-- Definition --<br />area over which an object extends</td>
      <td>Flate</td>
      <td>1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra SkredFareområderFellesegenskaper</th>
    </tr>
    <tr>
      <td>prosjekt<wbr />URL</td>
      <td>URL-lenke til kartleggingsprosjektets informasjonsside</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>rapport<wbr />URL</td>
      <td>URL-lenke til rapport fra kartleggingsprosjektet</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
SkredFareområderFellesegenskaper

**Assosiasjoner**
AnalyseområdeGr – rolle: analyseområdeGrense – kardinalitet: 1..*

#### KvikkleireFaresone (abstrakt)

areal med evaluering av risiko for kvikkleireskred basert på skadekonsekvens og faregrad<br /><br />Merknad: Kvikkleiresonene inndeles deretter i 5 "risikoklasser" basert på skadekonsekvensen og faregraden<br /><br /><br />-- Definition --<br />area which has been reviewed for quick clay slide hazard based on damage consequences and degree of hazard

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>område</td>
      <td>objektets utstrekning<br /><br />-- Definition --<br />area over which an object extends</td>
      <td>Flate</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />ID</td>
      <td>unikt id-nummer for skredområde/kvikkleirefaresone<br /><br />-- Definition --<br />unique ID number for landslide area or quick clay hazard zone</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />Navn</td>
      <td>stedsnavn som brukes i forbindelse med en skredhendelse<br /><br />-- Definition --<br />place name which is used in connection with a landslide event</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>areal<wbr />Km2</td>
      <td>faresonens areal i kvadratkilometer (km2)</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Faregrad<wbr />Klasse</td>
      <td>graden av sannsynlighet for at det skal gå et skred<br /><br />Merknad: Gjenspeiler graden av usikkerhet med hensyn til områdets stabilitet basert på topografiske forhold, geologiske/geotekniske forhold og erosjonsforhold. Skredfaregradklassen er for skredtypen kvikkleire basert på en evaluering av faregrad som fremkommer av at ulike vektede faktorer gir en faregradscore (0-51)<br /><br />-- Definition --<br />the degree of probability that there will be a landslide<br />Note: Reflects the degree of hazard as regards the area's stability,, based upon topographic conditions, geological/geotechnical conditions and erosion conditions. For quick clay landslides the landslideHazardLevelClass is based upon a weighed hazardfactorscore (0-51)</td>
      <td><a href="#kodeliste-skredfaregradklasse">Skred<wbr />Faregrad<wbr />Klasse</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Skade<wbr />Konsekvens<wbr />Score</td>
      <td>poengverdi basert på vektede faktorer for skadekonsekvensen<br /><br />Merknad: Se nærmere definisjon i kap. definisjoner og forkortelser.<br /><br />-- Definition --<br />value (in points) based on weighted factors for the consequences of damage   Note: See more precise definition in chapter on definitions and abbreviations.</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Risiko<wbr />Kvikkleire<wbr />Klasse</td>
      <td>risikoen for at et område kan bli påført skredskade, inndelt etter risikoklasser<br /><br />Merknad: Denne egenskapen gjengir en klassifisering av risiko for at området vil bli utsatt for skredskade. Klassifiseringsmetoden er basert på en evaluering av skadekonsekvens og faregrad. Evalueringen foretas ved at det beregnes poeng for hver sone i henhold til utarbeidde klassifiseringskriterier (se kapittel definisjoner og forkortelser)<br /><br />-- Definition --<br />the risk that a landslide may inflict damage on an area, categorized according to risk classes   Note: This attribute cites a classification of risk that the area will be vulnerable to landslide damage. The classification method is based on a review of damage consequences and hazard levels</td>
      <td><a href="#kodeliste-skredrisikokvikkleireklasse">Skred<wbr />Risiko<wbr />Kvikkleire<wbr />Klasse</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Kval<wbr />Kartlegging</td>
      <td>angir status og detaljeringsgrad  når det gjelder kartlegging av sonen<br /><br />-- Definition --<br />indicates the status and degree of detail as regards the mapping of the zone</td>
      <td><a href="#kodeliste-skredkvalkartlegging">Skred<wbr />Kval<wbr />Kartlegging</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Faregrad<wbr />Score</td>
      <td>tallverdi som er fremkommet ved at de viktigste kriteriene og faktorene som påvirker faregraden for kvikkleireskred er vurdert (jfr. Tabell 2 under kap.definisjoner og forkortelser.)<br /><br />-- Definition --<br />numerical value which results from the evaluation of the influence of the most important criteria and factors on the degree of hazard of a quick clay slide (cf. Table 2 in the chapter on definitions and abbreviations.)</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Skade<wbr />Konsekvens<wbr />Klasse</td>
      <td>hvilke økonomiske og samfunnsmessige følger et kvikkleireskred får og fare for tap av menneskeliv<br /><br />Merknad: Kvalitativ klassifisering av skadekonsekvens i forbindelse med fare for liv, skade på mennesker, økonomiske tap, verdiforringelse samt fare for at viktige samfunnsmessige funksjoner skal stoppe opp.  For skredtypen kvikkleire er inndelingen basert på beregningen av en poengverdi basert på vektede faktorer (se kap. definisjoner og forkortelser.) i kombinasjon med skadekonsekvensen<br /><br />-- Definition --<br />what economic and social consequences follow a quick clay slide, and risk of loss of human lives   Note: Qualitative classification of consequences of damage in connection with risk of fatalities, personal injuries, financial loss, value reduction as well as the risk that important social functions can be affected</td>
      <td><a href="#kodeliste-skredskadekonsekvensklasse">Skred<wbr />Skade<wbr />Konsekvens<wbr />Klasse</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra SkredFareområderFellesegenskaper</th>
    </tr>
    <tr>
      <td>prosjekt<wbr />URL</td>
      <td>URL-lenke til kartleggingsprosjektets informasjonsside</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>rapport<wbr />URL</td>
      <td>URL-lenke til rapport fra kartleggingsprosjektet</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
SkredFareområderFellesegenskaper

#### SkredTypePunkt

Punkt som definerer den dimensjonerende skredtypen for en eller flere faresoner.

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>punkt</td>
      <td>sted som objektet eksisterer på</td>
      <td>Punkt</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />ID</td>
      <td>unikt id-nummer for skredområde/kvikkleirefaresone<br /><br />-- Definition --<br />unique ID number for landslide area or quick clay hazard zone</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skredtype</td>
      <td>hvilke skredmasser som er forbundet med skredfaren eller skredhendelsen<br /><br />Merknad: Ulike typer skredmasser som bl.a. stein, snø, fjell, jord og kombinasjoner av disse<br /><br />-- Definition --<br />what type of avalanche/landslide masses related to the avalanche/landslide hazard or event<br />Note: Various types of avalanche/landslide masses, such as rock, snow, soil and combinations these</td>
      <td><a href="#kodeliste-skredtypedetaljert">Skredtype<wbr />Detaljert</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
NVEFellesegenskaper

#### UtlopOmr

areal som påvirkes eller dekkes av skredmassser når skred utløses<br /><br /><br />-- Definition --<br />area which is affected or covered by avalanche/landslide masses when an avalanche/landslide occurs

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra KvikkleireFaresone</th>
    </tr>
    <tr>
      <td>område</td>
      <td>objektets utstrekning<br /><br />-- Definition --<br />area over which an object extends</td>
      <td>Flate</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />ID</td>
      <td>unikt id-nummer for skredområde/kvikkleirefaresone<br /><br />-- Definition --<br />unique ID number for landslide area or quick clay hazard zone</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />Navn</td>
      <td>stedsnavn som brukes i forbindelse med en skredhendelse<br /><br />-- Definition --<br />place name which is used in connection with a landslide event</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>areal<wbr />Km2</td>
      <td>faresonens areal i kvadratkilometer (km2)</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Faregrad<wbr />Klasse</td>
      <td>graden av sannsynlighet for at det skal gå et skred<br /><br />Merknad: Gjenspeiler graden av usikkerhet med hensyn til områdets stabilitet basert på topografiske forhold, geologiske/geotekniske forhold og erosjonsforhold. Skredfaregradklassen er for skredtypen kvikkleire basert på en evaluering av faregrad som fremkommer av at ulike vektede faktorer gir en faregradscore (0-51)<br /><br />-- Definition --<br />the degree of probability that there will be a landslide<br />Note: Reflects the degree of hazard as regards the area's stability,, based upon topographic conditions, geological/geotechnical conditions and erosion conditions. For quick clay landslides the landslideHazardLevelClass is based upon a weighed hazardfactorscore (0-51)</td>
      <td><a href="#kodeliste-skredfaregradklasse">Skred<wbr />Faregrad<wbr />Klasse</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Skade<wbr />Konsekvens<wbr />Score</td>
      <td>poengverdi basert på vektede faktorer for skadekonsekvensen<br /><br />Merknad: Se nærmere definisjon i kap. definisjoner og forkortelser.<br /><br />-- Definition --<br />value (in points) based on weighted factors for the consequences of damage   Note: See more precise definition in chapter on definitions and abbreviations.</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Risiko<wbr />Kvikkleire<wbr />Klasse</td>
      <td>risikoen for at et område kan bli påført skredskade, inndelt etter risikoklasser<br /><br />Merknad: Denne egenskapen gjengir en klassifisering av risiko for at området vil bli utsatt for skredskade. Klassifiseringsmetoden er basert på en evaluering av skadekonsekvens og faregrad. Evalueringen foretas ved at det beregnes poeng for hver sone i henhold til utarbeidde klassifiseringskriterier (se kapittel definisjoner og forkortelser)<br /><br />-- Definition --<br />the risk that a landslide may inflict damage on an area, categorized according to risk classes   Note: This attribute cites a classification of risk that the area will be vulnerable to landslide damage. The classification method is based on a review of damage consequences and hazard levels</td>
      <td><a href="#kodeliste-skredrisikokvikkleireklasse">Skred<wbr />Risiko<wbr />Kvikkleire<wbr />Klasse</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Kval<wbr />Kartlegging</td>
      <td>angir status og detaljeringsgrad  når det gjelder kartlegging av sonen<br /><br />-- Definition --<br />indicates the status and degree of detail as regards the mapping of the zone</td>
      <td><a href="#kodeliste-skredkvalkartlegging">Skred<wbr />Kval<wbr />Kartlegging</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Faregrad<wbr />Score</td>
      <td>tallverdi som er fremkommet ved at de viktigste kriteriene og faktorene som påvirker faregraden for kvikkleireskred er vurdert (jfr. Tabell 2 under kap.definisjoner og forkortelser.)<br /><br />-- Definition --<br />numerical value which results from the evaluation of the influence of the most important criteria and factors on the degree of hazard of a quick clay slide (cf. Table 2 in the chapter on definitions and abbreviations.)</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Skade<wbr />Konsekvens<wbr />Klasse</td>
      <td>hvilke økonomiske og samfunnsmessige følger et kvikkleireskred får og fare for tap av menneskeliv<br /><br />Merknad: Kvalitativ klassifisering av skadekonsekvens i forbindelse med fare for liv, skade på mennesker, økonomiske tap, verdiforringelse samt fare for at viktige samfunnsmessige funksjoner skal stoppe opp.  For skredtypen kvikkleire er inndelingen basert på beregningen av en poengverdi basert på vektede faktorer (se kap. definisjoner og forkortelser.) i kombinasjon med skadekonsekvensen<br /><br />-- Definition --<br />what economic and social consequences follow a quick clay slide, and risk of loss of human lives   Note: Qualitative classification of consequences of damage in connection with risk of fatalities, personal injuries, financial loss, value reduction as well as the risk that important social functions can be affected</td>
      <td><a href="#kodeliste-skredskadekonsekvensklasse">Skred<wbr />Skade<wbr />Konsekvens<wbr />Klasse</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra SkredFareområderFellesegenskaper</th>
    </tr>
    <tr>
      <td>prosjekt<wbr />URL</td>
      <td>URL-lenke til kartleggingsprosjektets informasjonsside</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>rapport<wbr />URL</td>
      <td>URL-lenke til rapport fra kartleggingsprosjektet</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
KvikkleireFaresone

**Assosiasjoner**
KvikkleireFaresoneAvgr – rolle: kvikkleireFaresoneAvgr – kardinalitet: 1..*

#### NVEFellesegenskaper (abstrakt)

abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

#### KvikkleireFaresoneAvgr

avgrensningslinje for areal med evaluering av risiko for kvikkleireskred basert på skadekonsekvens og faregrad<br /><br /><br />-- Definition --<br />line delimiting area for which quick clay slide hazard has been evaluated based on damage consequences and degree of hazard

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>grense</td>
      <td>forløp som følger overgang mellom ulike fenomener<br /><br />-- Definition --<br />course following the transition between different real world phenomena</td>
      <td>Kurve</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### Kartleggingsområdekant

avgrensningslinje for et kartleggingsområde som dekker et nærmere angitt geografisk område.

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>grense</td>
      <td>forløp som følger overgang mellom ulike fenomener</td>
      <td>Kurve</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### AnalyseområdeGr

avgrensningslinje for område analysert med tanke på potensiell skredfare

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>grense</td>
      <td>forløp som følger overgang mellom ulike fenomener<br /><br />-- Definition --<br />course following the transition between different real world phenomena</td>
      <td>Kurve</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### Kartleggingsområde

dekning av et område kartlagt med tanke på potensiell skredfare

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>område</td>
      <td>objektets utstrekning</td>
      <td>Flate</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kartleggingsområde<wbr />ID</td>
      <td>kartleggingsområdets identifikator</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kartleggingsområde<wbr />Navn</td>
      <td>navn på kartleggingsområde</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kartlegging<wbr />Status</td>
      <td>Status for kartleggingen av aktuelt område</td>
      <td><a href="#kodeliste-prosjektstatus_nve">Prosjektstatus_<wbr />NVE</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Assosiasjoner**
Kartleggingsområdekant – rolle: områdekant – kardinalitet: 1..*

#### UtlosningOmr

område hvor skred kan utløses<br /><br />Merknad: Alle typer skred

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra KvikkleireFaresone</th>
    </tr>
    <tr>
      <td>område</td>
      <td>objektets utstrekning<br /><br />-- Definition --<br />area over which an object extends</td>
      <td>Flate</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />ID</td>
      <td>unikt id-nummer for skredområde/kvikkleirefaresone<br /><br />-- Definition --<br />unique ID number for landslide area or quick clay hazard zone</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Omr<wbr />Navn</td>
      <td>stedsnavn som brukes i forbindelse med en skredhendelse<br /><br />-- Definition --<br />place name which is used in connection with a landslide event</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>areal<wbr />Km2</td>
      <td>faresonens areal i kvadratkilometer (km2)</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Faregrad<wbr />Klasse</td>
      <td>graden av sannsynlighet for at det skal gå et skred<br /><br />Merknad: Gjenspeiler graden av usikkerhet med hensyn til områdets stabilitet basert på topografiske forhold, geologiske/geotekniske forhold og erosjonsforhold. Skredfaregradklassen er for skredtypen kvikkleire basert på en evaluering av faregrad som fremkommer av at ulike vektede faktorer gir en faregradscore (0-51)<br /><br />-- Definition --<br />the degree of probability that there will be a landslide<br />Note: Reflects the degree of hazard as regards the area's stability,, based upon topographic conditions, geological/geotechnical conditions and erosion conditions. For quick clay landslides the landslideHazardLevelClass is based upon a weighed hazardfactorscore (0-51)</td>
      <td><a href="#kodeliste-skredfaregradklasse">Skred<wbr />Faregrad<wbr />Klasse</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Skade<wbr />Konsekvens<wbr />Score</td>
      <td>poengverdi basert på vektede faktorer for skadekonsekvensen<br /><br />Merknad: Se nærmere definisjon i kap. definisjoner og forkortelser.<br /><br />-- Definition --<br />value (in points) based on weighted factors for the consequences of damage   Note: See more precise definition in chapter on definitions and abbreviations.</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Risiko<wbr />Kvikkleire<wbr />Klasse</td>
      <td>risikoen for at et område kan bli påført skredskade, inndelt etter risikoklasser<br /><br />Merknad: Denne egenskapen gjengir en klassifisering av risiko for at området vil bli utsatt for skredskade. Klassifiseringsmetoden er basert på en evaluering av skadekonsekvens og faregrad. Evalueringen foretas ved at det beregnes poeng for hver sone i henhold til utarbeidde klassifiseringskriterier (se kapittel definisjoner og forkortelser)<br /><br />-- Definition --<br />the risk that a landslide may inflict damage on an area, categorized according to risk classes   Note: This attribute cites a classification of risk that the area will be vulnerable to landslide damage. The classification method is based on a review of damage consequences and hazard levels</td>
      <td><a href="#kodeliste-skredrisikokvikkleireklasse">Skred<wbr />Risiko<wbr />Kvikkleire<wbr />Klasse</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Kval<wbr />Kartlegging</td>
      <td>angir status og detaljeringsgrad  når det gjelder kartlegging av sonen<br /><br />-- Definition --<br />indicates the status and degree of detail as regards the mapping of the zone</td>
      <td><a href="#kodeliste-skredkvalkartlegging">Skred<wbr />Kval<wbr />Kartlegging</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Faregrad<wbr />Score</td>
      <td>tallverdi som er fremkommet ved at de viktigste kriteriene og faktorene som påvirker faregraden for kvikkleireskred er vurdert (jfr. Tabell 2 under kap.definisjoner og forkortelser.)<br /><br />-- Definition --<br />numerical value which results from the evaluation of the influence of the most important criteria and factors on the degree of hazard of a quick clay slide (cf. Table 2 in the chapter on definitions and abbreviations.)</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>skred<wbr />Skade<wbr />Konsekvens<wbr />Klasse</td>
      <td>hvilke økonomiske og samfunnsmessige følger et kvikkleireskred får og fare for tap av menneskeliv<br /><br />Merknad: Kvalitativ klassifisering av skadekonsekvens i forbindelse med fare for liv, skade på mennesker, økonomiske tap, verdiforringelse samt fare for at viktige samfunnsmessige funksjoner skal stoppe opp.  For skredtypen kvikkleire er inndelingen basert på beregningen av en poengverdi basert på vektede faktorer (se kap. definisjoner og forkortelser.) i kombinasjon med skadekonsekvensen<br /><br />-- Definition --<br />what economic and social consequences follow a quick clay slide, and risk of loss of human lives   Note: Qualitative classification of consequences of damage in connection with risk of fatalities, personal injuries, financial loss, value reduction as well as the risk that important social functions can be affected</td>
      <td><a href="#kodeliste-skredskadekonsekvensklasse">Skred<wbr />Skade<wbr />Konsekvens<wbr />Klasse</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra SkredFareområderFellesegenskaper</th>
    </tr>
    <tr>
      <td>prosjekt<wbr />URL</td>
      <td>URL-lenke til kartleggingsprosjektets informasjonsside</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>rapport<wbr />URL</td>
      <td>URL-lenke til rapport fra kartleggingsprosjektet</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
KvikkleireFaresone

**Assosiasjoner**
KvikkleireFaresoneAvgr – rolle: kvikkleireFaresoneAvgr – kardinalitet: 1..*

#### SkredFaregrense

grenselinje som viser rekkevidden for mulige skred<br /><br />Merknad: Resten av faresonepolygonet er ofte avgrenset av dataavgrensningslinje<br /><br /><br />-- Definition --<br />boundary line which shows the extent of potential avalanches/landslides

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>grense</td>
      <td>forløp som følger overgang mellom ulike fenomener<br /><br />-- Definition --<br />course following the transition between different real world phenomena</td>
      <td>Kurve</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### SkredFaresone

område hvor skredfaren er nærmere vurdert/kartlagt med hensyn til sannsynlighet og rekkevidde<br /><br />Merknad: Skredfaresonen kan bestå av utløsningsområde og utløpsområde for skred<br /><br /><br />-- Definition --<br />area where the avalanche/landslide hazard has been evaluated/surveyed in more detail with regard to probability and extent

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>område</td>
      <td>objektets utstrekning<br /><br />-- Definition --<br />area over which an object extends</td>
      <td>Flate</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skredtype</td>
      <td>hvilke skredmasser som er forbundet med skredfaren eller skredhendelsen<br /><br />Merknad: Ulike typer skredmasser som bl.a. stein, snø, fjell, jord og kombinasjoner av disse<br /><br />-- Definition --<br />what type of avalanche/landslide masses related to the avalanche/landslide hazard or event<br />Note: Various types of avalanche/landslide masses, such as rock, snow, soil and combinations these</td>
      <td><a href="#kodeliste-skredtypedetaljert">Skredtype<wbr />Detaljert</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>skred<wbr />Statistikk<wbr />Sannsynlighet</td>
      <td>statistisk sannsynlighet for at det går et skred<br /><br />Betingelse: Egenskapen skredFaregradKlasse eller skredStatistikkSannsynlighet er påkrevet. skredFaregradKlasse benyttes ved kvikkleire og skredStatistikkSannsynlighet ved bratt terreng<br /><br />Merknad: Oppgis som et skred per antall år. I plan og bygningsloven skal man ta hensyn til 1000 årsskredet.<br /><br />-- Definition --<br />statistical probability that an avalanche  landslide will take place   Condition: The attribute landslideHazardLevelClass or avalancheStatisticProbability is mandatory. landslideHazardLevelClass is used in the case of quick clay and avalancheStatisticProbability in the case of steep terrain   Note:  Indicated as a yearly probability of avalanches/landslides. In the Planning and Building Act consideration must be given for the yearly probability of 1/1000</td>
      <td><a href="#kodeliste-skredsannsynlighet">Skred<wbr />Sannsynlighet</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
NVEFellesegenskaper

**Assosiasjoner**
SkredFaregrense – rolle: skredFaregrense – kardinalitet: 1..*

#### SkredFareområderFellesegenskaper (abstrakt)

abstrakt objekt som bærer en egenskaper som benyttes i flere av fareområdeklassene. Benyttes til arv av egenskaper.

Egenskaper

<table class="feature-attribute-table">
  <thead>
    <tr>
      <th>Egenskap</th>
      <th>Beskrivelse</th>
      <th>Type</th>
      <th>Multiplisitet</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>prosjekt<wbr />URL</td>
      <td>URL-lenke til kartleggingsprosjektets informasjonsside</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>rapport<wbr />URL</td>
      <td>URL-lenke til rapport fra kartleggingsprosjektet</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra NVEFellesegenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>abstrakt objekt som bærer en rekke egenskaper som er fagområde-uavhengige og kan benyttes for alle objekttyper<br /><br />Merknad:<br />Spesielt i produktspesifikasjonsarbeid vil en velge egenskaper og av grensningslinjer fra denne klassen.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>dato for uttak fra en database<br /><br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato når objektet siste gang ble registrert/observert/målt i terrenget<br /><br />Merknad: I mange tilfeller er denne forskjellig fra Oppdateringsdato, da registrerte endringer kan bufres i en kortere eller lengre periode før disse legges inn i databasen.<br />Ved førstegangsregistrering settes Datafangstdato lik førsteDatafangstdato.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>dato når en representasjon av objektet i digital form første gang ble etablert<br /><br />Merknad:<br />førsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektetdataene<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br /><br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
NVEFellesegenskaper

### Kodelister

#### <a id="kodeliste-skredfaregradklasse"></a>«CodeList» SkredFaregradKlasse

**Definisjon:** graden av sannsynlighet for at det skal gå et skred

Merknad: Gjenspeiler graden av usikkerhet med hensyn til områdets stabilitet basert på topografiske forhold, geologiske/geotekniske forhold og erosjonsforhold. Skredfaregradklassen er basert på en evaluering av faregrad som fremkommer av at ulike vektede faktorer gir en faregradscore (0-51)


-- Definition - -
the degree of probability that there will be an landslide
Note: Reflects the degree of hazard as regards the area's stability, based upon topographic conditions, geological/geotechnical conditions and erosion conditions. The landslideHazardLevelClass is based a weighed hazardfactorscore (0-51

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Ingen</td>
      <td>Påvist ikkje kvikkleire/sprøbruddmateriale, eller topografiske forhold som tilsier at kvikkleireskred ikke kan forekomme</td>
      <td></td>
    </tr>
    <tr>
      <td>Lav</td>
      <td>Gunstige topografiske forhold.  Grunnundersøkelser viser at grunnforholdene er akseptable.  Det er lite eller ingen aktiv erosjon i vassdraget.  Det har vært liten skredaktivitet i området.  Ingen terrenginngrep, terrenginngrep har hatt gunstig innvirkning på stabiliteten (faregradscore 0-17)</td>
      <td></td>
    </tr>
    <tr>
      <td>Middels</td>
      <td>Mindre gunstig topografiske forhold.  Mangelfulle grunnundersøkelser, eller grunnundersøkelsene viser mindre gunstige grunnforhold.  Det er aktiv erosjon i vassdraget.  Det har vært betydelig skredaktivitet i området.  Eventuelle terrenginngrep har liten eller ingen stabilitetsforverrende virkning (faregradscore 18-25)</td>
      <td></td>
    </tr>
    <tr>
      <td>Høy</td>
      <td>Ugunstige topografiske forhold.  Mangelfulle grunnundersøkelser eller grunnundersøkelsene viser ugunstige grunnforhold.  Det er betydelig aktiv erosjon i vassdraget.  Det har vært stor skredaktivitet i området.  Terrenginngrep med stabilitetsforverrende virkning (faregradscore 26-51)</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-skredrisikokvikkleireklasse"></a>«CodeList» SkredRisikoKvikkleireKlasse

**Definisjon:** risikoen for at et område kan bli påført skredskade, inndelt etter risikoklasser

Merknad: Denne egenskapen gjengir en klassifisering av risiko for at området vil bli utsatt for skredskade. Klassifiseringsmetoden er basert på en evaluering av skadekonsekvens og faregrad. Evalueringen foretas ved at det beregnes poeng for hver sone i henhold til utarbeidde klassifiseringskriterier (se kapittel definisjoner og forkortelser.)


-- Definition - -
the risk that a landslide may inflict damage on an area, categorized according to risk classes  Note: This attribute cites a classification of risk that the area will be vulnerable to landslide damage. The classification method is based on a review of damage consequences and hazard levels

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Risikoklasse 0</td>
      <td>Områder hvor det ikke er fare for kvikkleireskred.</td>
      <td></td>
    </tr>
    <tr>
      <td>Risikoklasse 1</td>
      <td>Områder hvor det normalt ikke vil være aktuelt å foreta noen form for videre evaluering eller tiltak. Ved et eventuelt anleggsmessig inngrep vil det kreves dokumentasjon på at sikkerheten er tilfredsstillende.

-- Definition --
Areas where any further evaluation or action will normally not be relevant. For any intervention in the form of construction, documentation that safety is satisfactory will be required.</td>
      <td></td>
    </tr>
    <tr>
      <td>Risikoklasse 2</td>
      <td>Som ved risikoklasse 1 vil det heller ikke her  normalt  være aktuelt å foreta noen form for videre evaluering eller tiltak. Ved et eventuelt anleggsmessig inngrep vil det kreves dokumentasjon på at sikkerheten er tilfredsstillende.

-- Definition --
As with Risk Class 1, neither will further evaluation or action normally be relevant here. For any intervention in the form of construction, documentation that safety is satisfactory will be required.</td>
      <td></td>
    </tr>
    <tr>
      <td>Risikoklasse 3</td>
      <td>Omfatter soner med til dels tett bebyggelse.

-- Definition --
Includes zones that may in part be heavily built-up.</td>
      <td></td>
    </tr>
    <tr>
      <td>Risikoklasse 4</td>
      <td>Omfatter for det meste soner med tett bebyggelse. Må gis høy prioritet i det videre arbeidet med sikring mot skred.

-- Definition --
Mainly comprising zones that are heavily built-up. Must be given high priority in the further work on preventive measures against landslide.</td>
      <td></td>
    </tr>
    <tr>
      <td>Risikoklasse 5</td>
      <td>Omfatter soner med høyeste skadekonsekvens og høyeste faregrad. Må gis høy prioritet i det videre arbeidet med sikring mot skred.

-- Definition --
Comprising zones with the greatest injury consequences and highest hazard level. Must be given high priority in the ongoing work of landslide prevention.</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-skredkvalkartlegging"></a>«CodeList» SkredKvalKartlegging

**Definisjon:** status og detaljeringsgrad vedrørende kartleggingsarbeidet


-- Definition - -
status, quality and degree of detail regarding the mapping work

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Ingen undersøkelse</td>
      <td>Det er kun topografiske vurderinger som ligger til grunn for
kvikkleirefaresonen, ingen befaring eller grunnundersøkelse. Denne kodeverdien må brukes dersom man skal utveksle soner som ikke er klassifisert</td>
      <td></td>
    </tr>
    <tr>
      <td>Enkel undersøkelse</td>
      <td>Enkel undersøkelse av sonen, oversiktskartlegging

-- Definition --
Simple investigation of the zone, overview mapping.</td>
      <td></td>
    </tr>
    <tr>
      <td>Supplerende undersøkelser / stabilitet</td>
      <td>Utført supplerende undersøkelser og vurdering av stabilitet

-- Definition --
Supplementary investigation and assessment of stability carried out</td>
      <td></td>
    </tr>
    <tr>
      <td>Sikringstiltak utført</td>
      <td>Sikringstiltak er utført</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-skredskadekonsekvensklasse"></a>«CodeList» SkredSkadeKonsekvensKlasse

**Definisjon:** hvilke økonomiske og samfunnsmessige følger et kvikkleireskred får og fare for tap av menneskeliv

Merknad: Kvalitativ klassifisering av skadekonsekvens i forbindelse med fare for liv, skade på mennesker, økonomiske tap, verdiforringelse samt fare for at viktige samfunnsmessige funksjoner skal stoppe opp. For skredtypen


-- Definition - -
what economic and social consequences follow a quick clay slide, and risk of loss of human lives  Note: Qualitative classification of damage consequence in connection with risk of fatalities, personal injuries, financial loss, value reduction as well as the risk that  important social functions can be affected

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Ikke alvorlig</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Mindre alvorlig</td>
      <td>Liten risiko for skade på mennesker, tap av liv, begrensede økonomiske og samfunnsmessige konsekvenser (0-6 poeng).

-- Definition --
Low risk of personal injuries, loss of life; limited economic and social consequences (0-6 points).</td>
      <td></td>
    </tr>
    <tr>
      <td>Alvorlig</td>
      <td>Risiko for skade på mennesker/tap av liv eller betydelige økonomiske og samfunnsmessige konsekvenser (7-22 poeng).

-- Definition --
Risk of personal injuries/loss of life or substantial economic and social consequences (7-22 points).</td>
      <td></td>
    </tr>
    <tr>
      <td>Meget alvorlig</td>
      <td>Stor risiko for skade på mennesker/tap av liv eller meget store økonomiske og samfunnsmessige konsekvenser (23-45 poeng).

-- Definition --
High risk of personal injuries/loss of life or very great economic and social consequences (23-45 points).</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-skredtypedetaljert"></a>«CodeList» SkredtypeDetaljert

**Definisjon:** hvilke skredmasser som er forbundet med skredfaren eller skredhendelsen

Merknad 1: Ulike typer skredmasser som bl.a. stein, snø, fjell, jord og kombinasjoner av disse
Merknad 2: Denne kodelisten er mer detaljert enn Skredtype definert i SOSI-standarden SKRED


-- Definition - -
what type of avalanche/landslide masses related to  the avalanche/landslide hazard or event  Note: Various types of avalanche/landslide masses, such as rock, snow, soil and combinations of these

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Steinskred, uspesifisert</td>
      <td>Steinskred, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Steinsprang (&lt; 100 m3)</td>
      <td>Steinsprang (steinblokker &lt; 100 m3)</td>
      <td></td>
    </tr>
    <tr>
      <td>Lite fjellskred (100 - 10 000 m3)</td>
      <td>Lite fjellskred (steinblokker 100 - 10 000 m3)</td>
      <td></td>
    </tr>
    <tr>
      <td>Fjellskred (&gt; 10 000 m3)</td>
      <td>Fjellskred (steinblokker &gt; 10 000 m3)</td>
      <td></td>
    </tr>
    <tr>
      <td>Undervannsskred, uspesifisert</td>
      <td>Undervannsskred, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Snøskred, uspesifisert</td>
      <td>Snøskred, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Vått snøskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Tørt snøskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Sørpeskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Løssnøskred, uspesifisert</td>
      <td>Løssnøskred, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Vått løssnøskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Tørt løssnøskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Flakskred, uspesifisert</td>
      <td>Flakskred, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Vått flakskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Tørt flakskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Løsmasseskred, uspesifisert</td>
      <td>Løsmasseskred, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Kvikkleireskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Flomskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Leirskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Jordskred</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Jordskred, uspesifisert</td>
      <td>Jordskred, ikke nærmere bestemt type

Merknad: Fra og med 2015 benyttes ikke denne verdien for nye data.</td>
      <td></td>
    </tr>
    <tr>
      <td>Isnedfall, uspesifisert</td>
      <td>Isnedfall, ikke nærmere bestemt type</td>
      <td></td>
    </tr>
    <tr>
      <td>Skavlfall</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Utglidning av veg</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Ikke angitt</td>
      <td>Skredtype ikke angitt</td>
      <td></td>
    </tr>
    <tr>
      <td>Ny, ikke-godkjent skredtype</td>
      <td>Ny, ikke-godkjent skredtype

Merknad: Fra og med 2015 benyttes ikke denne verdien for nye data.</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-prosjektstatus_nve"></a>«CodeList» Prosjektstatus_NVE

**Definisjon:** Kodeliste for prosjektstatus brukt i NVE

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>utført</td>
      <td>Nei</td>
      <td></td>
    </tr>
    <tr>
      <td>til ny vurdering</td>
      <td>Ja</td>
      <td></td>
    </tr>
    <tr>
      <td>erstattet av ny</td>
      <td>Nei</td>
      <td></td>
    </tr>
    <tr>
      <td>fjernet</td>
      <td>Nei</td>
      <td></td>
    </tr>
    <tr>
      <td>ajourført</td>
      <td>Nei</td>
      <td></td>
    </tr>
    <tr>
      <td>under planlegging</td>
      <td>Nei</td>
      <td></td>
    </tr>
    <tr>
      <td>pågående</td>
      <td>Nei</td>
      <td></td>
    </tr>
    <tr>
      <td>Ja</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Nei</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-skredsannsynlighet"></a>«CodeList» SkredSannsynlighet

**Definisjon:** sannsynlig gjentaksintervall for skredhendelse i området (antall år)

Koder

<table class="code-list-table">
  <thead>
    <tr>
      <th>Kodenavn:</th>
      <th>Definisjon:</th>
      <th>Kodeverdi:</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td></td>
      <td>Gjentaksintervall: 100 år</td>
      <td>100</td>
    </tr>
    <tr>
      <td></td>
      <td>Gjentaksintervall: 1000 år</td>
      <td>1000</td>
    </tr>
    <tr>
      <td></td>
      <td>Gjentaksintervall: 5000 år</td>
      <td>5000</td>
    </tr>
  </tbody>
</table>
