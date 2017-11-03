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
  <xsl:apply-templates select="team"/>
  <xsl:apply-templates select="coach"/>
  </p>
  </xsl:template>
<xsl:template match="team">
  Team: <span class="team">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="coach">
  Coach: <span class="coach">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>
  <!-->
</xsl:template>
<xsl:template match="team">
  Team: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="coach">
  Coach: <span style="color:#00ff00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>
-->
</xsl:stylesheet>
