<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head></head>
    <body>
      Products in grid: <xsl:value-of select="count(catalog/item[type='Socks'])"/>
        <!-- <h2>Fashion Catalog Search</h2> -->
        <table border="1">
          <tr bgcolor="#eaeff7" height="55px">
            <!-- <tr bgcolor="#9acd32"> -->

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
            </tr>
            <xsl:for-each select="catalog/item[type='Socks']">
        <tr>

                    <td><xsl:copy-of select="photo/node()"/></td>
					<td align="Middle"><xsl:value-of select="name"/></td>
          <td align="Middle"><xsl:value-of select="type"/></td>

					<td align="Middle">
            <xsl:for-each select="colors/color">
						<xsl:value-of select="."/><br/>
						</xsl:for-each>
					</td>
            <!-- <td align="Middle">
						<xsl:for-each select="sizes/size">
						<xsl:value-of select="."/>/
						</xsl:for-each>
					</td> -->

                    <td align="Middle"><xsl:value-of select="sizes"/></td>
                    <td align="Middle"><xsl:value-of select="brand"/></td>
                    <td align="Middle"><xsl:value-of select="price"/></td>
                    <td align="Middle"><xsl:value-of select="sku"/></td>
                    <td align="Middle"><xsl:value-of select="gender"/></td>
                    <td align="Middle"><xsl:value-of select="pattern"/></td>
                    <td align="Middle"><xsl:value-of select="occasion"/></td>
                    <td align="Middle"><xsl:for-each select="materials/material">
					<xsl:value-of select="."/>
					</xsl:for-each>
        </td>
      </tr>
            </xsl:for-each>

        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
