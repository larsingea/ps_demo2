#### Turrute

En merket trase for ferdsel på barmark

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
      <td>rutetype</td>
      <td>Hvilken type ferdsel traseen er tilrettelagt for</td>
      <td><a href="#kodeliste-rutetype">Rutetype</a><br />(enumerering)</td>
      <td>1</td>
    </tr>
    <tr>
      <td>linje</td>
      <td>Geometritype - linje</td>
      <td>GM_<wbr />Curve</td>
      <td>1</td>
    </tr>
    <tr>
      <td>eier</td>
      <td>Hvem som er ansvarlig for merking. Turlag eller lignende</td>
      <td>Character<wbr />String</td>
      <td>0..1</td>
    </tr>
    <tr>
      <td>organisasjon</td>
      <td>Hvem er ansvarlig for merking 2</td>
      <td><a href="#kodeliste-organisasjon">Organisasjon</a><br />(enumerering)</td>
      <td>0..1</td>
    </tr>
  </tbody>
</table>

### Kodelister

#### <a id="kodeliste-rutetype"></a>«Enumeration» Rutetype

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
      <td>S</td>
      <td>Sykkel</td>
      <td></td>
    </tr>
    <tr>
      <td>F</td>
      <td>Fot</td>
      <td></td>
    </tr>
  </tbody>
</table>

#### <a id="kodeliste-organisasjon"></a>«Enumeration» Organisasjon

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
      <td>DNT</td>
      <td>Den norske turistforening</td>
      <td></td>
    </tr>
    <tr>
      <td>SF</td>
      <td>Skiforeningen</td>
      <td></td>
    </tr>
    <tr>
      <td>LT</td>
      <td>Lokalt turlag</td>
      <td></td>
    </tr>
  </tbody>
</table>
