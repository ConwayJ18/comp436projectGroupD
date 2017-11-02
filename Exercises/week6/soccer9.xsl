<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>European Best Soccer Teams</h2>
  <xsl:apply-templates/>
  </body>
  </html>
  </xsl:template>


  <xsl:template match="soccer">
  <p>
  <xsl:apply-template select="team"/>
  <xsl:apply-template select="coach"/>
  <xsl:apply-template select="founded"/>
  </p>
  </xsl:template>

  <xsl:template match="team">
  <xsl:choose>
        <xsl:when test="../founded &lt; 1950">
          <span style="color:#ff00ff">
          <xsl:value-of select="."/>
          </span>
        </xsl:when>
        <xsl:otherwise>
          <span>the year is greater: <xsl:value-of select="."/></span>
        </xsl:otherwise>
      </xsl:choose>
  <br />
</xsl:template>

<xsl:template match="team">
Team: <span class="team"><xsl:value-of select="."/></span>
<br />
</xsl:template>

<xsl:template match="coach">
Coach: <span class="coach"><xsl:value-of select="."/></span>
<br />
</xsl:template>

<!-->
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
      <td><xsl:value-of select= "catalogue/soccer/team"/></td>
      <td><xsl:value-of select= "catalogue/soccer/coach"/></td> 
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
-->
</xsl:stylesheet>