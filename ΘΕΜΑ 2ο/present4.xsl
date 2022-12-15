<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>XYZ Bookshop</title>
      </head>
      <body>
        <table border="1">
          <tr bgcolor="lightblue">
            <th>Τίτλος</th>
            <th>Εκδότης</th>
            <th>Έτος έκδοσης</th>
          </tr>

          <xsl:apply-templates select="online_bookshop/book_list/book"/>

        </table>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="online_bookshop/book_list/book">
    <tr>

      <xsl:apply-templates select="book_titles_info/@title"/>

      <xsl:apply-templates select="book_characteristics/publisher"/>

      <xsl:apply-templates select="book_characteristics/publisher/@publisher_year"/>
    </tr>
  </xsl:template>

  <xsl:template match="@title">
    <td><xsl:value-of select="."/></td>
  </xsl:template>

  <xsl:template match="publisher">
    <td><xsl:value-of select="."/></td>
  </xsl:template>

  <xsl:template match="@publisher_year">
    <td><xsl:value-of select="."/></td>
  </xsl:template>

</xsl:stylesheet>
