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
                <th>Υπότιτλος</th>
                <th>Αρχική τιμή</th>
                <th>Τελική τιμή</th>
                <th>Διαθεσιμότητα</th>
                <th>Έτος έκδοσης</th>
            </tr>

            <xsl:apply-templates select="online_bookshop/book_list/book/book_characteristics/publisher[@publisher_year &gt; 2013]"/>

            </table>

        </body>
    </html>
  </xsl:template>

    <xsl:template match="online_bookshop/book_list/book/book_characteristics/publisher[@publisher_year &gt; 2013]">
        <tr>

            <xsl:apply-templates select="../../book_titles_info/@title"/>

            <xsl:apply-templates select="../../book_titles_info/@subtitle"/>

            <xsl:apply-templates select="../../cost_information/start_value"/>

            <xsl:apply-templates select="../../cost_information/end_value"/>

            <xsl:apply-templates select="../../other_information/diathesimotita"/>

            <xsl:apply-templates select="@publisher_year"/>

        </tr>
    </xsl:template>

    <xsl:template match="@title">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="@subtitle">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="start_value">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="end_value">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="diathesimotita"> 
        <td><xsl:value-of select="."/></td>
    </xsl:template>

    <xsl:template match="@publisher_year">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

</xsl:stylesheet>