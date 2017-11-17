<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h3>Ancient Sites</h3>
  <table>
  <xsl:apply-templates select="ancient_sites/site">
          <xsl:sort select="location"/><!--order="ascending" data-type="string" />-->
        </xsl:apply-templates>
  </table>
  <h4>New ones</h4>
  <table>
        <xsl:apply-templates select="ancient_sites/site[./history/year &lt; 1000]">
          <xsl:sort select="year"/>
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
  </tr>
</xsl:template>

<xsl:template match="name[@language='english']">
  <td>
    <xsl:value-of select="."/>
  </td>
</xsl:template>

<xsl:template match="history">
  <td>
    <xsl:value-of select="year"/>
    <xsl:text>&#160;</xsl:text>
    <xsl:value-of select="year/@era"/>
  </td>
  <td>
    <xsl:value-of select="./period"/>
    <xsl:text>&#160;</xsl:text>
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
  </td>
</xsl:template>
</xsl:stylesheet>