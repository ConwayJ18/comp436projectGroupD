<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head></head>
    <body>
        <h2>Gender:</h2>
		 <table border="1">
            <thead bgcolor="#eaeff7" height="55px">

                <th>Photo</th>
				        <th>Item Name</th>
                <th>Clothing Type</th>
                <th>Color</th>
                <th>Sizes</th>
                <th>Brand</th>
                <th>Price($)</th>
                <th>Product Number</th>
                <th>Gender</th>
                <th>Pattern</th>
                <th>Occasion</th>
                <th>Material</th>
            </thead>
			<tbody>

        <xsl:apply-templates/>
		</tbody>
		</table>
		</body>
     </html>
</xsl:template>

<xsl:template match="catalog/item">
              <tr>
          <td><xsl:copy-of select="photo/node()"/></td>
					<td align="Middle"><xsl:value-of select="name"/></td>
          <td align="Middle"><xsl:value-of select="type"/></td>

					<td align="Middle"><xsl:for-each select="colors/color">
						<xsl:value-of select="."/><br/>
						</xsl:for-each>
					</td>
<!--
          <td align="Middle">
						<xsl:for-each select="sizes/size">
						<xsl:value-of select="."/>/
						</xsl:for-each>
					</td> -->
                    <td align="Middle"><xsl:value-of select="sizes"/></td>
                    <td align="Middle"><xsl:value-of select="brand"/></td>
                    <td align="Middle"><xsl:value-of select="price"/></td>
                    <td align="Middle"><xsl:value-of select="sku"/></td>


					<xsl:choose>
					<xsl:when test = "gender = 'Women'">
					<td bgcolor="#f29ee7" align="Middle"><xsl:value-of select="gender"/></td>
					</xsl:when>
					<xsl:when test = "gender = 'Men'">
					<td bgcolor="#a5befa" align="Middle"><xsl:value-of select="gender"/></td>
					</xsl:when>
					<xsl:otherwise>
					<td bgcolor="#faf4a5" align="Middle"><xsl:value-of select="gender"/></td>
					</xsl:otherwise>
					</xsl:choose>
                    <td align="Middle"><xsl:value-of select="pattern"/></td>
                    <td align="Middle"><xsl:value-of select="occasion"/></td>
                    <td align="Middle"><xsl:for-each select="materials/material">
					<xsl:value-of select="."/>
					</xsl:for-each></td>
                </tr>
</xsl:template >


</xsl:stylesheet>
