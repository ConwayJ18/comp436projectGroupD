
  <xsl:template match="site">
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

  <xsl:template match="history">
    <td>
    <xsl: value-of select='year'/>
    <xsl:text>#66ccff </xsl:test>
    <!-- <xsl: value-of select="year/@era" -->
    </td>
  </xsl:template>

        </table>
    </body>
  </html>
  </xsl:template>
