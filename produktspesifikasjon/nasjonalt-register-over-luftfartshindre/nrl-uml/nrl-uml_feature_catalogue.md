#### VertikalObjektKomponentPunkt

Egenskaper tilhørende en VertikalObjektKomponent som er et punkt.

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
      <td>posisjon</td>
      <td>det geografiske punktobjektet</td>
      <td>Punkt</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>href</td>
      <td>koordinatregistering utført på topp eller bunn av et objekt</td>
      <td><a href="#kodeliste-høydereferanse">Høydereferanse</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>href<wbr />System</td>
      <td>referanseflate som er utgangspunktet for høydekoordinat.</td>
      <td><a href="#kodeliste-høydereferansesystem">Høydereferansesystem</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>identifikasjon<wbr />Punkt</td>
      <td>unik identifikasjon av et objekt</td>
      <td>Identifikasjon<wbr />Punkt<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />Merknad: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />Merknad : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterer. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />Merknad: Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>beskrivelse av kvaliteten på stedfestingen</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- nøyaktighet</td>
      <td>punktstandardavviket i grunnriss for punkter<br /><br />Merknad:<br />Oppgitt i cm</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- synbarhet</td>
      <td>hvor godt den kartlagte detalj var synbar ved kartleggingen</td>
      <td><a href="#kodeliste-synbarhet">Synbarhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode<wbr />Høyde</td>
      <td>metode for å måle høyden</td>
      <td><a href="#kodeliste-målemetodehøyde">Målemetode<wbr />Høyde</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- nøyaktighet<wbr />Høyde</td>
      <td>nøyaktighet for høyden i cm</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>merking</td>
      <td>samlet informasjon om merking. Gjelder ikke lyssetting. All informasjon om lyssetting ligger under featureType Lyssetting</td>
      <td>Merking<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- merking<wbr />Farge</td>
      <td>skal brukes hvis merking består av en eller to farger</td>
      <td>Merking<wbr />Farge<br />(datatype)</td>
      <td>0..2</td>
    </tr>
    <tr>
      <td>- - farge</td>
      <td>farge angis med koder fra definert kodeliste</td>
      <td><a href="#kodeliste-farge">Farge</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - annet</td>
      <td>hvis "annet" velges på attributt farge, må dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- - fluoriserende</td>
      <td>om fargemerkingen er fluoriserende (selvlysende)</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - reflekterende</td>
      <td>om fargemerkingen er reflekterende</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Type</td>
      <td>ulike typer merking spesifiseres her</td>
      <td><a href="#kodeliste-merkingtype">Merking<wbr />Type</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Type</td>
      <td>hvis "annet" velges på merkingType skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Mønster</td>
      <td>mønster til merkingen</td>
      <td><a href="#kodeliste-merkingmønster">Merking<wbr />Mønster</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Mønster</td>
      <td>hvis "Annet" velges på merkingMønster skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />ICAO</td>
      <td>hvorvidt merking er ihht. ICAO standard</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Tilstand</td>
      <td>informasjon om merkingens tilstand</td>
      <td><a href="#kodeliste-merkingtilstand">Merking<wbr />Tilstand</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning</td>
      <td>objektkomponentens maksimale høyde over terreng- eller vannoverflate</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning<wbr />Måleenhet</td>
      <td>her oppgis måleenheten til den vertikale utstrekningen av objektet</td>
      <td><a href="#kodeliste-måleenhet">Måleenhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>merkeplikt</td>
      <td>informasjon om merkeplikt. Gjelder lyssetting og annen merking.</td>
      <td>Merkeplikt<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merkepliktig</td>
      <td>hvorvidt hinder er merkepliktig</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merkepliktig<wbr />Ihenhold<wbr />Til</td>
      <td>regelverk som pålegger merking</td>
      <td><a href="#kodeliste-regelverkmerkeplikt">Regelverk<wbr />Merkeplikt</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ansvarlig<wbr />For<wbr />Merking</td>
      <td>hvem har ansvar for merking</td>
      <td><a href="#kodeliste-ansvarligformerking">Ansvarlig<wbr />For<wbr />Merking</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merke<wbr />Informasjon</td>
      <td>utdypende informasjon om merking</td>
      <td><a href="#kodeliste-merkeinformasjon">Merke<wbr />Informasjon</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merkeplikt</td>
      <td>utfyllende informasjon om en eller flere av de andre attributtene</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>ekstern<wbr />Referanse</td>
      <td>referanse til et eksternt register</td>
      <td>Referanse<wbr />Til<wbr />Eksternt<wbr />Register<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- registernavn</td>
      <td>navn til eksternt register</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ekstern<wbr />Id</td>
      <td>ekstern Id av samme objekt i et annet register</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>komponentsekvensnummer</td>
      <td>angir rekkefølge på VertikalObjektKomponent som tilhører samme VertikalObjekt</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>BSLE-2-1_<wbr />hinder</td>
      <td>hvorvidt dette er et hinder ihht. forskrift BSL E 2-1</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>lyssetting</td>
      <td>hinderlys til bruk ved merking av luftfartshinder i henhold til vedlegg til forskrift om rapportering, registrering og merking av luftfartshinder, BSL E 2-1. I tillegg er det mulig å velge koder fra gammel NRL</td>
      <td><a href="#kodeliste-lystype">Lystype</a><br />(kodeliste)</td>
      <td>1..*</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra Supertype_VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten<br /><br />Merknad: Verifiseringsdato er identisk med ..DATO i tidligere versjoner av SOSI</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
VertikalObjektKomponent

#### Supertype_VertikalObjekt (abstrakt)

VertkalObjekt inneholder felles egenskaper for alle VertikalObjektKomponenter som til sammen utgjør et luftfartshinder. Her listes egenskaper som er arvet fra SOSI objekt.

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
      <td>datafangstdato</td>
      <td>dato da objektet siste gang ble innmålt</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>gyldig<wbr />Fra</td>
      <td>Tidspunktet når objektet oppstod i den virkelige verden</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>gyldig<wbr />Til</td>
      <td>Tidspunktet når objektet opphørte å eksistere i den virkelige verden</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>informasjon</td>
      <td>generell opplysning<br /><br />Merknad:<br />mulighet til å legge inn utfyllende informasjon om objektet</td>
      <td>Character<wbr />String</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>link</td>
      <td>referanse  til et informasjonselement, enten lokalt eller globalt</td>
      <td>Link</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### Supertype_VertikalObjektKomponent (abstrakt)

Et luftfartshinder kan bestå av ett eller flere VertikalObjektKomponent. Her listes egenskaper som er arvet fra SOSI-objekt.

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
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten<br /><br />Merknad: Verifiseringsdato er identisk med ..DATO i tidligere versjoner av SOSI</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

#### VertikalObjekt

VertkalObjekt inneholder felles egenskaper for alle VertikalObjektKomponenter som til sammen utgjør et luftfartshinder. Her listes egenskaper som ikke er arvet fra SOSI objekt.

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
      <td>kommentar<wbr />Vertikal<wbr />Objekt<wbr />Type</td>
      <td>hvis "Annet" velges på vertikalObjektType skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Objekt<wbr />Gruppe</td>
      <td>indikerer om VertikalObjekt er en representant for et antall nært lokaliserte objekter av samme type</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Objekt<wbr />Navn</td>
      <td>Navn på VertikalObjekt.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Objekt<wbr />Type</td>
      <td>her angis det hvilken type vertikalt objekt dette objektet er, se egen kodeliste</td>
      <td><a href="#kodeliste-vertikalobjekttype">Vertikal<wbr />Objekt<wbr />Type</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>identifikasjon<wbr />Objekt</td>
      <td>unik identifikasjon av et objekt</td>
      <td>Identifikasjon<wbr />Objekt<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />Merknad: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />Merknad : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterer. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />Merknad: Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra Supertype_VertikalObjekt</th>
    </tr>
    <tr>
      <td>datafangstdato</td>
      <td>dato da objektet siste gang ble innmålt</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>gyldig<wbr />Fra</td>
      <td>Tidspunktet når objektet oppstod i den virkelige verden</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>gyldig<wbr />Til</td>
      <td>Tidspunktet når objektet opphørte å eksistere i den virkelige verden</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>informasjon</td>
      <td>generell opplysning<br /><br />Merknad:<br />mulighet til å legge inn utfyllende informasjon om objektet</td>
      <td>Character<wbr />String</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>link</td>
      <td>referanse  til et informasjonselement, enten lokalt eller globalt</td>
      <td>Link</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>opphav</td>
      <td>referanse til opphavsmaterialet, kildematerialet, organisasjons/publiseringskilde<br /><br />Merknad:<br />Kan også beskrive navn på person og årsak til oppdatering</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
Supertype_VertikalObjekt

**Assosiasjoner**
VertikalObjektKomponentPunkt – rolle: bestårAvVertikalobjKompPunkt – kardinalitet: 0..*
VertikalObjektKomponentLinje – rolle: bestårAvVertikalobjKompLinje – kardinalitet: 0..*

#### VertikalObjektKomponentLinje

Egenskaper tilhørende en VertikalObjektKomponent som er en linje.

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
      <td>identifikasjon<wbr />Linje</td>
      <td>unik identifikasjon av et objekt</td>
      <td>Identifikasjon<wbr />Linje<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />Merknad: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />Merknad : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterer. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />Merknad: Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>linje<wbr />Element</td>
      <td>det geografiske linjeobjektet</td>
      <td>Kurve</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>linjespenn</td>
      <td>informasjon om en VertikalObjektKomponentLinje er et spenn eller ei. Et linjespenn har vertikal utstrekning på 60 m eller høyere eller er av andre årsaker omfattet av merkepålegg fra Luftfartstilsynet.</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>lengde</td>
      <td>horisontal avstand mellom start- og sluttpunkt på linjesegment</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>lengde<wbr />Måleenhet</td>
      <td>her oppgis måleenheten til lengden av linjesegmentet</td>
      <td><a href="#kodeliste-måleenhet">Måleenhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>merking</td>
      <td>samlet informasjon om merking. Gjelder ikke lyssetting. All informasjon om lyssetting ligger under featureType Lyssetting</td>
      <td>Merking<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- merking<wbr />Farge</td>
      <td>skal brukes hvis merking består av en eller to farger</td>
      <td>Merking<wbr />Farge<br />(datatype)</td>
      <td>0..2</td>
    </tr>
    <tr>
      <td>- - farge</td>
      <td>farge angis med koder fra definert kodeliste</td>
      <td><a href="#kodeliste-farge">Farge</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - annet</td>
      <td>hvis "annet" velges på attributt farge, må dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- - fluoriserende</td>
      <td>om fargemerkingen er fluoriserende (selvlysende)</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - reflekterende</td>
      <td>om fargemerkingen er reflekterende</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Type</td>
      <td>ulike typer merking spesifiseres her</td>
      <td><a href="#kodeliste-merkingtype">Merking<wbr />Type</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Type</td>
      <td>hvis "annet" velges på merkingType skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Mønster</td>
      <td>mønster til merkingen</td>
      <td><a href="#kodeliste-merkingmønster">Merking<wbr />Mønster</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Mønster</td>
      <td>hvis "Annet" velges på merkingMønster skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />ICAO</td>
      <td>hvorvidt merking er ihht. ICAO standard</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Tilstand</td>
      <td>informasjon om merkingens tilstand</td>
      <td><a href="#kodeliste-merkingtilstand">Merking<wbr />Tilstand</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning</td>
      <td>objektkomponentens maksimale høyde over terreng- eller vannoverflate</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning<wbr />Måleenhet</td>
      <td>her oppgis måleenheten til den vertikale utstrekningen av objektet</td>
      <td><a href="#kodeliste-måleenhet">Måleenhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>merkeplikt</td>
      <td>informasjon om merkeplikt. Gjelder lyssetting og annen merking.</td>
      <td>Merkeplikt<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merkepliktig</td>
      <td>hvorvidt hinder er merkepliktig</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merkepliktig<wbr />Ihenhold<wbr />Til</td>
      <td>regelverk som pålegger merking</td>
      <td><a href="#kodeliste-regelverkmerkeplikt">Regelverk<wbr />Merkeplikt</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ansvarlig<wbr />For<wbr />Merking</td>
      <td>hvem har ansvar for merking</td>
      <td><a href="#kodeliste-ansvarligformerking">Ansvarlig<wbr />For<wbr />Merking</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merke<wbr />Informasjon</td>
      <td>utdypende informasjon om merking</td>
      <td><a href="#kodeliste-merkeinformasjon">Merke<wbr />Informasjon</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merkeplikt</td>
      <td>utfyllende informasjon om en eller flere av de andre attributtene</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>ekstern<wbr />Referanse</td>
      <td>referanse til et eksternt register</td>
      <td>Referanse<wbr />Til<wbr />Eksternt<wbr />Register<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- registernavn</td>
      <td>navn til eksternt register</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ekstern<wbr />Id</td>
      <td>ekstern Id av samme objekt i et annet register</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>komponentsekvensnummer</td>
      <td>angir rekkefølge på VertikalObjektKomponent som tilhører samme VertikalObjekt</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>BSLE-2-1_<wbr />hinder</td>
      <td>hvorvidt dette er et hinder ihht. forskrift BSL E 2-1</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>lyssetting</td>
      <td>hinderlys til bruk ved merking av luftfartshinder i henhold til vedlegg til forskrift om rapportering, registrering og merking av luftfartshinder, BSL E 2-1. I tillegg er det mulig å velge koder fra gammel NRL</td>
      <td><a href="#kodeliste-lystype">Lystype</a><br />(kodeliste)</td>
      <td>1..*</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra Supertype_VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten<br /><br />Merknad: Verifiseringsdato er identisk med ..DATO i tidligere versjoner av SOSI</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
VertikalObjektKomponent

**Assosiasjoner**
VertikalObjektKomponentLinjePkt – rolle: avgrensesAvPunkt – kardinalitet: 0..*

#### VertikalObjektKomponent (abstrakt)

Et luftfartshinder kan bestå av ett eller flere VertikalObjektKomponent(er). Her listes egenskaper som ikke er arvet fra SOSI objekt. En VertikalObjektKomponent kan være enten en linje eller et punkt – se VertikalObjektKomponentLinje og VertikalObjektKomponentPunkt.

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
      <td>merking</td>
      <td>samlet informasjon om merking. Gjelder ikke lyssetting. All informasjon om lyssetting ligger under featureType Lyssetting</td>
      <td>Merking<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- merking<wbr />Farge</td>
      <td>skal brukes hvis merking består av en eller to farger</td>
      <td>Merking<wbr />Farge<br />(datatype)</td>
      <td>0..2</td>
    </tr>
    <tr>
      <td>- - farge</td>
      <td>farge angis med koder fra definert kodeliste</td>
      <td><a href="#kodeliste-farge">Farge</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - annet</td>
      <td>hvis "annet" velges på attributt farge, må dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- - fluoriserende</td>
      <td>om fargemerkingen er fluoriserende (selvlysende)</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - reflekterende</td>
      <td>om fargemerkingen er reflekterende</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Type</td>
      <td>ulike typer merking spesifiseres her</td>
      <td><a href="#kodeliste-merkingtype">Merking<wbr />Type</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Type</td>
      <td>hvis "annet" velges på merkingType skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Mønster</td>
      <td>mønster til merkingen</td>
      <td><a href="#kodeliste-merkingmønster">Merking<wbr />Mønster</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Mønster</td>
      <td>hvis "Annet" velges på merkingMønster skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />ICAO</td>
      <td>hvorvidt merking er ihht. ICAO standard</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Tilstand</td>
      <td>informasjon om merkingens tilstand</td>
      <td><a href="#kodeliste-merkingtilstand">Merking<wbr />Tilstand</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning</td>
      <td>objektkomponentens maksimale høyde over terreng- eller vannoverflate</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning<wbr />Måleenhet</td>
      <td>her oppgis måleenheten til den vertikale utstrekningen av objektet</td>
      <td><a href="#kodeliste-måleenhet">Måleenhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>merkeplikt</td>
      <td>informasjon om merkeplikt. Gjelder lyssetting og annen merking.</td>
      <td>Merkeplikt<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merkepliktig</td>
      <td>hvorvidt hinder er merkepliktig</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merkepliktig<wbr />Ihenhold<wbr />Til</td>
      <td>regelverk som pålegger merking</td>
      <td><a href="#kodeliste-regelverkmerkeplikt">Regelverk<wbr />Merkeplikt</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ansvarlig<wbr />For<wbr />Merking</td>
      <td>hvem har ansvar for merking</td>
      <td><a href="#kodeliste-ansvarligformerking">Ansvarlig<wbr />For<wbr />Merking</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merke<wbr />Informasjon</td>
      <td>utdypende informasjon om merking</td>
      <td><a href="#kodeliste-merkeinformasjon">Merke<wbr />Informasjon</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merkeplikt</td>
      <td>utfyllende informasjon om en eller flere av de andre attributtene</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>ekstern<wbr />Referanse</td>
      <td>referanse til et eksternt register</td>
      <td>Referanse<wbr />Til<wbr />Eksternt<wbr />Register<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- registernavn</td>
      <td>navn til eksternt register</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ekstern<wbr />Id</td>
      <td>ekstern Id av samme objekt i et annet register</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>komponentsekvensnummer</td>
      <td>angir rekkefølge på VertikalObjektKomponent som tilhører samme VertikalObjekt</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>BSLE-2-1_<wbr />hinder</td>
      <td>hvorvidt dette er et hinder ihht. forskrift BSL E 2-1</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>lyssetting</td>
      <td>hinderlys til bruk ved merking av luftfartshinder i henhold til vedlegg til forskrift om rapportering, registrering og merking av luftfartshinder, BSL E 2-1. I tillegg er det mulig å velge koder fra gammel NRL</td>
      <td><a href="#kodeliste-lystype">Lystype</a><br />(kodeliste)</td>
      <td>1..*</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra Supertype_VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten<br /><br />Merknad: Verifiseringsdato er identisk med ..DATO i tidligere versjoner av SOSI</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
Supertype_VertikalObjektKomponent

#### VertikalObjektKomponentLinjePkt

Egenskaper tilhørende en VertikalObjektKomponent som er et punkt.

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
      <td>posisjon</td>
      <td>det geografiske punktobjektet</td>
      <td>Punkt</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>href</td>
      <td>hvorvidt koordinatregistering er utført på topp eller bunn av et objekt</td>
      <td><a href="#kodeliste-høydereferanse">Høydereferanse</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>href<wbr />System</td>
      <td>referanseflate som er utgangspunktet for høydekoordinat.</td>
      <td><a href="#kodeliste-høydereferansesystem">Høydereferansesystem</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>identifikasjon<wbr />Linje<wbr />Pkt</td>
      <td>unik identifikasjon av et objekt</td>
      <td>Identifikasjon<wbr />Linje<wbr />Pkt<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator, tildelt av dataleverendør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet, ingen andre objekter har samme identifikator.<br /><br />Merknad: Det er data leverendørens ansvar å sørge for at denne lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til objektet, starter med to bokstavs kode jfr ISO 3166. Benytter understreking  ("_") dersom data produsenten ikke er assosiert med bare et land.<br /><br />Merknad : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og vil registreres i "INSPIRE external  Object Identifier Namespaces Register"<br /><br />Eksempel: NO for Norge.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans), maksimum lengde på 25 karakterer. Dersom spesifikasjonen av et geografisk objekt med en identifikasjon inkludererer livsløpssyklusinformasjon, benyttes denne versjonId for å skille mellom ulike versjoner av samme objekt. versjonId er en unik  identifikasjon av versjonen.<br /><br />Merknad: Maksimum lengde er valgt for å tillate tidsregistrering i henhold til  ISO 8601, slik som  "2007-02-12T12:12:12+05:30" som versjonId.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>beskrivelse av kvaliteten på stedfestingen</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- nøyaktighet</td>
      <td>punktstandardavviket i grunnriss for punkter<br /><br />Merknad:<br />Oppgitt i cm</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- synbarhet</td>
      <td>hvor godt den kartlagte detalj var synbar ved kartleggingen</td>
      <td><a href="#kodeliste-synbarhet">Synbarhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode<wbr />Høyde</td>
      <td>metode for å måle høyden</td>
      <td><a href="#kodeliste-målemetodehøyde">Målemetode<wbr />Høyde</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- nøyaktighet<wbr />Høyde</td>
      <td>nøyaktighet for høyden i cm</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>merking</td>
      <td>samlet informasjon om merking. Gjelder ikke lyssetting. All informasjon om lyssetting ligger under featureType Lyssetting</td>
      <td>Merking<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- merking<wbr />Farge</td>
      <td>skal brukes hvis merking består av en eller to farger</td>
      <td>Merking<wbr />Farge<br />(datatype)</td>
      <td>0..2</td>
    </tr>
    <tr>
      <td>- - farge</td>
      <td>farge angis med koder fra definert kodeliste</td>
      <td><a href="#kodeliste-farge">Farge</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - annet</td>
      <td>hvis "annet" velges på attributt farge, må dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- - fluoriserende</td>
      <td>om fargemerkingen er fluoriserende (selvlysende)</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- - reflekterende</td>
      <td>om fargemerkingen er reflekterende</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Type</td>
      <td>ulike typer merking spesifiseres her</td>
      <td><a href="#kodeliste-merkingtype">Merking<wbr />Type</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Type</td>
      <td>hvis "annet" velges på merkingType skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Mønster</td>
      <td>mønster til merkingen</td>
      <td><a href="#kodeliste-merkingmønster">Merking<wbr />Mønster</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merking<wbr />Mønster</td>
      <td>hvis "Annet" velges på merkingMønster skal dette spesifiseres her</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />ICAO</td>
      <td>hvorvidt merking er ihht. ICAO standard</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merking<wbr />Tilstand</td>
      <td>informasjon om merkingens tilstand</td>
      <td><a href="#kodeliste-merkingtilstand">Merking<wbr />Tilstand</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning</td>
      <td>objektkomponentens maksimale høyde over terreng- eller vannoverflate</td>
      <td>Real</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>vertikal<wbr />Utstrekning<wbr />Måleenhet</td>
      <td>her oppgis måleenheten til den vertikale utstrekningen av objektet</td>
      <td><a href="#kodeliste-måleenhet">Måleenhet</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>merkeplikt</td>
      <td>informasjon om merkeplikt. Gjelder lyssetting og annen merking.</td>
      <td>Merkeplikt<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merkepliktig</td>
      <td>hvorvidt hinder er merkepliktig</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- merkepliktig<wbr />Ihenhold<wbr />Til</td>
      <td>regelverk som pålegger merking</td>
      <td><a href="#kodeliste-regelverkmerkeplikt">Regelverk<wbr />Merkeplikt</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ansvarlig<wbr />For<wbr />Merking</td>
      <td>hvem har ansvar for merking</td>
      <td><a href="#kodeliste-ansvarligformerking">Ansvarlig<wbr />For<wbr />Merking</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- merke<wbr />Informasjon</td>
      <td>utdypende informasjon om merking</td>
      <td><a href="#kodeliste-merkeinformasjon">Merke<wbr />Informasjon</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- kommentar<wbr />Merkeplikt</td>
      <td>utfyllende informasjon om en eller flere av de andre attributtene</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>ekstern<wbr />Referanse</td>
      <td>referanse til et eksternt register</td>
      <td>Referanse<wbr />Til<wbr />Eksternt<wbr />Register<br />(datatype)</td>
      <td>0..*</td>
    </tr>
    <tr>
      <td>- registernavn</td>
      <td>navn til eksternt register</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- ekstern<wbr />Id</td>
      <td>ekstern Id av samme objekt i et annet register</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>komponentsekvensnummer</td>
      <td>angir rekkefølge på VertikalObjektKomponent som tilhører samme VertikalObjekt</td>
      <td>Integer</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>BSLE-2-1_<wbr />hinder</td>
      <td>hvorvidt dette er et hinder ihht. forskrift BSL E 2-1</td>
      <td><a href="#kodeliste-janei">Ja<wbr />Nei</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>lyssetting</td>
      <td>hinderlys til bruk ved merking av luftfartshinder i henhold til vedlegg til forskrift om rapportering, registrering og merking av luftfartshinder, BSL E 2-1. I tillegg er det mulig å velge koder fra gammel NRL</td>
      <td><a href="#kodeliste-lystype">Lystype</a><br />(kodeliste)</td>
      <td>1..*</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra Supertype_VertikalObjektKomponent</th>
    </tr>
    <tr>
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten<br /><br />Merknad: Verifiseringsdato er identisk med ..DATO i tidligere versjoner av SOSI</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>dato for siste endring på objektdataene<br /><br />Merknad:<br />Oppdateringsdato refererer til en endring av dataene i registeret. Dataene kan dermed endres som følge av en forvaltningsmessig beslutning uten at det virkelige objektet i terrenget er endret.</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>endringsflagg</td>
      <td>endringsinformasjon om et objekt</td>
      <td>Endringsflagg<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- type<wbr />Endring</td>
      <td>endringsstatus for objektet</td>
      <td><a href="#kodeliste-typeendring">Type<wbr />Endring</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- tidspunkt<wbr />Endring</td>
      <td>tidspunkt for endring av objektet</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>status</td>
      <td>objektets tilstand, se gyldige koder i kodeliste Status</td>
      <td><a href="#kodeliste-status">Status</a><br />(kodeliste)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
VertikalObjektKomponent

**Assosiasjoner**
VertikalObjektKomponentLinje – rolle: avgrenserLinje – kardinalitet: 0..*

### Kodelister

#### <a id="kodeliste-høydereferanse"></a>«CodeList» Høydereferanse

**Definisjon:** koordinatregistering utført på topp eller bunn av et objekt

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
      <td>Høyden målt til foten av objektet</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Høyden målt til toppen av objektet</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent</td>
      <td>benyttes ikke ved nyregistrering</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-høydereferansesystem"></a>«CodeList» Høydereferansesystem

**Definisjon:** referanseflate som er utgangspunktet for høydekoordinat.

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
      <td>Ellipsoide jf. KOORDSYS</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lokal referanseflate</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Geoide bestemt av NKG i 1989</td>
      <td>NKG: The Nordic Geodetic Commission - founded in 1953 - is an association of geodesists from Denmark, Finland, Iceland, Norway and Sweden. Its purpose is to give the members possibilities of fruitful gatherings and mutual exchange of professional views and experiences. The NKG is recognized and supported by a number of Nordic  organizations, such as the Director Generals of the Nordic Mapping Authorities. (Kilde: <a href="http://217.152.180.26/nkg/">http://217.152.180.26/nkg/</a>)</td>
      <td></td>
    </tr>
    <tr>
      <td>Norsk Null av 1954</td>
      <td>Denne er identisk med NN1954</td>
      <td></td>
    </tr>
    <tr>
      <td>Nord-Norsk Null av 1957</td>
      <td>For nyere data er denne gått ut av bruk. Er erstattet av NN54.</td>
      <td></td>
    </tr>
    <tr>
      <td>Norsk Null av 2000</td>
      <td>Nytt felles nordisk vertikalt datum, basert på Normaal Amsterdals Peil.</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-målemetode"></a>«CodeList» Målemetode

**Definisjon:** metode som ligger til grunn for registrering av posisjon

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
      <td>Terrengmålt</td>
      <td>Målt i terrenget</td>
      <td></td>
    </tr>
    <tr>
      <td>Tatt fra plan</td>
      <td>Tatt fra plan eller godkjent tiltak</td>
      <td></td>
    </tr>
    <tr>
      <td>Annet</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Stereoinstrument</td>
      <td>Målt i stereoinstrument, uspesifisert instrument</td>
      <td></td>
    </tr>
    <tr>
      <td>Analytisk plotter</td>
      <td>Målt i stereoinstrument, analytisk plotter</td>
      <td></td>
    </tr>
    <tr>
      <td>Digitalt stereoinstrument</td>
      <td>Målt i stereoinstrument, digitalt instrument</td>
      <td></td>
    </tr>
    <tr>
      <td>Flybåren laserscanner</td>
      <td>Målt med laserskanner fra fly</td>
      <td></td>
    </tr>
    <tr>
      <td>Digitalisert fra ortofoto</td>
      <td>Geometri overført fra ortofoto ved hjelp av manuell registrering på skjerm</td>
      <td></td>
    </tr>
    <tr>
      <td>Digitalisert på skjerm fra satellittbilde</td>
      <td>Geometri overført fra satelittbilde ved hjelp av manuell registrering på skjerm</td>
      <td></td>
    </tr>
    <tr>
      <td>Dig. på skjerm fra scannet samkopi</td>
      <td>Geometri overført fra kart ved hjelp av manuell registrering på skjerm, medium skannet kart (raster), samkopi</td>
      <td></td>
    </tr>
    <tr>
      <td>Genererte data (interpolasjon)</td>
      <td>Genererte data, interpolasjonsmetode. Ikke nærmere spesifisert</td>
      <td></td>
    </tr>
    <tr>
      <td>Frihåndstegning</td>
      <td>Digitalisert ut fra frihåndstegning.  Frihåndstegning er basert på svært grovt grunnlag eller ikke noe grunnlag</td>
      <td></td>
    </tr>
    <tr>
      <td>Digitalisert fra krokering på kart</td>
      <td>Digitalisert fra krokering på kart, dvs grovt skissert på kart</td>
      <td></td>
    </tr>
    <tr>
      <td>Direkte innlagt på skjerm</td>
      <td>Digitalisert ut fra frihåndstegning (direkte på skjerm). Frihåndstegning er basert på svært grovt grunnlag eller ikke noe grunnlag</td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent målemetode</td>
      <td>Målemetode er ukjent</td>
      <td></td>
    </tr>
    <tr>
      <td>GPS Kodemåling, relative målinger</td>
      <td>Innmålt med satellittbaserte systemer for navigasjon og
posisjonering med global dekning (f.eks GPS, GLONASS, GALILEO): Kodemåling, relative målinger.</td>
      <td></td>
    </tr>
    <tr>
      <td>GPS Kodemåling, enkeltmålinger</td>
      <td>Innmålt med satellittbaserte systemer for navigasjon og
posisjonering med global dekning (f.eks GPS, GLONASS,
GALILEO): Kodemåling, enkle målinger.</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-synbarhet"></a>«CodeList» Synbarhet

**Definisjon:** hvor godt den kartlagte detalj var synbar ved kartleggingen

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
      <td>Fullt ut synlig/gjenfinnbar i terrenget</td>
      <td>Default</td>
      <td></td>
    </tr>
    <tr>
      <td>Dårlig gjenfinnbar i terreng</td>
      <td>Forøvrig grei å innmåle. (Benyttes bl.a. for innmåling av ledninger på lukket grøft)</td>
      <td></td>
    </tr>
    <tr>
      <td>Middels synlig i flybilde/modell</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Dårlig/ikke synlig i flybilde/modell</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-målemetodehøyde"></a>«CodeList» MålemetodeHøyde

**Definisjon:** metode for å måle objekttypens høydeverdi

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
      <td>Terrengmålt</td>
      <td>Målt i terrenget</td>
      <td></td>
    </tr>
    <tr>
      <td>Tatt fra plan</td>
      <td>Tatt fra plan eller godkjent tiltak</td>
      <td></td>
    </tr>
    <tr>
      <td>Annet</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Stereoinstrument</td>
      <td>Målt i stereoinstrument, uspesifisert instrument</td>
      <td></td>
    </tr>
    <tr>
      <td>Analytisk plotter</td>
      <td>Målt i stereoinstrument, analytisk plotter</td>
      <td></td>
    </tr>
    <tr>
      <td>Digitalt stereoinstrument</td>
      <td>Målt i stereoinstrument, digitalt instrument</td>
      <td></td>
    </tr>
    <tr>
      <td>Flybåren laserscanning</td>
      <td>Målt med laserskanner fra fly</td>
      <td></td>
    </tr>
    <tr>
      <td>Genererte data (interpolasjon)</td>
      <td>Genererte data, interpolasjonsmetode. Ikke nærmere spesifisert</td>
      <td></td>
    </tr>
    <tr>
      <td>Generert i terrengmodell</td>
      <td>Genererte data, interpolasjonsmetode, fra terrengmodell</td>
      <td></td>
    </tr>
    <tr>
      <td>Målt med stigningsmåler</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>GPS Kodemåling, relative målinger.</td>
      <td>Innmålt med satellittbaserte systemer for navigasjon og
posisjonering med global dekning (f.eks GPS, GLONASS, GALILEO): Kodemåling, relative målinger.</td>
      <td></td>
    </tr>
    <tr>
      <td>GPS Kodemåling, enkeltpunktbestemmelser</td>
      <td>Innmålt med satellittbaserte systemer for navigasjon og
posisjonering med global dekning (f.eks GPS, GLONASS,
GALILEO): Kodemåling, enkle målinger.</td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent målemetode</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-typeendring"></a>«CodeList» TypeEndring

**Definisjon:** endringsstatus for objektet

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
      <td>Endret</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Nytt</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Slettet</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-status"></a>«CodeList» Status

**Definisjon:** objektets tilstand

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
      <td>Eksisterende (default)</td>
      <td>Identisk med tidligere SITSTAT = 3

-- Definition --
Identical with previous SITSTAT = 3</td>
      <td></td>
    </tr>
    <tr>
      <td>Kondemnert</td>
      <td>Ikke lenger et hinder.</td>
      <td></td>
    </tr>
    <tr>
      <td>Ombygd</td>
      <td>Hindret er ombygd (blir vanligvis ikke brukt)</td>
      <td></td>
    </tr>
    <tr>
      <td>Planlagt</td>
      <td>Hindret skal bygges</td>
      <td></td>
    </tr>
    <tr>
      <td>Under arbeid</td>
      <td>Hinderet er under bygging/ombygging</td>
      <td></td>
    </tr>
    <tr>
      <td>Fjernet</td>
      <td>Feilregistrert i registeret, skulle aldri vært der.</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-janei"></a>«CodeList» JaNei

**Definisjon:** alternativ til å bruke den generelle datatypen Boolean

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
      <td>Ja</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Nei</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-vertikalobjekttype"></a>«CodeList» VertikalObjektType

**Definisjon:** ulike typer VertikalObjekter (luftfartshindre).

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Landbruksutstyr</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode AG_EQUIP</td>
      <td></td>
    </tr>
    <tr>
      <td>Telemast</td>
      <td>mast med radio- og telekommunikasjonsutstyr for sending/mottak av telesignaler

tilsvarer klasse MastTele i Ledningsnett 4.0</td>
      <td></td>
    </tr>
    <tr>
      <td>Bru</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode BRIDGE</td>
      <td></td>
    </tr>
    <tr>
      <td>Bygning</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode BUILDING</td>
      <td></td>
    </tr>
    <tr>
      <td>Gondolbane</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode CABLE_CAR</td>
      <td></td>
    </tr>
    <tr>
      <td>Kontrolltårn</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode CONTROL_TOWER</td>
      <td></td>
    </tr>
    <tr>
      <td>Kjøletårn</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode COOLING_TOWER</td>
      <td></td>
    </tr>
    <tr>
      <td>Kran</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType

gjelder også heisekrantypene skinnekran/havnekran, tårnkran/byggekran, mobilkran, flytekran</td>
      <td></td>
    </tr>
    <tr>
      <td>Demning</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode DAM</td>
      <td></td>
    </tr>
    <tr>
      <td>Kuppel</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode DOME</td>
      <td></td>
    </tr>
    <tr>
      <td>EL_Nettstasjon</td>
      <td>stasjon som transformerer elektrisitet fra et høyspentnivå til et lavere

tilsvarer EL_Transformatorstasjon og EL_Nettstasjon i SOSI Ledning 4.5

Merk: Gjelder alle typer transformasjoner. I standarden for luftfartshinder skiller vi ikke mellom ulike typer transformasjoner som for eksempel transformasjon til lavere eller høyere enn 230 V slik det gjøres i SOSI Ledning 4.5.</td>
      <td></td>
    </tr>
    <tr>
      <td>Gjerde</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode FENCE</td>
      <td></td>
    </tr>
    <tr>
      <td>Fyrtårn</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType kode LIGHTHOUSE</td>
      <td></td>
    </tr>
    <tr>
      <td>Monument</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode MONUMENT</td>
      <td></td>
    </tr>
    <tr>
      <td>Terrengpunkt</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode NATURAL_HIGHPOINT</td>
      <td></td>
    </tr>
    <tr>
      <td>Navigasjonshjelpemiddel</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode NAVAID

Gjelder kun radio instrumenter som brukes ifm navigasjon for luftfartøy og ikke hjelpemidler til andre form for navigasjon, som for eksempel til sjøs.</td>
      <td></td>
    </tr>
    <tr>
      <td>Stolpe</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode POLE</td>
      <td></td>
    </tr>
    <tr>
      <td>Kraftverk</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode POWER_PLANT</td>
      <td></td>
    </tr>
    <tr>
      <td>Raffineri</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode REFINERY</td>
      <td></td>
    </tr>
    <tr>
      <td>Oljerigg</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode RIG</td>
      <td></td>
    </tr>
    <tr>
      <td>Skilt</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode SIGN</td>
      <td></td>
    </tr>
    <tr>
      <td>Pipe</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode STACK</td>
      <td></td>
    </tr>
    <tr>
      <td>Tank</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode TANK</td>
      <td></td>
    </tr>
    <tr>
      <td>Forankret ballong</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode TETHERED_BALLOON</td>
      <td></td>
    </tr>
    <tr>
      <td>Tårn</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode TOWER</td>
      <td></td>
    </tr>
    <tr>
      <td>Kraftledning</td>
      <td>linje som fører elektrisk kraft over store avstander

tilsvarer klasse LuftledningLH i SOSI Ledningsnett 4.0 og kodene "Høgspentnett" og "Lavspentnett" i kodelista Ledningsnettverkstype i SOSI Ledningsnett 4.5

tilsvarer også kode TRANSMISSION_LINE
hentet fra AIXM 5.1 klasse CodeVerticalStructureType</td>
      <td></td>
    </tr>
    <tr>
      <td>Tre</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode TREE</td>
      <td></td>
    </tr>
    <tr>
      <td>Skogsområde</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode VEGETATION

gjelder også klasse lufthavnhinderTregruppe i SOSI Lufthavn 4.1</td>
      <td></td>
    </tr>
    <tr>
      <td>Vanntårn</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode WATER_TOWER</td>
      <td></td>
    </tr>
    <tr>
      <td>Vindmølle</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode WINDMILL</td>
      <td></td>
    </tr>
    <tr>
      <td>Vindmøllepark</td>
      <td>hentet fra AIXM 5.1 klasse CodeVerticalStructureType, kode WINDMILL_FARMS</td>
      <td></td>
    </tr>
    <tr>
      <td>Hopptårn</td>
      <td>tilsvarer klasse Hoppbakke i SOSI Bygnan 4.0

ikke dommertårnet</td>
      <td></td>
    </tr>
    <tr>
      <td>Vindmåler</td>
      <td>meteorologisk instrument som måler vindhastighet og vindretning</td>
      <td></td>
    </tr>
    <tr>
      <td>Lysmast</td>
      <td>mast brukt for montering av ulike lyskilder</td>
      <td></td>
    </tr>
    <tr>
      <td>Flaggstang</td>
      <td>lang rett stang for heising av flagg

tilsvarer klasse Flaggstang i SOSI Bygnan 4.0</td>
      <td></td>
    </tr>
    <tr>
      <td>Petroleumsinnretning</td>
      <td>innretning, installasjon, anlegg og annet utstyr for petroleumsvirksomhet, likevel ikke forsynings- og hjelpefartøy eller skip som transporterer petroleum i bulk

tilsvarer klasse Petroleumsinnretning i SOSI Petroleum 4.0</td>
      <td></td>
    </tr>
    <tr>
      <td>Silo</td>
      <td>lagringsbygg for fôr og korn som ikke er registrert som bygning i GAB

tilsvarer klasse Silo i SOSI Bygnan 4.0

Merknad: I motsetning til definisjonen av klasse Silo i SOSI Bygnan 4.0 vil dette også gjelde store silobygg</td>
      <td></td>
    </tr>
    <tr>
      <td>Stolheis</td>
      <td>taubane med stoler til persontransport

tilsvarer klasse Stolheis i SOSI Bygnan 4.0</td>
      <td></td>
    </tr>
    <tr>
      <td>Skitrekk</td>
      <td>taubane til å dra skiløper opp bratte bakker

tilsvarer klasse Skitrekk i SOSI Bygnan 4.0</td>
      <td></td>
    </tr>
    <tr>
      <td>Taubane</td>
      <td>innretning hvor tau eller vaiere bærer og eller trekker last over en strekning

tilsvarer klasse Taubane i SOSI Bygnan 4.0</td>
      <td></td>
    </tr>
    <tr>
      <td>Fornøyelsesparkinnretning</td>
      <td>pariserhjul, berg og dal bane og andre høye innretninger i en fornøyelsespark</td>
      <td></td>
    </tr>
    <tr>
      <td>Annet</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-måleenhet"></a>«CodeList» Måleenhet

**Definisjon:** kodeliste for måleenheter.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>FT</td>
      <td>foot</td>
      <td></td>
    </tr>
    <tr>
      <td>M</td>
      <td>meter</td>
      <td></td>
    </tr>
    <tr>
      <td>CM</td>
      <td>centimeter</td>
      <td></td>
    </tr>
    <tr>
      <td>KM</td>
      <td>kilometer</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-farge"></a>«CodeList» Farge

**Definisjon:** kodeliste for merkingens farge. Består hovedsakelig av farger fra Vedlegg 1 til BSL E 2-1. I tillegg er det inkludert en del koder fra gammelt NRL-system.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Svovelgul</td>
      <td>RAL 1016 (Sulfur yellow)</td>
      <td></td>
    </tr>
    <tr>
      <td>Trafikkrød</td>
      <td>RAL 3020 (Traffic red)</td>
      <td></td>
    </tr>
    <tr>
      <td>Lysende rød</td>
      <td>RAL 3024 (Luminous red)</td>
      <td></td>
    </tr>
    <tr>
      <td>Lys grå</td>
      <td>RAL 7035 (Light grey)</td>
      <td></td>
    </tr>
    <tr>
      <td>Agatgrå</td>
      <td>RAL 7038 (Agate grey)</td>
      <td></td>
    </tr>
    <tr>
      <td>Signalhvit</td>
      <td>RAL 9003 (Signal white)</td>
      <td></td>
    </tr>
    <tr>
      <td>Ren hvit</td>
      <td>RAL 9010 (Pure white)</td>
      <td></td>
    </tr>
    <tr>
      <td>Trafikkhvit</td>
      <td>RAL 9016 (Traffic white)</td>
      <td></td>
    </tr>
    <tr>
      <td>Oransje</td>
      <td>RAL kode ikke aktuelt, kode er videreført fra gammelt system</td>
      <td></td>
    </tr>
    <tr>
      <td>Rødt</td>
      <td>RAL kode ikke aktuelt, kode er videreført fra gammelt system</td>
      <td></td>
    </tr>
    <tr>
      <td>Hvitt</td>
      <td>RAL kode ikke aktuelt, kode er videreført fra gammelt system</td>
      <td></td>
    </tr>
    <tr>
      <td>Annet</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-merkingtype"></a>«CodeList» MerkingType

**Definisjon:** ulike typer merking spesifiseres her

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Flagg</td>
      <td>kan være ensfarget eller mønstret.</td>
      <td></td>
    </tr>
    <tr>
      <td>Markør</td>
      <td>gjelder også blåser</td>
      <td></td>
    </tr>
    <tr>
      <td>Plater</td>
      <td>Objektet er merket med fargede plater</td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent</td>
      <td>Merketypen er ukjent</td>
      <td></td>
    </tr>
    <tr>
      <td>Annet</td>
      <td>hvis valgt, kreves utfylling av feltet kommentarMerkingType</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-merkingmønster"></a>«CodeList» MerkingMønster

**Definisjon:** ulike mønstertyper for merking.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Ensfarget</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Rutemønstret</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Horisontale bånd</td>
      <td>to-fargete alternerende horisontale bånd</td>
      <td></td>
    </tr>
    <tr>
      <td>Vertikale bånd</td>
      <td>to-fargete alternerende vertikale bånd</td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Annet</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-merkingtilstand"></a>«CodeList» MerkingTilstand

**Definisjon:** Angivelse av merkingens tilstand.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Dårlig</td>
      <td>Merkingen er vanskelig å se.</td>
      <td></td>
    </tr>
    <tr>
      <td>Brukbar</td>
      <td>Merkingen er mulig å se, men utydelig.</td>
      <td></td>
    </tr>
    <tr>
      <td>God</td>
      <td>Merkingen er godt synlig.</td>
      <td></td>
    </tr>
    <tr>
      <td>Veldig god</td>
      <td>Merkingen er meget godt synlig.</td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent</td>
      <td>Tilstanden til merking er ukjent.</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-regelverkmerkeplikt"></a>«CodeList» RegelverkMerkeplikt

**Definisjon:** hinder er merkepliktig i henhold til

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>BSL E 2</td>
      <td>Merket i henhold til forskrift om Bestemmelser for sivil luftfart nr 2.</td>
      <td></td>
    </tr>
    <tr>
      <td>BSL E 3</td>
      <td>Merket i henhold til forskrift om Bestemmelser for sivil luftfart nr 3.</td>
      <td></td>
    </tr>
    <tr>
      <td>Pålagt av LT</td>
      <td>merking pålagt spesifikt av Luftfartstilsynet</td>
      <td></td>
    </tr>
    <tr>
      <td>BSL E 2 aggregerte komponenter</td>
      <td>enkeltelementer er ikke merkepliktige i utgangspunktet, men de er merkepliktige hvis de oppfyller visse krav når de er sett som helhet</td>
      <td></td>
    </tr>
    <tr>
      <td>EASA</td>
      <td>Merket i henhold til bestemmelser fra EASA</td>
      <td></td>
    </tr>
    <tr>
      <td>ICAO</td>
      <td>Merket i henhold til bestemmelser fra ICAO</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-ansvarligformerking"></a>«CodeList» AnsvarligForMerking

**Definisjon:** hvem har ansvar for merking

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Eier av hinder</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Godkjenningsansvarlig for landingsplass-flyplass</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-merkeinformasjon"></a>«CodeList» MerkeInformasjon

**Definisjon:** utdypende informasjon om merking

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>merket i henhold til forskrift</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>merket i henhold til dispensasjon</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>merket utover aktuell forskrift</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>mangler merking</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>ukjent</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-lystype"></a>«CodeList» Lystype

**Definisjon:** hinderlys til bruk ved merking av luftfartshinder i henhold til vedlegg til forskrift om rapportering, registrering og merking av luftfartshinder, BSL E 2-1. &lt;font color="#0f0f0f"&gt;I tillegg er det mulig å velge koder fra gammel NRL&lt;/font&gt;

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>false</td>
    </tr>
  </tbody>
</table>

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
      <td>Lavintensitet type A</td>
      <td>rødt, fast, 10 candela</td>
      <td></td>
    </tr>
    <tr>
      <td>Lavintensitet type B</td>
      <td>rødt, fast, 32 candela</td>
      <td></td>
    </tr>
    <tr>
      <td>Lavintensitet type C</td>
      <td>ikke del av oversikten i vedlegg 2 BSL E 2-1, men tatt fra tabell 6-3 i ICAO annex 14</td>
      <td></td>
    </tr>
    <tr>
      <td>Lavintensitet type D</td>
      <td>ikke del av oversikten i vedlegg 2 BSL E 2-1, men tatt fra tabell 6-3 i ICAO annex 14</td>
      <td></td>
    </tr>
    <tr>
      <td>Mellomintensitet type A</td>
      <td>hvitt, blinkende, 20 000 candela ved bakgrunnsbelysning 50 cd/m ² og over, 2000 candela med bakgrunnsbelysning uneder 50 cd/m ²</td>
      <td></td>
    </tr>
    <tr>
      <td>Mellomintensitet type B</td>
      <td>rødt, blinkende, 2000 candela</td>
      <td></td>
    </tr>
    <tr>
      <td>Mellomintensitet type C</td>
      <td>rødt, fast, 2000 candela</td>
      <td></td>
    </tr>
    <tr>
      <td>Høyintensitet type A</td>
      <td>hvitt, blinkende, 200 000 candela ved bakgrunnsbelysning over 500 cd/m², 20 000 candela ved bakgrunnsbelysning 50-500 cd/m² og 2000 candela ved bakgrunnsbelysning under 50 cd/m²</td>
      <td></td>
    </tr>
    <tr>
      <td>Høyintensitet type B</td>
      <td>hvitt, blinkende, 100 000 candela ved bakgrunnsbelysning over 500 cd/m², 20 000 candela ved bakgrunnsbelysning 50-500 cd/m² og 2000 candela ved bakgrunnsbelysning under 50 cd/m²</td>
      <td></td>
    </tr>
    <tr>
      <td>Belyst med flomlys</td>
      <td>objektet er opplys av lyskastere for å være synlig for luftfarten</td>
      <td></td>
    </tr>
    <tr>
      <td>Fast rødt</td>
      <td>brukes dersom vi ikke vet lysstyrke, men har observert lysfarge rød fast lys</td>
      <td></td>
    </tr>
    <tr>
      <td>Fast hvitt</td>
      <td>brukes dersom vi ikke vet lysstyrke, men har observert lysfarge hvit fast lys</td>
      <td></td>
    </tr>
    <tr>
      <td>Blinkende hvitt</td>
      <td>brukes dersom vi ikke vet lysstyrke, men har observert lysfarge hvitt blinkende lys</td>
      <td></td>
    </tr>
    <tr>
      <td>Blinkende rødt</td>
      <td>brukes dersom vi ikke vet lysstyrke, men har observert lysfarge rødt blinkende lys</td>
      <td></td>
    </tr>
    <tr>
      <td>Lyssatt</td>
      <td>brukes dersom man vet at hinderet har lys, men ikke vet farge og type</td>
      <td></td>
    </tr>
    <tr>
      <td>Ikke lyssatt</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Ukjent</td>
      <td>benyttes dersom det er ukjent om hinderet har lys eller ikke.</td>
      <td></td>
    </tr>
  </tbody>
</table>
