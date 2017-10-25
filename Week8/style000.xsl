<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h3>Ancient Sites</h3>
    <table border="1">

      <!-- <xsl:apply-template select="ancient_site/site">
        <xsl:sort select"country" order="ascending" data-type="string" />
      </xsl:apply-templates> -->

    <tr>
    <xsl:apply-templates select="name[@lang='en']/">
    <xsl:apply-templates select="history"/>
    </tr>
  <!-- </xsl:template> -->


    <td>
      <a>
      <xsl:attribute name "source">
        <xsl:value-of select="/@url">
      </xsl:attribute>
      <xsl:value-of select="."/>
    </a>

    </td>
  </xsl:template>

        </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
