<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h2>Ancient Sites</h2>
    <!-- <table border="1"> -->

      <!-- <xsl:apply-template select="ancient_site/site">
        <xsl:sort select"country" order="ascending" data-type="string" />
      </xsl:apply-templates> -->

      <!-- <xsl:apply-templates select="site"/> -->
      <tr>
      <xsl:apply-templates select="name[@lang='en']/">
      </tr>



<td>
  <xsl:apply-template selct="ancient_site/site[./history/year &lt; 1570]">
    <xsl:sourt select="year" order="descending" data-type="number" />
  </xsl:apply-templates>
</td>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
