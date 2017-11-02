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
      <th>founded</th>
    </tr> 
    <xsl:for-each select="catalogue/soccer">
    <tr>
    <td><xsl:value-of select="team"/></td>
    <xsl:choose>
    <xsl:when test="founded&gt;1904">
    <td class="post">After:<xsl:value-of select="founded"/></td>
    </xsl:when>
    <xsl:otherwise>
    <td class="per">Before:<xsl:value-of select="founded"/></td>
    </xsl:otherwise>
    </xsl:choose>
     <!--> <td><xsl:value-of select= "catalogue/soccer/team"/></td>
      <td><xsl:value-of select= "catalogue/soccer/coach"/></td> -->
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>