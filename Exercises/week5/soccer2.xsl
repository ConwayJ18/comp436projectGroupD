<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>European Best Soccer Teams</h2>
  <table>
    <tr>
      <th>Team</th>
      <th>Coach</th>
    </tr>
    <tr>
      <td><xsl:value-of select= "catalogue/soccer/team"/></td>
      <td><xsl:value-of select= "catalogue/soccer/coach"/></td>
    </tr>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>