<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">

<xsl:template match="/">
  <html>
    <body> 
        <table border="1">
            <tr bgcolor="#9acd32">
              <th>.</th>
              <th>.</th>
              <th>.</th>
              <th>.</th>
            </tr>
          <xsl:for-each select="TEI/text">
            <tr>
             <td><xsl:value-of select="TEI/text/front/titlePage/measure[@unit='mile']"/></td>
            </tr>
            </xsl:for-each>
        </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
