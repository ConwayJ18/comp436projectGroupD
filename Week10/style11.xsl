<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h3>Ancient Sites</h3>
      <table>
        <xsl:apply-templates select="ancient_sites/site">
          <xsl:sort select="location" order="ascending" data-type="string" />
        </xsl:apply-templates>

      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="site">
  <tr>
    <xsl:apply-templates select="name[@language='english']"/>
    <xsl:apply-templates select="history"/>
    <xsl:apply-templates select="links/overview[@type='general']"/>
    <xsl:apply-templates select="images"/>
    <xsl:choose>
      <xsl:when test="dimensions">
        <xsl:apple-templates select="dimensions"/>
      </xsl:when>
      <xsl:otherwise>
        <td>N/A</td>
      </xsl:otherwise>
    </xsl:choose>
  </tr>
</xsl:template>

<xsl:template match="name[@language='english']">
  <td>
    <xsl:value-of select="."/>
  </td>
</xsl:template>

<xsl:template match="history">
  <td>
    <!-- <xsl:value-of select="year"/>
    <xsl:text>&#160;</xsl:text>
    <xsl:value-of select="year/@era"/> -->


<xsl:choose select="year/@era">

  <xsl:when test="year/@era">
    <xsl:value-of select="year[@range='start'] - year[@range='end']/">
  </xsl:when>
<!-- <xsl:otherwise>
  <xsl:value-of select="year[@range='start']+2017"/>
  </xsl:otherwise> -->
  <xsl:otherwise>
    <xsl:value-of select="year[@range='end'] - year[@range='start']/">
    </xsl:otherwise>
</xsl:choose>

  </td>

  <td>
    <xsl:value-of select="./dynasty"/>
    <xsl:text>&#160;</xsl:text>
    <!-- <xsl:text>&#160;dynasty</xsl:text> -->
  </td>
</xsl:template>

<xsl:template match="links/overview[@type='general']">
  <td>
    <a>
      <xsl:attribute name="href">
        <xsl:value-of select="./@url"/>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </a>
  </td>
</xsl:template>

<xsl:template match="images">
  <td>
    <xsl:value-of select="image[@type='jpg'][position() = last()]"/>
    <xsl:value-of select="image[@type='jpg'][position() = first()]"/>


  </td>
</xsl:template>


<xsl:template match="dimensions">
  <td>
    <xsl:value-of select="format-number(./width * ./width, '0.#')"/> m<sup>2</sup>
  </td>
</xsl:template>

</xsl:stylesheet>
