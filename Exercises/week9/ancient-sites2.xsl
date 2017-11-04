<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- first node match -->
<xsl:template match="/">
  <html>
  <body>
  <h3>Ancient Sites</h3>
  <xsl:apply-templates select="ancient_sites/site">
        <xsl:sort select="location" order="ascending" data-type="string" />
      </xsl:apply-templates>
  </body>
  </html>
  </xsl:template>


<xsl:template match="site">
  <xsl:apply-templates select="name[@language='english']"/>
</xsl:template>

<xsl:template match="name[@language='english']">
  <xsl:value-of select="."/>
</xsl:template>
</xsl:stylesheet>