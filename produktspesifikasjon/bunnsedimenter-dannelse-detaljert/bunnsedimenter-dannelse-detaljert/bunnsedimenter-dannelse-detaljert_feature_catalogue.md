#### Dataavgrensning

Generell avgrensningslinje, f.eks. mellom datasett med ulik kvalitet, innhold eller detaljering

Geometri:<br />Elementtype: feature<br />Type: geometry-linestring<br />Lagrings-CRS:<br />• <a href="http://www.opengis.net/def/crs/EPSG/0/4258">http://www.opengis.net/def/crs/EPSG/0/4258</a><br />Koordinatreferansesystem (crs):<br />• #/crs<br />• <a href="http://www.opengis.net/def/crs/OGC/1.3/CRS84">http://www.opengis.net/def/crs/OGC/1.3/CRS84</a>

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
      <td>geometry</td>
      <td>Elementtype: feature<br />OGC-rolle: primary-geometry</td>
      <td>geometry-linestring</td>
      <td></td>
    </tr>
    <tr>
      <td>lokalid</td>
      <td>lokalid<br />OGC-rolle: id</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>Unik identifikasjon av et objekt</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>Lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>Navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br />Eksempel: NO for Norge.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>Identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>Dato når en representasjon av objektet i digital form første gang ble etablert<br />Merknad:<br />FørsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.<br />OGC-rolle: primary-instant</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>Dato for siste endring på objektetdataene<br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>Dato for uttak fra en database<br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>temakvalitet</td>
      <td>Kvaliteten på registrering/kartlegging av tema sett i forhold til faktiske forhold i naturen. Ulik tematisk oppløsning/generaliseringsgrad kan være styrt av temaets samfunnsmessige betydning, områdets arealmessige betydning eller prosjektets økonomi. Med nøyaktighet i denne sammenheng menes hvor korrekt registreringen avspeiler objektets posisjon i naturen og presisjonen i valg av tematisk innhold i forhold til generalisering<br /><br />Merknad: Tematisk oppløsning/generaliseringsgrad kan være styrt av temaets samfunnsmessige betydning, områdets arealmessige betydning eller prosjektets målsetning</td>
      <td><a href="#kodeliste-temakvalitet">Temakvalitet</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>geol<wbr />Pavisningstype</td>
      <td>Hvor sikkert et geologisk objekt er påvist i terrenget, eller hvilken metode som ligger til grunn for å påvisningen/registreringen.</td>
      <td><a href="#kodeliste-geolpavisningstype">Geol<wbr />Pavisningstype</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>geol<wbr />Pavisningstype<wbr />Navn</td>
      <td>Hvor sikkert et geologisk objekt er påvist i terrenget, eller hvilken metode som ligger til grunn for å påvisningen/registreringen.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>Beskrivelse av kvaliteten på stedfestingen<br />Merknad: Denne er identisk med ..KVALITET i tidligere versjoner av SOSI.</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>Kode på metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode<wbr />Navn</td>
      <td>Navn på metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- nøyaktighet</td>
      <td>Punktstandardavviket i grunnriss for punkter samt tverravvik for linjer<br />Merknad:<br />Oppgitt i cm</td>
      <td>integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>medium</td>
      <td>Objektets beliggenhet i forhold til jordoverflaten<br />Eksempel:<br />På bro, i tunnel, inne i et bygningsmessig anlegg, etc.</td>
      <td><a href="#kodeliste-medium">Medium</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>medium<wbr />Navn</td>
      <td>Objektets beliggenhet i forhold til jordoverflaten<br />Eksempel:<br />På bro, i tunnel, inne i et bygningsmessig anlegg, etc.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>Referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

#### FiktivDelelinje

Linje for å dele opp store flateobjekter<br />Merknad:<br />En del produktspesifikasjoner benytter spesifikke fiktive delelinjer.

Geometri:<br />Elementtype: feature<br />Type: geometry-linestring<br />Lagrings-CRS:<br />• <a href="http://www.opengis.net/def/crs/EPSG/0/4258">http://www.opengis.net/def/crs/EPSG/0/4258</a><br />Koordinatreferansesystem (crs):<br />• #/crs

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
      <td>geometry</td>
      <td>Elementtype: feature<br />OGC-rolle: primary-geometry</td>
      <td>geometry-linestring</td>
      <td></td>
    </tr>
    <tr>
      <td>lokalid</td>
      <td>OGC-rolle: id</td>
      <td>integer</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

#### GeolAvgrLinje

Generell avgrensning av geologisk objekt<br />-- Definition --<br />General delimitation of geological object

Geometri:<br />Elementtype: feature<br />Type: geometry-linestring<br />Lagrings-CRS:<br />• <a href="http://www.opengis.net/def/crs/EPSG/0/4258">http://www.opengis.net/def/crs/EPSG/0/4258</a><br />Koordinatreferansesystem (crs):<br />• #/crs

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
      <td>geometry</td>
      <td>Elementtype: feature<br />OGC-rolle: primary-geometry</td>
      <td>geometry-linestring</td>
      <td></td>
    </tr>
    <tr>
      <td>lokalid</td>
      <td>lokalid<br />OGC-rolle: id</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>Unik identifikasjon av et objekt</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>Lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>Navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br />Eksempel: NO for Norge.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>Identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>Dato når en representasjon av objektet i digital form første gang ble etablert<br />Merknad:<br />FørsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.<br />OGC-rolle: primary-instant</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>Dato for siste endring på objektetdataene<br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>Dato for uttak fra en database<br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>temakvalitet</td>
      <td>Kvaliteten på registrering/kartlegging av tema sett i forhold til faktiske forhold i naturen. Ulik tematisk oppløsning/generaliseringsgrad kan være styrt av temaets samfunnsmessige betydning, områdets arealmessige betydning eller prosjektets økonomi. Med nøyaktighet i denne sammenheng menes hvor korrekt registreringen avspeiler objektets posisjon i naturen og presisjonen i valg av tematisk innhold i forhold til generalisering<br /><br />Merknad: Tematisk oppløsning/generaliseringsgrad kan være styrt av temaets samfunnsmessige betydning, områdets arealmessige betydning eller prosjektets målsetning</td>
      <td><a href="#kodeliste-temakvalitet">Temakvalitet</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>geol<wbr />Pavisningstype</td>
      <td>Hvor sikkert et geologisk objekt er påvist i terrenget, eller hvilken metode som ligger til grunn for å påvisningen/registreringen.</td>
      <td><a href="#kodeliste-geolpavisningstype">Geol<wbr />Pavisningstype</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>geol<wbr />Pavisningstype<wbr />Navn</td>
      <td>Hvor sikkert et geologisk objekt er påvist i terrenget, eller hvilken metode som ligger til grunn for å påvisningen/registreringen.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>Beskrivelse av kvaliteten på stedfestingen<br />Merknad: Denne er identisk med ..KVALITET i tidligere versjoner av SOSI.</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>Kode på metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode<wbr />Navn</td>
      <td>Navn på metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- nøyaktighet</td>
      <td>Punktstandardavviket i grunnriss for punkter samt tverravvik for linjer<br />Merknad:<br />Oppgitt i cm</td>
      <td>integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>medium</td>
      <td>Objektets beliggenhet i forhold til jordoverflaten<br />Eksempel:<br />På bro, i tunnel, inne i et bygningsmessig anlegg, etc.</td>
      <td><a href="#kodeliste-medium">Medium</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>medium<wbr />Navn</td>
      <td>Objektets beliggenhet i forhold til jordoverflaten<br />Eksempel:<br />På bro, i tunnel, inne i et bygningsmessig anlegg, etc.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>Referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

#### LosmasseFlate

Areal hvor løsmasser/sedimenter har samme kornstørrelse<br />Merknad:<br />Kornstørrelseflate må ha enten sedKornstorrelse eller losmKornstorrelse, sedKornstorrelse gjelder for kartlegging marint/i sjø - mens losmKornstorrelse gjelder for kartlegging på land.

Geometri:<br />Elementtype: feature<br />Type: geometry-polygon<br />Lagrings-CRS:<br />• <a href="http://www.opengis.net/def/crs/EPSG/0/4258">http://www.opengis.net/def/crs/EPSG/0/4258</a><br />Koordinatreferansesystem (crs):<br />• #/crs<br />• <a href="http://www.opengis.net/def/crs/OGC/1.3/CRS84">http://www.opengis.net/def/crs/OGC/1.3/CRS84</a>

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
      <td>geometry</td>
      <td>Elementtype: feature<br />OGC-rolle: primary-geometry</td>
      <td>geometry-polygon</td>
      <td></td>
    </tr>
    <tr>
      <td>lokalid</td>
      <td>lokalid<br />OGC-rolle: id</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>Unik identifikasjon av et objekt</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>Lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>Navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br />Eksempel: NO for Norge.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>Identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>Dato for uttak fra en database<br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.<br />OGC-rolle: primary-instant</td>
      <td>date (string)</td>
      <td>1..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>Dato når en representasjon av objektet i digital form første gang ble etablert<br />Merknad:<br />FørsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>losmassetype</td>
      <td>Kvartærgeologiske løsmassetyper (jordartstyper)</td>
      <td><a href="#kodeliste-losmassetype">Losmassetype</a><br />(enumerering)</td>
      <td>1..1</td>
    </tr>
    <tr>
      <td>losmassetype<wbr />Navn</td>
      <td>Kvartærgeologiske løsmassetyper (jordartstyper)</td>
      <td>string</td>
      <td>1..1</td>
    </tr>
  </tbody>
</table>

#### LosmasseGrense

Avgrensning av ulike typer løsmasser (jordarter)

Geometri:<br />Elementtype: feature<br />Type: geometry-linestring<br />Lagrings-CRS:<br />• <a href="http://www.opengis.net/def/crs/EPSG/0/4258">http://www.opengis.net/def/crs/EPSG/0/4258</a><br />Koordinatreferansesystem (crs):<br />• #/crs<br />• <a href="http://www.opengis.net/def/crs/OGC/1.3/CRS84">http://www.opengis.net/def/crs/OGC/1.3/CRS84</a>

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
      <td>geometry</td>
      <td>Elementtype: feature<br />OGC-rolle: primary-geometry</td>
      <td>geometry-linestring</td>
      <td></td>
    </tr>
    <tr>
      <td>lokalid</td>
      <td>lokalid<br />OGC-rolle: id</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>Unik identifikasjon av et objekt</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>Lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br />NOTE: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>Navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />NOTE 1 : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br />Eksempel: NO for Norge.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>Identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterers. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br />NOTE Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>første<wbr />Digitaliseringsdato</td>
      <td>Dato når en representasjon av objektet i digital form første gang ble etablert<br />Merknad:<br />FørsteDigitaliseringsdato kan skille seg fra førsteDatafangstdato ved at den første datafangsten skjedde analogt og gjort om til digital form senere i en produksjonsprosess.<br />Eventuelt at innlegging i databasen skjedde på et senere tidspunkt enn registreringen /observasjonen / målingen av objektet.<br />OGC-rolle: primary-instant</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>Dato for siste endring på objektetdataene<br />Merknad:<br />Oppdateringsdato kan være forskjellig fra Datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).<br />-Definition-<br />Date and time at which this version of the spatial object was inserted or changed in the spatial data set.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>datauttaksdato</td>
      <td>Dato for uttak fra en database<br />Merknad:<br />Skiller seg fra Kopidato ved at en ikke skiller på om det er uttak fra en originaldatabase eller en kopidatabase.</td>
      <td>date (string)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>temakvalitet</td>
      <td>Kvaliteten på registrering/kartlegging av tema sett i forhold til faktiske forhold i naturen. Ulik tematisk oppløsning/generaliseringsgrad kan være styrt av temaets samfunnsmessige betydning, områdets arealmessige betydning eller prosjektets økonomi. Med nøyaktighet i denne sammenheng menes hvor korrekt registreringen avspeiler objektets posisjon i naturen og presisjonen i valg av tematisk innhold i forhold til generalisering<br /><br />Merknad: Tematisk oppløsning/generaliseringsgrad kan være styrt av temaets samfunnsmessige betydning, områdets arealmessige betydning eller prosjektets målsetning</td>
      <td><a href="#kodeliste-temakvalitet">Temakvalitet</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>geol<wbr />Pavisningstype</td>
      <td>Hvor sikkert et geologisk objekt er påvist i terrenget, eller hvilken metode som ligger til grunn for å påvisningen/registreringen.</td>
      <td><a href="#kodeliste-geolpavisningstype">Geol<wbr />Pavisningstype</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>geol<wbr />Pavisningstype<wbr />Navn</td>
      <td>Hvor sikkert et geologisk objekt er påvist i terrenget, eller hvilken metode som ligger til grunn for å påvisningen/registreringen.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>Beskrivelse av kvaliteten på stedfestingen<br />Merknad: Denne er identisk med ..KVALITET i tidligere versjoner av SOSI.</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>Kode på metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode<wbr />Navn</td>
      <td>Navn på metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- nøyaktighet</td>
      <td>Punktstandardavviket i grunnriss for punkter samt tverravvik for linjer<br />Merknad:<br />Oppgitt i cm</td>
      <td>integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>medium</td>
      <td>Objektets beliggenhet i forhold til jordoverflaten<br />Eksempel:<br />På bro, i tunnel, inne i et bygningsmessig anlegg, etc.</td>
      <td><a href="#kodeliste-medium">Medium</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>medium<wbr />Navn</td>
      <td>Objektets beliggenhet i forhold til jordoverflaten<br />Eksempel:<br />På bro, i tunnel, inne i et bygningsmessig anlegg, etc.</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>Referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>string</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

### Kodelister

#### <a id="kodeliste-temakvalitet"></a>«Enumeration» Temakvalitet

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
      <td>dårlig</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>god</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>megetGod</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>noeDårlig</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>noksåGod</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>særdelesGod</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-geolpavisningstype"></a>«Enumeration» GeolPavisningstype

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
      <td></td>
      <td>0</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>1</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>10</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>11</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>12</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>13</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>14</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>2</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>21</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>22</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>23</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>24</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>25</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>26</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>27</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>28</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>29</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>3</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>30</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>31</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>32</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>4</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>5</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>6</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>7</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>8</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>9</td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-målemetode"></a>«Enumeration» Målemetode

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
      <td></td>
      <td>10</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>11</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>12</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>13</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>14</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>15</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>18</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>19</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>20</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>21</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>22</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>23</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>24</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>30</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>31</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>32</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>33</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>34</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>35</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>36</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>37</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>38</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>40</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>41</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>42</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>43</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>44</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>45</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>46</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>47</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>48</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>49</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>50</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>51</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>52</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>53</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>54</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>55</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>56</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>60</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>61</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>62</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>63</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>64</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>65</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>66</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>67</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>68</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>69</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>70</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>71</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>72</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>73</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>74</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>77</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>78</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>79</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>80</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>81</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>82</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>90</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>91</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>92</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>93</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>94</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>95</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>96</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>97</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>99</td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-medium"></a>«Enumeration» Medium

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
      <td>B</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>D</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>I</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>J</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>L</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>O</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>S</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>T</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>U</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>V</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>W</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>X</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-losmassetype"></a>«Enumeration» Losmassetype

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
      <td></td>
      <td>1</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>10</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>100</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>101</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>102</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>11</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>110</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>12</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>120</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>121</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>122</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>13</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>130</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>14</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>140</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>15</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>150</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>16</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>17</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>20</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>200</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>201</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>202</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>203</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>204</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>205</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>206</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>207</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>208</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>209</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>21</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>210</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>211</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>212</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>213</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>214</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>215</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>216</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>217</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>218</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>219</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>22</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>220</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>23</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>230</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>231</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>240</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>241</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>242</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>250</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>30</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>301</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>302</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>303</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>304</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>305</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>306</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>307</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>308</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>309</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>31</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>310</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>311</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>312</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>313</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>314</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>315</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>316</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>317</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>318</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>320</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>321</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>35</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>36</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>37</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>40</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>41</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>42</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>43</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>44</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>45</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>50</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>51</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>52</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>53</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>54</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>55</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>56</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>57</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>60</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>70</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>71</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>72</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>73</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>80</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>81</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>82</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>88</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>90</td>
    </tr>
  </tbody>
</table>
