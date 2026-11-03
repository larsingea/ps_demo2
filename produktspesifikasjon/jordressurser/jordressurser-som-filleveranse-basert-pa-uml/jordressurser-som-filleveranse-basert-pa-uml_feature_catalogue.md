#### JordressursGrense

avgrensing for en eller to arealressursflater<br />-- Definition --<br />delimitation for one or two area resource surfaces

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
      <td>forløp som følger overgang mellom ulike fenomener<br />-- Definition --<br />course following the transition between different real world phenomena</td>
      <td>GM_<wbr />Curve</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### Jordressurser_Fellesgenskaper

abstrakt objekttype som bærer sentrale egenskaper som er anbefalt for bruk i produktspesifikasjoner.<br />Merknad: Disse egenskapene skal derfor ikke modelleres inn i fagområdemodeller.

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
      <td>Unik identifikasjon av et objekt i et datasett, forvaltet av den ansvarlige produsent/forvalter, og kan benyttes av eksterne applikasjoner som stabil referanse til objektet.<br />Merknad 1: Denne objektidentifikasjonen må ikke forveksles med en tematisk objektidentifikasjon, slik som f.eks bygningsnummer.<br />Merknad 2: Denne unike identifikatoren vil ikke endres i løpet av objektets levetid, og ikke gjenbrukes i andre objekt.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator av et objekt<br /><br />Merknad: Det er dataleverendørens ansvar å sørge for at den lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til et objekt, anbefales å være en http-URI<br /><br />Eksempel: <a href="http://data.geonorge.no/SentraltStedsnavnsregister/1.0">http://data.geonorge.no/SentraltStedsnavnsregister/1.0</a><br /><br />Merknad : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og må være registrert i data.geonorge.no eller data.norge.no</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kopidata</td>
      <td>angivelse av at objektet er hentet fra en kopi av originaldata<br />Merknad:<br />Kan benyttes dersom man gjør et uttak av en database som ikke inneholder originaldataene.</td>
      <td>Kopidata<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- område<wbr />Id</td>
      <td>identifikasjon av område som dataene dekker<br /><br />Merknad: Kan angis med kommunenummer eller fylkesnummer. Disse bør spesifiseres nærmere.</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- original<wbr />Datavert</td>
      <td>ansvarlig etat for forvaltning av data</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kopidato</td>
      <td>dato når objektet ble kopiert fra originaldatasettet<br /><br />Merknad:<br />Er en del av egenskapen Kopidata. Brukes i de tilfeller hvor en kopidatabase brukes til distribusjon.<br />Å kopiere et datasett til en kopidatabase skal ikke føre til at Oppdateringsdato blir endret.<br />Eventuell redigering av data i et kopidatasett medfører ny Oppdateringsdato, Datafangstdato og/eller Verifiseringsdato.</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>Beskrivelse av kvaliteten på stedfestingen.<br />Merknad: Denne er identisk med ..KVALITET i tidligere versjoner av SOSI.</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

#### Jordressurser

Geografisk område med tilnærmet enhetlige egenskaper i de kriteriene som benyttes i rangering av jordkartlagte arealer for datasettet<br />— Definition —<br />Geographic area with approximately uniform characteristics in the dataset

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
      <td>objektets utstrekning<br />— Definition —<br />Area over which an object extends</td>
      <td>GM_<wbr />Surface</td>
      <td>1</td>
    </tr>
    <tr>
      <td>jordressursklasse</td>
      <td>Viser arealets klassetilhørighet i Jordressurser.<br />— Definition —<br />Shows the Soil Resource Class for an area.</td>
      <td><a href="#kodeliste-jordressursklasse">Jordressursklasse</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>helling<wbr />Gjsnitt</td>
      <td>Viser gjennomsnittlige helling på arealet.<br />-- Definition - -<br />Average inclination class of the soil figure</td>
      <td><a href="#kodeliste-hellinggjsnitt">Helling<wbr />Gjsnitt</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kartleggingsmetodikk</td>
      <td>Viser hvilken opprinnelig kartleggingsmetodikk som er brukt under jordsmonnkartlegging.<br />--Definition--<br />Displays the methodolgy used during field mapping.</td>
      <td><a href="#kodeliste-kartleggingsmetodikk">Kartleggingsmetodikk</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kartleggingsår</td>
      <td>Viser hvilket år kartfiguren ble jordkartlagt<br />— Definition —<br />Mapping year</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>tilleggsinformasjon</td>
      <td>Viser tilleggsinformasjon om andre egenskaper ved arealet.<br />— Definition —<br />Supplementary information.</td>
      <td><a href="#kodeliste-tilleggsinformasjon">Tilleggsinformasjon</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>stein<wbr />Blokk</td>
      <td>Viser stein- og blokkinnhold (0–50 cm) på arealet på kartleggingstidspunktet.<br />— Definition —<br />Shows the amount of stones and boulders for the soil figure in the upper 50 cm.</td>
      <td><a href="#kodeliste-steinblokk">Stein<wbr />Blokk</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>årsak<wbr />Til<wbr />Nedklassifisering</td>
      <td>Viser årsak til at kartfiguren er nedklassifisert.<br />— Definition —<br />Reason for down-classification of Soil Resource Class.</td>
      <td><a href="#kodeliste-årsaktilnedklassifisering">Årsak<wbr />Til<wbr />Nedklassifisering</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>opprinnelig<wbr />Lokal<wbr />Id</td>
      <td>Opprinnelig id i databasen<br />— Definition —<br />Original ID in the soil database</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr class="inherited-from">
      <th colspan="4" scope="rowgroup">Arvet fra Jordressurser_Fellesgenskaper</th>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>Unik identifikasjon av et objekt i et datasett, forvaltet av den ansvarlige produsent/forvalter, og kan benyttes av eksterne applikasjoner som stabil referanse til objektet.<br />Merknad 1: Denne objektidentifikasjonen må ikke forveksles med en tematisk objektidentifikasjon, slik som f.eks bygningsnummer.<br />Merknad 2: Denne unike identifikatoren vil ikke endres i løpet av objektets levetid, og ikke gjenbrukes i andre objekt.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>lokal identifikator av et objekt<br /><br />Merknad: Det er dataleverendørens ansvar å sørge for at den lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>navnerom som unikt identifiserer datakilden til et objekt, anbefales å være en http-URI<br /><br />Eksempel: <a href="http://data.geonorge.no/SentraltStedsnavnsregister/1.0">http://data.geonorge.no/SentraltStedsnavnsregister/1.0</a><br /><br />Merknad : Verdien for nanverom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og må være registrert i data.geonorge.no eller data.norge.no</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kopidata</td>
      <td>angivelse av at objektet er hentet fra en kopi av originaldata<br />Merknad:<br />Kan benyttes dersom man gjør et uttak av en database som ikke inneholder originaldataene.</td>
      <td>Kopidata<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- område<wbr />Id</td>
      <td>identifikasjon av område som dataene dekker<br /><br />Merknad: Kan angis med kommunenummer eller fylkesnummer. Disse bør spesifiseres nærmere.</td>
      <td>Integer</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- original<wbr />Datavert</td>
      <td>ansvarlig etat for forvaltning av data</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- kopidato</td>
      <td>dato når objektet ble kopiert fra originaldatasettet<br /><br />Merknad:<br />Er en del av egenskapen Kopidata. Brukes i de tilfeller hvor en kopidatabase brukes til distribusjon.<br />Å kopiere et datasett til en kopidatabase skal ikke føre til at Oppdateringsdato blir endret.<br />Eventuell redigering av data i et kopidatasett medfører ny Oppdateringsdato, Datafangstdato og/eller Verifiseringsdato.</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kvalitet</td>
      <td>Beskrivelse av kvaliteten på stedfestingen.<br />Merknad: Denne er identisk med ..KVALITET i tidligere versjoner av SOSI.</td>
      <td>Posisjonskvalitet<br />(datatype)</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>- målemetode</td>
      <td>metode for måling i grunnriss (x,y), og høyde (z) når metoden er den samme som ved måling i grunnriss</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>verifiseringsdato</td>
      <td>dato når dataene er fastslått å være i samsvar med virkeligheten</td>
      <td>Date<wbr />Time</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Arv**
Jordressurser_Fellesgenskaper

**Assosiasjoner**
JordressursGrense – rolle: avgrensesAvJordressursgrense – kardinalitet: 0..*

### Kodelister

#### <a id="kodeliste-målemetode"></a>«CodeList» Målemetode

**Definisjon:** metode som ligger til grunn for registrering av posisjon


-- Definition - -
method on which registration of position is based

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/malemetode-kode">https://register.geonorge.no/sosi-kodelister/malemetode-kode</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-jordressursklasse"></a>«CodeList» Jordressursklasse

**Definisjon:** Viser arealets klassetilhørighet i Jordressurser
— Definition —
Shows the Soil Resource Class for an area

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/jordsmonn/jordressursklasser">https://register.geonorge.no/sosi-kodelister/jordsmonn/jordressursklasser</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-hellinggjsnitt"></a>«CodeList» HellingGjsnitt

**Definisjon:** Viser gjennomsnittlige helling på arealet.
-- Definition - -
Average inclination class of the soil figure

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/jordsmonn/hellinggjsnitt">https://register.geonorge.no/sosi-kodelister/jordsmonn/hellinggjsnitt</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-kartleggingsmetodikk"></a>«CodeList» Kartleggingsmetodikk

**Definisjon:** Viser hvilken opprinnelig kartleggingsmetodikk som er brukt under jordsmonnkartlegging.
--Definition--
Displays the methodolgy used during field mapping.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/jordsmonn/kartleggingsmetodikk">https://register.geonorge.no/sosi-kodelister/jordsmonn/kartleggingsmetodikk</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-tilleggsinformasjon"></a>«CodeList» Tilleggsinformasjon

**Definisjon:** Viser tilleggsinformasjon om andre egenskaper ved arealet.
— Definition —
Supplementary information.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/jordsmonn/tilleggsinformasjon">https://register.geonorge.no/sosi-kodelister/jordsmonn/tilleggsinformasjon</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-steinblokk"></a>«CodeList» SteinBlokk

**Definisjon:** Viser stein- og blokkinnhold (0–50 cm) på arealet på kartleggingstidspunktet.
— Definition —
Shows the amount of stones and boulders for the soil figure in the upper 50 cm.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/jordsmonn/steinblokk">https://register.geonorge.no/sosi-kodelister/jordsmonn/steinblokk</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-årsaktilnedklassifisering"></a>«CodeList» ÅrsakTilNedklassifisering

**Definisjon:** Viser årsak til at kartfiguren er nedklassifisert.
— Definition —
Reason for down-classification of Soil Resource Class.

Profilparametre i tagged values

<table class="feature-attribute-table">
  <colgroup>
    <col style="width: 35%;" />
    <col style="width: 65%;" />
  </colgroup>
  <tbody>
    <tr>
      <th scope="row">asDictionary</th>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">codeList</th>
      <td><a href="https://register.geonorge.no/sosi-kodelister/jordsmonn/arsaktilnedklassifisering">https://register.geonorge.no/sosi-kodelister/jordsmonn/arsaktilnedklassifisering</a></td>
    </tr>
  </tbody>
</table>
