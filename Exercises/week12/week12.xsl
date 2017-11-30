<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0">

<xsl:template match="/">
<!--There is something that I am missing. At the first I created my own tags. 
Then I realized that I must use specific element and attribute. 
I did that, and I included it in the body part of the text. 
However, I still cannot at least render one line of the TEI document. 
I don’t know how this should work. ,   -->
  <html>
    <head>
      <title> information </title>
    </head>
    <body>
        <header>World Prehistory by Brian M. Fagan</header> 
        <table border="1">
          <thead>
            <tr bgcolor="#9acd32">
              <th>.</th>
              <th>.</th>
              <th>.</th>
              <th>.</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>.....<xsl:value-of select="TEI/text/body/div/p"/></td>
              <td>....<xsl:value-of select="TEI/tieHeader/fileDesc/titleStmt/title"/></td>
            </tr>
          </tbody>
        </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
