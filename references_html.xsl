<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" />

   <xsl:template match="SUBJECTS">
      <xsl:processing-instruction name="cocoon-format">type="text/html"</xsl:processing-instruction>

      <HTML>
         <HEAD>
            <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1" />

            <TITLE>Inspirations</TITLE>
         </HEAD>

         <BODY>
		<P align="left">
		   <IMG src="res/img/echoes_project.jpg" alt="ECHOES : un projet de traduction de Xenosaga Pied Piper"/>
            </P>

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <FONT FACE="Arial,Helvetica" SIZE="3"><U>Références et inspirations diverses</U>
                     </FONT>
                  </TD>
               </TR>
            </TABLE>

            <BR />

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <xsl:apply-templates select="./SUBJECT" />
                  </TD>
               </TR>
            </TABLE>

            <BR />


            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="center">

	<xsl:element name="A">
      		<xsl:attribute name="href"><xsl:text>index.xml</xsl:text></xsl:attribute><xsl:text>Accueil</xsl:text>
      	</xsl:element>
                  </TD>
               </TR>
            </TABLE>

         </BODY>
      </HTML>
   </xsl:template>


   <xsl:template match="SUBJECT">
      <P>
      <FONT FACE="Courrier" SIZE="-1">
		<U>
            	<xsl:value-of select="@name"/>
      	</U>
	</FONT>
	<BR />
	<FONT FACE="Courrier" SIZE="-1">
		<xsl:apply-templates/>
	</FONT>
	</P>

   </xsl:template>


   <xsl:template match="CR">
	<BR/><BR/>
   </xsl:template>

</xsl:stylesheet>


