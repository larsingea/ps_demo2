#### Bopliktområde

Bopliktområde i en kommune

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
      <td>bopliktomrade</td>
      <td>Flate(r) som avgrenser og angir bopliktområde i en kommune</td>
      <td>GM_<wbr />Multi<wbr />Surface</td>
      <td>1</td>
    </tr>
    <tr>
      <td>forskriftsreferanse</td>
      <td>URL til forskrift (Lovdata)</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>ikrafttredelse</td>
      <td>Dato for forskriftens ikrafttredelse</td>
      <td>Date</td>
      <td>1</td>
    </tr>
    <tr>
      <td>opphevelse</td>
      <td>Dato for forskriftens opphevelse</td>
      <td>Date</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kommunenavn</td>
      <td>Navn på kommune</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kommunenummer</td>
      <td>Kommunenummer</td>
      <td><a href="#kodeliste-kommunenummer">Kommunenummer</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>gjelder<wbr />Kun<wbr />Del<wbr />Av<wbr />Kommunen</td>
      <td>Angir om bopliktområdet kun gjelder deler av kommunen. Verdi = True: Gjelder deler av kommunen. Verdi = False: Gjelder hele kommunen.</td>
      <td>Boolean</td>
      <td>1</td>
    </tr>
    <tr>
      <td>har<wbr />Usikker<wbr />Avgrensning</td>
      <td>Angir om bopliktområdets geometriske avgrensning er usikker og må vurderes manuelt i tråd med forskriften. Verdi = True: Avgrensningen er usikker. Verdi = False: Avgrensningen er ikke usikker.</td>
      <td>Boolean</td>
      <td>1</td>
    </tr>
    <tr>
      <td>malemetode</td>
      <td>Metode som ligger til grunn for registrering av bopliktområdene. Fast verdi er = "fastsatt" med referanse til at bopliktområdene er fastsatt ved forskrift.</td>
      <td><a href="#kodeliste-målemetode">Målemetode</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>gjelder<wbr />For<wbr />Brukt<wbr />Som<wbr />Helarsbolig</td>
      <td>Angir om nedsatt konsesjonsgrense med boplikt gjelder for bebygd eiendom som er eller har vært brukt som helårsbolig.</td>
      <td>Boolean</td>
      <td>1</td>
    </tr>
    <tr>
      <td>gjelder<wbr />For<wbr />Bolig<wbr />Ikke<wbr />Tatt<wbr />IBruk</td>
      <td>Angir om nedsatt konsesjonsgrense med boplikt gjelder for bolig under oppføring eller bolig som ikke er tatt i bruk som helårsbolig.</td>
      <td>Boolean</td>
      <td>1</td>
    </tr>
    <tr>
      <td>gjelder<wbr />For<wbr />Ubebygd<wbr />Boligtomt</td>
      <td>Angir om nedsatt konsesjonsgrense med boplikt gjelder for ubebygd tomt regulert til boligformål.</td>
      <td>Boolean</td>
      <td>1</td>
    </tr>
    <tr>
      <td>har<wbr />Unntak<wbr />Fra<wbr />Slektskapsunntak</td>
      <td>Angir om kommunen har innført unntak fra slektskapsunntaket.</td>
      <td>Boolean</td>
      <td>1</td>
    </tr>
    <tr>
      <td>andre<wbr />Lokale<wbr />Avgrensninger</td>
      <td>Andre lokale begrensninger eller vilkår som ikke dekkes av de andre feltene.</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>identifikasjon</td>
      <td>unik identifikasjon av et objekt</td>
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
      <td>navnerom som unikt identifiserer datakilden til et objekt, anbefales å være en http-URI<br /><br />Eksempel: <a href="http://data.geonorge.no/SentraltStedsnavnsregister/1.0">http://data.geonorge.no/SentraltStedsnavnsregister/1.0</a><br /><br />Merknad : Verdien for navnerom vil eies av den dataprodusent som har ansvar for de unike identifikatorene og må være registrert i data.geonorge.no eller data.norge.no</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>identifikasjon av en spesiell versjon av et geografisk objekt (instans)</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>tidspunkt for siste endring på objektet<br /><br />Merknad:<br />Oppdateringsdato kan være forskjellig fra datafangsdato ved at data som er registrert kan bufres en kortere eller lengre periode før disse legges inn i datasystemet (databasen).</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

Relasjoner

**Assosiasjoner**
Bopliktområdegrense – rolle: avgrensesAvBopliktområdegrense – kardinalitet: 0..*

#### Bopliktområdegrense

Avgrensning av Bopliktområde.

Egenskaper

(ingen)

### Kodelister

#### <a id="kodeliste-kommunenummer"></a>«CodeList» Kommunenummer

**Definisjon:** &lt;font color="#333333"&gt;nummerering av kommuner i henhold til SSB sin offisielle liste&lt;/font&gt;
Merknad: &lt;font color="#333333"&gt;Inneholder fremtidige, gyldige og utgåtte kommunenummer. &lt;/font&gt;Det presiseres at kommune alltid skal ha 4 sifre, dvs. eventuelt med ledende null. Kommune benyttes for kopling mot en rekke andre registre som også benytter 4 sifre.

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
      <td><a href="https://register.geonorge.no/sosi-kodelister/inndelinger/inndelingsbase/kommunenummer">https://register.geonorge.no/sosi-kodelister/inndelinger/inndelingsbase/kommunenummer</a></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-målemetode"></a>«CodeList» Målemetode

**Definisjon:** metode som ligger til grunn for registrering av posisjon

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
      <td><a href="http://skjema.geonorge.no/SOSI/generelleKonsepter/generelleTyper/5.1/Målemetode">http://skjema.geonorge.no/SOSI/generelleKonsepter/generelleTyper/5.1/Målemetode</a></td>
    </tr>
  </tbody>
</table>
