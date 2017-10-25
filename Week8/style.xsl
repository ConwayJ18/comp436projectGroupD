<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
    <body>
      <h3>Ancient Sites</h3>

      <xsl:apply-template select="ancient_site/site">
        <xsl:sort select"country" order="ascending" data-type="string" />
      </xsl:apply-templates>

    </body>
  </html>
</xsl:template>

<xsl:template match="site">
  <xsl:apply-templates select="name[@lang='en']/">
</xsl:template>

<xsl:template match="name[#lang='en']">
  <xsl: value-of select='.'>
</xsl:template>

</xsl:stylesheet>
