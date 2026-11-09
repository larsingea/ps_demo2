#### Kommune

Geografisk avgrenset forvaltningsenhet (kommune) i henhold til inndelingslova. Tilsvarer LAU-nivået i EUs statistiske inndeling.

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
      <td>Unik identifikasjon av et objekt, ivaretatt av den ansvarlige produsent/forvalter, som kan benyttes av eksterne applikasjoner som referanse til objektet.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>Lokal identifikator, tildelt av dataleverandør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>Navnerom som unikt identifiserer datakilden til objektet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>Identifikasjon av en spesiell versjon av et geografisk objekt (instans).</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>kommunenummer</td>
      <td>Firesifret kommunenummer der de to første sifrene angir fylkestilhørighet.</td>
      <td><a href="#kodeliste-kommunenummer">Kommunenummer</a><br />(kodeliste)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>kommunenavn</td>
      <td>Offisielt navn på kommunen.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>samisk<wbr />Forvaltningsområde</td>
      <td>Angir om kommunen inngår i forvaltningsområdet for samisk språk etter sameloven.</td>
      <td>Boolean</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>område</td>
      <td>Kommunens geografiske utstrekning som flate.</td>
      <td>GM_<wbr />Surface</td>
      <td>1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>Dato og tid for siste endring av objektet i datasettet.</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

#### Kommunegrense

Grenselinje som avgrenser en kommune.

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
      <td>Unik identifikasjon av et objekt, ivaretatt av den ansvarlige produsent/forvalter, som kan benyttes av eksterne applikasjoner som referanse til objektet.</td>
      <td>Identifikasjon<br />(datatype)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- lokal<wbr />Id</td>
      <td>Lokal identifikator, tildelt av dataleverandør/dataforvalter. Den lokale identifikatoren er unik innenfor navnerommet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- navnerom</td>
      <td>Navnerom som unikt identifiserer datakilden til objektet.</td>
      <td>Character<wbr />String</td>
      <td>1</td>
    </tr>
    <tr>
      <td>- versjon<wbr />Id</td>
      <td>Identifikasjon av en spesiell versjon av et geografisk objekt (instans).</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>grense</td>
      <td>Grenselinjens forløp.</td>
      <td>GM_<wbr />Curve</td>
      <td>1</td>
    </tr>
    <tr>
      <td>oppdateringsdato</td>
      <td>Dato og tid for siste endring av objektet i datasettet.</td>
      <td>Date<wbr />Time</td>
      <td>1</td>
    </tr>
  </tbody>
</table>

### Kodelister

#### <a id="kodeliste-kommunenummer"></a>«CodeList» Kommunenummer

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
      <td><a href="https://data.ssb.no/api/klass/v1/classifications/131">https://data.ssb.no/api/klass/v1/classifications/131</a></td>
    </tr>
  </tbody>
</table>
