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
    <xsl:for-each select="catalogue/soccer[founded!='1905' and founded&lt;1910]">
    <tr>
    <td><xsl:value-of select="team"/></td>
    <td><xsl:value-of select="coach"/></td>
    <td><xsl:value-of select="founded"/></td>
     <!--> <td><xsl:value-of select= "catalogue/soccer/team"/></td>
      <td><xsl:value-of select= "catalogue/soccer/coach"/></td> -->
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>