<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<HTML>
 <HEAD> <TITLE> programs_present1 </TITLE> </HEAD>
  <BODY>
    <TABLE BORDER="4" CELLPADDING="5">
		<TR>
			<TH>PROGRAMNAME</TH>
			<TH>NEW</TH>
			<TH>OLD</TH>
			<TH>COMPANY</TH>
        
		</TR>
		<TD bgcolor="yellow">
		<xsl:value-of select="PROGRAM/MOBILE1/PROGRAMNAME/COSTCATEGORY"/>
		</TD>
		<TD>
		<xsl:value-of select="PROGRAM/MOBILE1/COSTCATEGORY/NEW/COST"/>
		</TD>
		<TD>
		<xsl:value-of select="PROGRAM/MOBILE1/COSTCATEGORY/OLD/COST"/>
		</TD>
		<TD>
		<xsl:value-of select="PROGRAM/MOBILE1/COSTCATEGORY/COMPANY/COST"/>
		</TD>

                 <TR>
		<TD bgcolor="purple">
                 <xsl:value-of select="PROGRAM/MOBILE2/PROGRAMNAME/COSTCATEGORY"/>
		</TD>
		<TD>
		<xsl:value-of select="PROGRAM/MOBILE2/COSTCATEGORY/NEW/COST"/>
		</TD>
		<TD>
		<xsl:value-of select="PROGRAM/MOBILE2/COSTCATEGORY/OLD/COST"/>
		</TD>
		<TD>
		<xsl:value-of select="PROGRAM/MOBILE2/COSTCATEGORY/COMPANY/COST"/>
		</TD>
                 </TR>

                 <TR>
                 <TD bgcolor="blue">
                 <xsl:value-of select="PROGRAM/PHONE1/PROGRAMNAME/COSTCATEGORY"/>
                 </TD>
                 <TD>
                 <xsl:value-of select="PROGRAM/PHONE1/COSTCATEGORY/NEW/COST"/>
                 </TD>
                 <TD>
                 <xsl:value-of select="PROGRAM/PHONE1/COSTCATEGORY/OLD/COST"/>
                 </TD>
                 <TD>
                 <xsl:value-of select="PROGRAM/PHONE1/COSTCATEGORY/COMPANY/COST"/>
                 </TD>
                 </TR>
        
                 <TR>
                 <TD bgcolor="pink">
                 <xsl:value-of select="PROGRAM/PHONE2/PROGRAMNAME/COSTCATEGORY"/>
                 </TD>
                 <TD>
                 <xsl:value-of select="PROGRAM/PHONE2/COSTCATEGORY/NEW/COST"/>
                 </TD>
                 <TD>
                 <xsl:value-of select="PROGRAM/PHONE2/COSTCATEGORY/OLD/COST"/>
                 </TD>
                 <TD>
                 <xsl:value-of select="PROGRAM/PHONE2/COSTCATEGORY/COMPANY/COST"/>
                 </TD>
                 </TR>
	</TABLE>
 </BODY>
</HTML>
</xsl:template>

</xsl:stylesheet>