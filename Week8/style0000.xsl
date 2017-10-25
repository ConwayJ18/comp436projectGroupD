<xsl:template match="/">
  <html>
    <body>
      <h3>Ancient Sites</h3>
    <!-- <table border="1"> -->

      <!-- <xsl:apply-template select="ancient_site/site">
        <xsl:sort select"country" order="ascending" data-type="string" />
      </xsl:apply-templates> -->

      <xsl:apply-templates select="images"/>
    </body>
  </html>
  </xsl:template>


    <tr>
    <xsl:apply-templates select="name[@lang='en']/">
    </tr>
  <!-- </xsl:template> -->

      <xsl:template match="images">

          <td>
        <xsl:value-of select="image[@type="jpg"][position()= last()"]/>
          </td>
      </xsl:template>


</xsl:stylesheet>
